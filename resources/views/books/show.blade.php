@extends('layouts.main')

@section('container')
    
<div class="flex-wrap flex-md-nowrap align-items-center pt-3 pb-2">
  <h1 class="h2 border-bottom pb-3">{{ $book->title }} <span style="color: rgb(191, 191, 191)">#{{ $book->id }}</span></h1>

  <div class="d-flex justify-content-between">
    <div class="d-flex ms-4 align-items-center">
      <a href="/books/{{ $book->slug }}/edit" class="link-info align-items-center" title="Edit book">
        <span data-feather="edit-2" class="me-1"></span>Edit Details
      </a>
      
      <form class="ms-2" action="/books/{{ $book->slug }}" method="post">
        @method('delete')
        @csrf
        <button class="btn link-info btn-sm" onclick="return confirm('Are you sure you want to delete this?')" title="Delete book">
          <span data-feather="x"></span> <u>Delete Book</u>
        </button>
      </form>
    </div>

    <div class="btn-toolbar mt-1">
      <a class="link-dark" href="/books"><span data-feather="arrow-left"></span> Back to Book List</a>
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
  <div class="container me-4 p-4" style="background-color : rgba(255, 253, 247, 1); border-left: 5px solid rgba(184, 171, 137, 1)">
    <h6 class="mb-1">Writer(s): </h6>
    @php
      $length = count($book->authors);
      $index = 1;
    @endphp
    @foreach ($book->authors as $author)
      <a href="/authors/{{ $author->slug }}" class="link-dark">{{ $author->name }}</a>@if($index != $length),@endif @if($index == $length-1)and @endif
      @php
        $index++;
      @endphp
    @endforeach

    <h6 class="mb-1 mt-4">Category:</h6>
    <a href="/books?category={{ $book->category->slug }}" class="link-dark">{{ $book->category->name }}</a>

    <h6 class="mb-1 mt-4">Published in:</h6>
    <a href="/books?year={{ $book->publication_year }}" class="link-dark">{{ $book->publication_year }}</a>

    <h6 class="mb-1 mt-4">Synopsis:</h6>
    <article class="pe-2">
      {!! $book->synopsis !!}
    </article>
  </div>

  <div class="pe-5" style="height: 400px; width: 400px;">
    @if ($book->cover)
      <img class="w-100 d-inline-block" src="{{ asset('storage/' . $book->cover) }}" alt="">
    @else
      <img src="https://source.unsplash.com/300x400?book-cover" class="h-100" alt="{{ $book->category->name }}" class="img-fluid">
    @endif
  </div>

</div>



@endsection