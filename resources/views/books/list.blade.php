@extends('layouts.main')

@section('container')
    
<div class="d-flex flex-wrap flex-md-nowrap justify-content-between align-items-center pt-3 pb-2 mb-3 border-bottom">
  <div class="d-flex">
    <h1 class="h2">{{ $title }}</h1>
    <div class="btn-toolbar mb-2 mx-3">
      <a href="/books/add" class="btn btn-outline-success btn-sm my-2">
        <span data-feather="plus"></span> Add Book
      </a>
    </div>
  </div>

  <div class="btn-toolbar mb-2">
    @if (request('category') || request('search'))
      <a class="my-auto me-2 link-dark" href="/books"><< All Books</a>
    @endif
    <div class="btn-group me-2">
      <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle @if (request('category')) active @endif" data-bs-toggle="dropdown">
        {{ $category }}
      </button>
      <ul class="dropdown-menu">
        @foreach ($categories as $category)
          <li><a class="dropdown-item" href="/books?category={{ $category->slug }}{{ request('search') ? '&search='.request('search') : '' }}">{{ $category->name }}</a></li>
        @endforeach
        @if (request('category'))
          <li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="/books">All Books</a></li>
        @endif
      </ul>
    </div>
  </div>
</div>

@if (session()->has('success'))
<div class="alert alert-success">
    {{ session('success') }}
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
@endif

@if ($books->count())
<table class="table table-striped table-sm mb-4">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col" class="col-2">
        @if ((request('sort') == 'title') && (request('dir') == 'asc'))
          <a href="/books?sort=title&dir=desc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Title <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'title') && (request('dir') == 'desc'))
            <a href="/books?sort=title&dir=asc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Title <span data-feather="arrow-up"></span></a>
          @else
            <a href="/books?sort=title&dir=asc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Title <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col" class="text-center">
        @if ((request('sort') == 'category_id') && (request('dir') == 'asc'))
          <a href="/books?sort=category_id&dir=desc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Category <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'category_id') && (request('dir') == 'desc'))
            <a href="/books?sort=category_id&dir=asc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Category <span data-feather="arrow-up"></span></a>
          @else
            <a href="/books?sort=category_id&dir=asc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Category <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col" class="text-center">
        @if ((request('sort') == 'publication_year') && (request('dir') == 'asc'))
          <a href="/books?sort=publication_year&dir=desc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Publication Year <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'publication_year') && (request('dir') == 'desc'))
            <a href="/books?sort=publication_year&dir=asc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Publication Year <span data-feather="arrow-up"></span></a>
          @else
            <a href="/books?sort=publication_year&dir=asc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Publication Year <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col" class="col-3">Writer(s)</th>

      <th scope="col" class="text-center">
        @if ((request('sort') == 'copies_left') && (request('dir') == 'asc'))
          <a href="/books?sort=copies_left&dir=desc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Copies Left <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'copies_left') && (request('dir') == 'desc'))
            <a href="/books?sort=copies_left&dir=asc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Copies Left <span data-feather="arrow-up"></span></a>
          @else
            <a href="/books?sort=copies_left&dir=asc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Copies Left <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col" class="text-center">Action</th>
    </tr>
  </thead>

  <tbody>
    @foreach ($books as $book)
      <tr>
        <th scope="row">{{ ($books->currentpage()-1) * $books->perpage() + $loop->index + 1 }}</th>
        <td>{{ $book->title }}</td>
        <td class="text-center">{{ $book->category->name }}</td>
        <td class="text-center">{{ $book->publication_year }}</td>
        <td>
          @php
            $length = count($book->authors);
            $index = 1;
          @endphp
          @foreach ($book->authors as $author)
            {{ $author->name }}@if($index != $length),@endif @if($index == $length-1)and @endif
            @php $index++;@endphp
          @endforeach
        </td>
        <td class="text-center">{{ $book->copies_left }}</td>

        <td class="text-center align-middle">
          <div class="btn-group btn-group-sm btn-action" role="group" aria-label="Basic outlined example">
            <a href="/books/{{ $book->slug }}" class="btn btn-outline-primary d-inline-flex align-items-center" title="Show book">
              <span data-feather="eye"></span>
            </a>
            
            <a href="/books/{{ $book->slug }}/edit" class="btn btn-outline-primary d-inline-flex align-items-center" title="Edit book">
              <span data-feather="edit-2"></span>
            </a>
            
            <form action="/books/{{ $book->slug }}" method="post">
              @method('delete')
              @csrf
              <button class="btn btn-outline-primary btn-sm" style="margin-left: -1px; border-top-left-radius: 0; border-bottom-left-radius: 0;" onclick="return confirm('Are you sure you want to delete this?')" title="Delete book">
                <span data-feather="x"></span>
              </button>
            </form>
          </div>
        </td>

      </tr>
    @endforeach
  </tbody>
</table>
@else
<p class="text-center fs-4">No result</p>
@endif

    
<div class="d-flex justify-content-end mb-4">
    {{ $books->links() }}
</div>


@endsection