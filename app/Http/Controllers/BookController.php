<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Category;
use App\Models\Author;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Facades\Storage;


class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $category = 'Category';
        if (request('category')) {
            $category = Category::firstWhere('slug', request('category'))->name;
        }

        return view('books.list', [
            'books' => Book::filter(request(['category', 'year', 'search']))
                ->orderBy(request('sort') ?? 'title', request('dir') ?? 'asc')
                // ->orderBook(request(['sort', 'dir']))
                ->paginate(12)
                ->withQueryString(),
            'title' => 'Book List',
            'categories' => Category::orderBy('name')->get(),
            'category' => $category
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('books.add', [
            'title' => 'Add Book',
            'categories' => Category::orderBy('name')->get(),
            'authors' => Author::orderBy('name')->get()
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
            'title' => 'required|max:255',
            'slug' => 'required|unique:books|alpha_dash',
            'publication_year' => 'required|digits:4|integer|max:' . date('Y'),
            'category_id' => 'required',
            'copies_left' => 'required|integer',
            'cover' => 'image|file|max:2048',
            'synopsis' => 'required',
            'bookAuthors.*' => 'required|distinct'
        ]);

        if(request('cover')){
            $coverName = $request->publication_year . '_' . $request->slug . '.' . $request->cover->extension();
            $validatedData['cover'] = $request->file('cover')->storeAs('book_cover', $coverName);
        }

        $book = Book::create($validatedData);
        $book->authors()->attach($validatedData['bookAuthors']);

        return redirect('books/' . $book->slug)->with('success', 'New book has been added!');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function show(Book $book)
    {
        return view('books.show', [
            'book' => $book,
            'title' => $book->title
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function edit(Book $book)
    {
        return view('books.edit', [
            'title' => 'Edit Book',
            'book' => $book,
            'categories' => Category::orderBy('name')->get(),
            'authors' => Author::orderBy('name')->get()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Book $book)
    {
        $rules = [
            'title' => 'required|max:255',
            'publication_year' => 'digits:4|integer|max:' . date('Y'),
            'category_id' => 'required',
            'copies_left' => 'required|integer',
            'synopsis' => 'required',
            'bookAuthors.*' => 'required|distinct',
            'cover' => 'image|file|max:2048'
        ];

        if($request->slug != $book->slug){
            $rules['slug'] = 'required|unique:books|alpha_dash';
        }
        
        $validatedData = $request->validate($rules);

        if($request->file('cover')){
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }
            $coverName = $request->publication_year . '_' . $request->slug . '.' . $request->cover->extension();
            $validatedData['cover'] = $request->file('cover')->storeAs('book_cover', $coverName);
        }

        Book::where('id', $book->id)
            ->update([
                'category_id' => $validatedData['category_id'],
                'title' => $validatedData['title'],
                'slug' => $validatedData['slug'] ?? $request->slug,
                'cover' => $validatedData['cover'] ?? null,
                'publication_year' => $validatedData['publication_year'] ?? null,
                'synopsis' => $validatedData['synopsis'],
                'copies_left' => $validatedData['copies_left']
            ]);
        $book->authors()->detach();
        foreach ($validatedData['bookAuthors'] as $author) {
            $book->authors()->attach($author);
        }

        return redirect('books/' . $book->slug)->with('success', 'Book has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function destroy(Book $book)
    {
        if ($book->cover) {
            Storage::delete($book->cover);
        }
        $book->authors()->detach();
        Book::destroy($book->id);

        return redirect('/books')->with('success', 'Books has been deleted!');
    }

    public function checkSlug(Request $request){
        $slug = SlugService::createSlug(Book::class, 'slug', $request->title);
        return response()->json(['slug' => $slug]);
    }
}
