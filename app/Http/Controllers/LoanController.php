<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\Book;
use App\Models\Loan;
use App\Models\Member;
use Illuminate\Http\Request;
use Carbon\Carbon;

class LoanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usedFilters = [
            'date_borrow' => 'Date borrow',
            'date_return' => 'Date return',
            'category' => 'Category',
            'admin' => 'Admin'
        ];
        $filters = [];

        // if (request('category')) {
        //     $filters['category'] = request('category');
        //     $usedFilters['category'] = Category::firstWhere('slug', request('category'))->name;
        // }

        if(request('admin')){
            $filters['admin'] = request('admin');
            $usedFilters['admin'] = Admin::find(request('admin'))->name;
        }
        if (request('search')) {
            $filters['search'] = request('search');
        }

        switch (request('date_borrow')) {
            case 'last_week':
                $filters['date_borrow'] = date_create();
                date_sub($filters['date_borrow'], date_interval_create_from_date_string("7 days"));
                $usedFilters['date_borrow'] = 'last week';
                break;

            case 'last_month':
                $filters['date_borrow'] = date_create();
                date_sub($filters['date_borrow'], date_interval_create_from_date_string("1 month"));
                $usedFilters['date_borrow'] = 'last month';
                break;

            case 'last_year':
                $filters['date_borrow'] = date_create();
                date_sub($filters['date_borrow'], date_interval_create_from_date_string("1 year"));
                $usedFilters['date_borrow'] = 'last year';
                break;
        }

        switch (request('date_return')) {
            case 'last_week':
                $filters['date_return'] = date_create();
                date_sub($filters['date_return'], date_interval_create_from_date_string("7 days"));
                $usedFilters['date_return'] = 'last week';
                break;

            case 'last_month':
                $filters['date_return'] = date_create();
                date_sub($filters['date_return'], date_interval_create_from_date_string("1 month"));
                $usedFilters['date_return'] = 'last month';
                break;

            case 'last_year':
                $filters['date_return'] = date_create();
                date_sub($filters['date_return'], date_interval_create_from_date_string("1 year"));
                $usedFilters['date_return'] = 'last year';
                break;

            case 'not_returned':
                $filters['date_return'] = 'not returned';
                $usedFilters['date_return'] = 'not returned';
                break;
        }

        return view('loans.list', [
            'loans' => Loan::filter($filters)
                ->joinOrder(request(['sort', 'dir']))
                ->paginate(12)
                ->withQueryString(),
            'title' => 'Transaction History',
            'filters' => $usedFilters,
            'admins' => Admin::orderBy('name')->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('loans.add', [
            'title' => 'Add Transactions',
            'members' => Member::orderBy('username')->get(),
            'books' => Book::orderBy('title')->get()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'member_id' => 'required',
            'borrow_date' => 'required',
            'books.*' => 'required|distinct',
            'due_date' => 'required'
        ]);

        foreach ($validatedData['books'] as $book_id) {
            Loan::create([
                'book_id' => $book_id,
                'member_id' => $validatedData['member_id'],
                'admin_id' => auth()->user()->id,
                'date_borrow' => $validatedData['borrow_date'],
                'due_date' => $validatedData['due_date']
            ]);
        }

        // dd($loans);

        return redirect('loans/')->with('success', 'Transactions have been added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Loan $loan)
    {
        return view('loans.edit', [
            'title' => 'Edit Transaction',
            'loan' => $loan,
            'members' => Member::all(),
            'books' => Book::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Loan $loan)
    {
        $rules = [
            'member_id' => 'required',
            'book_id' => 'required',
        ];

        $fines = null;

        if($request->date_return){
            $rules['date_return'] = 'after_or_equal:date_borrow';
        }

        $validatedData = $request->validate($rules);

        if ($request->date_return ) {
            $due_date = Carbon::parse($loan->due_date);
            $date_return = Carbon::parse($request->date_return);
            if ($date_return->greaterThan($due_date)) {
                $fines = $this->calculateFine($loan, $request);
            }else{
                $fines = 0;
            }
        }

        $validatedData['fines'] = $fines;
        
        Loan::where('id', $loan->id)
            ->update($validatedData);

        return redirect('loans')->with('success', 'List has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Loan $loan)
    {
        Loan::destroy($loan->id);

        return redirect('/loans')->with('success', 'Transaction has been deleted!');
    }

    public function calculateFine(Loan $loan, Request $request){
        $date_return = date_create_from_format('Y-m-d', $request->date_return)->setTime(0, 0, 0);
        $due_date = date_create_from_format('Y-m-d', $loan->due_date)->setTime(0, 0, 0);

        $overduefine = 0;
        $overdue = $due_date->diff($date_return)->days;

        if ((1 <= $overdue) && ($overdue <= 7)) {
            $overduefine = 5000;
        } elseif ((7 < $overdue) && ($overdue <= 30)){
            $overduefine = 20000;
        } else {
            $overduefine = $overdue - 30;
            $overduefine = $overduefine*1000 + 20000;
        }

        return $overduefine;
    }
}
