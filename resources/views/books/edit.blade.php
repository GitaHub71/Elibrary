@extends('layouts.main')

@section('container')
    

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">{{ $title }}</h1>
    <div class="btn-toolbar mb-2">
        <a class="link-dark" href="/books"><span data-feather="arrow-left"></span> Back to Book List</a>
    </div>
</div>
        

<form class="mt-4 mb-5" action="/books/{{ $book->slug }}" method="post" enctype="multipart/form-data">
    @method('put')
    @csrf

    <div class="d-flex">
        <div class="col-md-6">

            <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input type="text" class="form-control form-control-sm @error('title') is-invalid @enderror" id="title" name="title" value="{{ old('title', $book->title) }}">
                @error('title')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="slug" class="form-label">Slug</label>
                <input type="text" class="form-control form-control-sm @error('slug') is-invalid @enderror" id="slug" name="slug" value="{{ old('slug', $book->slug) }}">
                @error('slug')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="category" class="form-label">Category</label>
                <select class="form-select form-select-sm" name="category_id">
                    @foreach ($categories as $category)
                        <option value="{{ $category->id }}" @if (old('category_id', $book->category_id) == $category->id) selected @endif >{{ $category->name }}</option>
                    @endforeach
                </select>
            </div>


            <div class="mb-3">
                <label for="publication_year" class="form-label">Publication Year</label>
                <input type="number" class="form-control form-control-sm @error('publication_year') is-invalid @enderror" id="publication_year" name="publication_year" value="{{ old('publication_year', $book->publication_year) }}">
                @error('publication_year')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="synopsis" class="form-label">Synopsis</label>
                <input id="synopsis" type="hidden" name="synopsis" value="{{ old('synopsis', $book->synopsis) }}">
                <trix-editor input="synopsis"></trix-editor>
                {{-- @trix(\App\Book::class, 'synopsis', [ 'hideButtonIcons' => ['attach', 'link'] ]) --}}
                @error('synopsis')
                {{-- @error('book-trixFields.synopsis') --}}
                    <div class="invalid-feedback d-block">
                        The synopsis field is required.
                    </div>
                @enderror
            </div>
            
            <div class="mb-3">
                <label for="copies_left" class="form-label">Copies Left</label>
                <input type="number" class="form-control form-control-sm @error('copies_left') is-invalid @enderror" id="copies_left" name="copies_left" value="{{ old('copies_left', $book->copies_left) }}">
                @error('copies_left')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>
        </div>
        
        <div class="ms-5 col-md-5">
            <div class="d-flex justify-content-between mb-3">
                <div class="me-4">
                    <label for="cover" class="form-label">Cover</label>
                    <input class="form-control form-control-sm @error('cover') is-invalid @enderror" type="file" id="cover" name="cover" onchange="previewImage()">
                    @error('cover')
                        <div class="invalid-feedback d-block">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
                <input type="hidden" name="oldImage" value="{{ $book->cover }}">
                <div class="d-flex justify-content-center" style="height: 175px; width: 125px; border: 1px solid rgba(0,0,0,.125); border-radius: 0.25rem;">
                    @if ($book->cover)
                        <img src="{{ asset('storage/' . $book->cover) }}" class="img-preview img-fluid d-block">
                    @else
                        <p class="img-ins align-self-center p-2 text-center" style=" color:gray">Insert Cover Image</p>
                        <img class="img-preview img-fluid d-block">
                    @endif
                </div>
            </div>

            <div class="mb-3">
                <label for="authors" class="form-label">Author(s)</label>
                <div id="authors">
                    @php
                        $author_count = count($book->authors);
                        $index = 0;
                    @endphp
                    @foreach ($book->authors as $bookAuthor)
                        <div class="d-flex mb-1">
                            <select class="form-select form-select-sm w-50" name="bookAuthors[{{ $index }}]" id="bookAuthors[{{ $index }}]" onchange="saveVal({{ $index }})">
                                <option value="">Select Author</option>
                                @foreach ($authors as $author)
                                    @if ($author->id == $bookAuthor->id)
                                        <option value="{{ $author->id }}" selected>{{ $author->name }}</option>
                                    @else
                                        <option value="{{ $author->id }}">{{ $author->name }}</option>
                                    @endif
                                @endforeach
                            </select>
                            @if ($index != 0)
                                <button type="button" class="btn btn-light btn-sm" onclick="removeAuthor(this)">
                                    <span data-feather="x"></span>
                                </button>
                            @endif
                        </div>
                        @php
                            $index++;
                        @endphp
                    @endforeach
                    
                </div>
                <button type="button" class="btn btn-link btn-sm mt-1" onclick="addAuthor(); selectElements();"><span data-feather="plus"></span> Add Author</button>
            </div>
        </div>
    </div>

    <button type="submit" class="btn btn-outline-primary btn-sm mt-3">Submit Changes</button>
</form>


<script>
    const title = document.querySelector('#title');
    const slug = document.querySelector('#slug');
    const oldval = [];

    var x = {{ $index }};

    title.addEventListener('change', function(){
        fetch('/books/checkSlug?title=' + title.value)
            .then(response => response.json())
            .then(data => slug.value = data.slug)
    });

    document.addEventListener('trix-file-accept', function(e){
        e.preventDefault();
    });

    function previewImage(){
        const image = document.querySelector('#cover');
        const imgPreview = document.querySelector('.img-preview');
        const imgInstruction = document.querySelector('.img-ins');

        imgPreview.style.display = 'block';
        imgInstruction.style.display = 'none';

        const oFReader = new FileReader();
        oFReader.readAsDataURL(image.files[0]);

        oFReader.onload = function(oFREvent) {
        imgPreview.src = oFREvent.target.result;
        }
    }

    
    function removeAuthor(e){
        e.parentNode.remove();
    }

    function addAuthor(){
        document.getElementById("authors").innerHTML +=
            '<div class="d-flex mb-1">' + 
                '<select class="form-select form-select-sm w-50" name="bookAuthors[' + x + ']" id="bookAuthors[' + x + ']" onchange="saveVal(' + x + ')">' +
                    '<option value="">Select Author</option>' +
                    '@foreach ($authors->sortBy("name") as $author)' +
                        '<option value="{{ $author->id }}">' +
                            '{{ $author->name }}' +
                        '</option>' +
                    '@endforeach' +
                '</select>' +
                '<button type="button" class="btn btn-light btn-sm" onclick="removeAuthor(this)">' +
                    '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x" aria-hidden="true">' +
                        '<line x1="18" y1="6" x2="6" y2="18"></line>' +
                        '<line x1="6" y1="6" x2="18" y2="18"></line>' +
                    '</svg>' +
                '</button>' +
            '</div>';
    
        x++;
    }

    window.addEventListener("load", function(){
        let i = 0;
        @foreach ($book->authors as $bookAuthor)
            oldval[i] = {{ $bookAuthor->id }};
            i++;
        @endforeach;
    });

    function saveVal(id){
        oldval[id] = document.getElementById('bookAuthors['+id+']').value;
    }

    function selectElements(){
        for (let i = 0; i < x-1; i++) {
            var element = document.getElementById('bookAuthors['+i+']');
            if(element != null){
                document.getElementById('bookAuthors['+i+']').value = oldval[i];
            }
        }
    }
</script>

@endsection