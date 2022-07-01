<?php

namespace App\Http\Controllers;

use App\Models\Member;
use Illuminate\Http\Request;

class MemberController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        return view('members.list', [
            'members' => Member::filter(request('search'))
                ->orderBy(request('sort') ?? 'name', request('dir') ?? 'asc')
                // ->orderMember(request(['sort', 'dir']))
                ->paginate(12)
                ->withQueryString(),
            'title' => 'Member List'    
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('members.add', [
            'title' => 'Add New Member'
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
            'name' => 'required|max:255',
            'username' => 'required|min:3|max:50|unique:members|alpha_dash',
            'email' => 'required|email:dns|unique:members',
            'year_joined' => 'required|digits:4|integer|max:' . date('Y'),
            'phone' => 'unique:members|digits_between:10,13'
        ]);
        
        Member::create($validatedData);

        return redirect('/members')->with('success', 'Success adding one member!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function show(Member $member)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function edit(Member $member)
    {
        return view('members.edit', [
            'title' => 'Edit User',
            'member' => $member
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Member $member)
    {
        $rules = [
            'name' => 'required|max:255',
            'year_joined' => 'required|digits:4|integer|max:' . date('Y')
        ];

        if ($request->username != $member->username) {
            $rules['username'] = 'required|min:3|max:50|unique:members|alpha_dash';
        }

        if ($request->email != $member->email) {
            $rules['email'] = 'required|email:dns|unique:members';
        }

        if($request->phone != $member->phone){
            $rules['phone'] = 'unique:members|digits_between:10,13';
        }

        $validatedData = $request->validate($rules);

        Member::where('id', $member->id)
            ->update($validatedData);

        return redirect('/members')->with('success', 'Member has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function destroy(Member $member)
    {
        Member::destroy($member->id);

        return redirect('/members')->with('success', 'Member has been deleted!');
    }
}
