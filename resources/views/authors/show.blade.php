@extends('layouts.main')

@section('container')
    
<div class="flex-wrap flex-md-nowrap align-items-center pt-3 pb-2">
  <h1 class="h2 border-bottom pb-3">{{ $author->name }} <span style="color: rgb(191, 191, 191)">#{{ $author->id }}</span></h1>

  <div class="d-flex justify-content-between">
    <div class="d-flex ms-4 align-items-center">
      <a href="/authors/{{ $author->slug }}/edit" class="link-info align-items-center" title="Edit author">
        <span data-feather="edit-2" class="me-1"></span>Edit Details
      </a>
      
      <form class="ms-2" action="/authors/{{ $author->slug }}" method="post">
        @method('delete')
        @csrf
        <button class="btn link-info btn-sm" onclick="return confirm('Are you sure you want to remove this author?')" title="Remove author">
          <span data-feather="x"></span> <u>Remove Author</u>
        </button>
      </form>
    </div>

    <div class="btn-toolbar mt-1">
      <a class="link-dark" href="/authors"><span data-feather="arrow-left"></span> Back to Authors List</a>
    </div>
  </div>
</div>

@if (session()->has('success'))
<div class="alert alert-success">
    {{ session('success') }}
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
@endif

<div class="container d-flex justify-content-between pt-3 pb-5 mb-4">
  <div class="container me-4 p-4" style="background-color : rgba(235, 250, 245, 1); border-left: 5px solid rgba(115, 148, 138, 1)">
    <h6 class="mb-1">Date Birth:</h6>
    <p>{{ $author->date_born }}</p>

    <h6 class="mb-1 mt-4">Book(s): </h6>
    <ul>
        @foreach ($author->books as $book)
            <li><a href="/books/{{ $book->slug }}" class="link-dark">{{ $book->title }}</a> ({{ $book->publication_year }})</li>
        @endforeach
    </ul>

    <h6 class="mb-1 mt-4">Biography:</h6>
    <article class="pe-2">
      {!! $author->bio !!}
    </article>
  </div>

  <div class="pe-5" style="height: 400px; width: 400px;">
    @if ($author->photo)
      <img class="img-fluid" src="{{ asset('storage/' . $author->photo) }}">
    @else
      <img src="https://source.unsplash.com/300x400?person" class="img-fluid">
    @endif
  </div>

</div>



@endsection