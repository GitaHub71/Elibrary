@extends('layouts.main')

@section('container')
    
<div class="d-flex flex-wrap flex-md-nowrap justify-content-between align-items-center pt-3 pb-2 mb-3 border-bottom">
  <div class="d-flex">
    <h2 class="h2">{{ $title }}</h2>
    <div class="btn-toolbar mb-2 mx-3">
        <a href="/authors/add" class="btn btn-outline-success btn-sm my-2">
        <span data-feather="plus"></span> Add Author
        </a>
    </div>
  </div>

  <div class="btn-toolbar mb-2">
    @if (request('category') || request('search'))
      <a class="my-auto me-2 link-dark" href="/authors"><< All Authors</a>
    @endif
    <div class="btn-group me-2">
      <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle @if (request('category')) active @endif" data-bs-toggle="dropdown">
        {{ $category }}
      </button>
      <ul class="dropdown-menu">
        @foreach ($categories as $category)
          <li><a class="dropdown-item" href="/authors?category={{ $category->slug }}{{ request('search') ? '&search='.request('search') : '' }}">{{ $category->name }}</a></li>
        @endforeach
        @if (request('category'))
          <li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="/authors">All Authors</a></li>
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

@if ($authors->count())
<table class="table table-striped table-sm mb-4">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col" class="col-3">
            @if ((request('sort') == 'name') && (request('dir') == 'asc'))
                <a href="/authors?sort=name&dir=desc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Name <span data-feather="arrow-down"></span></a>
            @else
                @if ((request('sort') == 'name') && (request('dir') == 'desc'))
                <a href="/authors?sort=name&dir=asc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Name <span data-feather="arrow-up"></span></a>
                @else
                <a href="/authors?sort=name&dir=asc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Name <span data-feather="arrow-down"></span></a>
                @endif
            @endif
            </th>

            <th scope="col" class="col-2">
                @if ((request('sort') == 'date_born') && (request('dir') == 'asc'))
                    <a href="/authors?sort=date_born&dir=desc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Date Born <span data-feather="arrow-down"></span></a>
                @else
                    @if ((request('sort') == 'date_born') && (request('dir') == 'desc'))
                    <a href="/authors?sort=date_born&dir=asc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Date Born <span data-feather="arrow-up"></span></a>
                    @else
                    <a href="/authors?sort=date_born&dir=asc{{ request('category') ? '&category='.request('category') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Date Born <span data-feather="arrow-down"></span></a>
                    @endif
                @endif
            </th>

            <th scope="col" class="ps-3">Books</th>
            <th scope="col" class="text-center">Action</th>
        </tr>
    </thead>

    <tbody>
        @foreach ($authors as $author)
            <tr>
                <th scope="row">{{ ($authors->currentpage()-1) * $authors->perpage() + $loop->index + 1 }}</th>
                <td>{{ $author->name }}</td>
                <td>{{ $author->date_born }}</td>
                <td>
                    <ul>
                        @foreach ($author->books->sortBy('publication_year') as $book)
                            <li><a href="/books/{{ $book->slug }}" class="link-dark">{{ $book->title }}</a> ({{ $book->publication_year }})</li>
                        @endforeach
                    </ul>
                </td>

                <td class="align-middle text-center">
                    <div class="btn-group btn-group-sm btn-action" role="group" aria-label="Basic outlined example">
                        <a href="/authors/{{ $author->slug }}" class="btn btn-outline-primary d-inline-flex align-items-center">
                            <span data-feather="eye"></span>
                        </a>
                        
                        <a href="/authors/{{ $author->slug }}/edit" class="btn btn-outline-primary d-inline-flex align-items-center">
                            <span data-feather="edit-2"></span>
                        </a>
                        
                        <form action="/authors/{{ $author->slug }}" method="post">
                            @method('delete')
                            @csrf
                            <button class="btn btn-outline-primary btn-sm" style="margin-left: -1px; border-top-left-radius: 0; border-bottom-left-radius: 0;" onclick="return confirm('Are you sure you want to delete this?')">
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
    {{ $authors->links() }}
</div>


@endsection