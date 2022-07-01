<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Models\Category;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Facades\Storage;



class AuthorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $category = 'Book Category';
        if (request('category')) {
            $category = Category::firstWhere('slug', request('category'))->name;
        }

        return view('authors.list', [
            'title' => 'Authors List',
            'authors' => Author::with('books')
                ->filter(request(['search', 'category']))
                ->orderBy(request('sort') ?? 'name', request('dir') ?? 'asc')
                // ->orderAuthor(request(['sort', 'dir']))
                ->paginate(12)
                ->withQueryString(),
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
        return view('authors.add',[
            'title' => 'Add Author'
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
            'slug' => 'required|unique:authors|alpha_dash',
            'date_born' => 'required',
            'bio' => 'required',
            'photo' => 'image|file|max:2048'
        ]);

        if ($request->file('photo')) {
            $photoName = $request->slug . '.' . $request->photo->extension();
            $validatedData['photo'] = $request->file('photo')->storeAs('author_photo', $photoName);
        }

        Author::create($validatedData);
        return redirect('authors/' . $request->slug)->with('success', 'Author has been added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Author  $author
     * @return \Illuminate\Http\Response
     */
    public function show(Author $author)
    {
        return view('authors.show', [
            'title' => $author->name,
            'author' => $author
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Author  $author
     * @return \Illuminate\Http\Response
     */
    public function edit(Author $author)
    {
        // dd('tes berhasil masuk');
        return view('authors.edit', [
            'title' => 'Edit Author',
            'author' => $author
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Author  $author
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Author $author)
    {
        $rules = [
            'name' => 'required|max:255',
            'date_born' => 'required',
            'bio' => 'required',
            'photo' => 'image|file|max:2048'
        ];

        if($request->slug != $author->slug){
            $rules['slug'] = 'required|unique:authors|alpha_dash';
        }

        $validatedData = $request->validate($rules);
        if($request->file('photo')){
            if($request->oldImage){
                Storage::delete($request->oldImage);
            }
            $photoName = $request->slug . '.' . $request->photo->extension();
            $validatedData['photo'] = $request->file('photo')->storeAs('author_photo', $photoName);
        }

        Author::where('id', $author->id)
            ->update($validatedData);

        return redirect('authors/' . $author->slug)->with('success', 'Author has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Author  $author
     * @return \Illuminate\Http\Response
     */
    public function destroy(Author $author)
    {
        if ($author->photo) {
            Storage::delete($author->photo);
        }
        $author->books()->detach();
        Author::destroy($author->id);

        return redirect('/authors')->with('success', 'Author has been removed!');
    }

    public function checkSlug(Request $request){
        $slug = SlugService::createSlug(Author::class, 'slug', $request->name);
        return response()->json(['slug' => $slug]);
    }
}
