@extends('layouts.main')

@section('container')
    
<div class="d-flex flex-wrap justify-content-between flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <div class="d-flex">
    <h1 class="h2">{{ $title }}</h1>
    <div class="btn-toolbar mb-2 mx-3">
      <a href="/loans/add" class="btn btn-outline-success btn-sm my-2">
        <span data-feather="plus"></span> New Transaction
      </a>
    </div>
  </div>

  <div class="btn-toolbar mb-2">
    {{-- <div class="btn-group me-2">
      <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle @if (request('category')) active @endif" data-bs-toggle="dropdown">
        {{ $filters['category'] }}
      </button>
      <ul class="dropdown-menu">
        @foreach ($categories as $category)
          <li><a class="dropdown-item" href="/loans?category={{ $category->slug }}">{{ $category->name }}</a></li>
        @endforeach
        @if (request('category'))
          <li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="/loans">All Transaction</a></li>
        @endif
      </ul>
    </div> --}}

    @if (request('admin') || request('date_borrow') || request('date_return') || request('search'))
      <a class="my-auto me-2 link-dark" href="/loans"><< All Transaction</a>
    @endif
    <div class="btn-group me-2">
      <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle @if (request('admin')) active @endif" data-bs-toggle="dropdown">
        {{ $filters['admin'] }}
      </button>
      <ul class="dropdown-menu">
        @foreach ($admins as $admin)
          <li><a class="dropdown-item" href="/loans?admin={{ $admin->id }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}">{{ $admin->name }}</a></li>
        @endforeach
        @if (request('admin'))
          <li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="/loans">All Transaction</a></li>
        @endif
      </ul>
    </div>
    
    <div class="btn-group me-2">
      <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle @if (request('date_borrow')) active @endif" data-bs-toggle="dropdown">
        {{ $filters['date_borrow'] }}
      </button>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="/loans?{{ request('admin') ? 'admin='.request('admin').'&' : '' }}date_borrow=last_week{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}">last week</a></li>
        <li><a class="dropdown-item" href="/loans?{{ request('admin') ? 'admin='.request('admin').'&' : '' }}date_borrow=last_month{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}">last month</a></li>
        <li><a class="dropdown-item" href="/loans?{{ request('admin') ? 'admin='.request('admin').'&' : '' }}date_borrow=last_year{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}">last year</a></li>
        @if (request('date_borrow'))
          <li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="/loans">All Transaction</a></li>
        @endif
      </ul>
    </div>
  
    <div class="btn-group">
      <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle @if (request('date_return')) active @endif" data-bs-toggle="dropdown">
        {{ $filters['date_return'] }}
      </button>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="/loans?{{ request('admin') ? 'admin='.request('admin').'&' : '' }}{{ request('date_borrow') ? 'date_borrow='.request('date_borrow').'&' : '' }}date_return=last_week{{ request('search') ? '&search='.request('search') : '' }}">last week</a></li>
        <li><a class="dropdown-item" href="/loans?{{ request('admin') ? 'admin='.request('admin').'&' : '' }}{{ request('date_borrow') ? 'date_borrow='.request('date_borrow').'&' : '' }}date_return=last_month{{ request('search') ? '&search='.request('search') : '' }}">last month</a></li>
        <li><a class="dropdown-item" href="/loans?{{ request('admin') ? 'admin='.request('admin').'&' : '' }}{{ request('date_borrow') ? 'date_borrow='.request('date_borrow').'&' : '' }}date_return=last_year{{ request('search') ? '&search='.request('search') : '' }}">last year</a></li>
        <li><a class="dropdown-item" href="/loans?{{ request('admin') ? 'admin='.request('admin').'&' : '' }}{{ request('date_borrow') ? 'date_borrow='.request('date_borrow').'&' : '' }}date_return=not_returned{{ request('search') ? '&search='.request('search') : '' }}">not returned</a></li>
        @if (request('date_return'))
          <li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="/loans">All Transaction</a></li>
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

@if ($loans->count())
<table class="table table-striped table-sm mb-4">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">
        @if ((request('sort') == 'username') && (request('dir') == 'asc'))
          <a href="/loans?sort=username&dir=desc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Username <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'username') && (request('dir') == 'desc'))
            <a href="/loans?sort=username&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Username <span data-feather="arrow-up"></span></a>
          @else
            <a href="/loans?sort=username&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Username <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col" class="col-3">
        @if ((request('sort') == 'title') && (request('dir') == 'asc'))
          <a href="/loans?sort=title&dir=desc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Book <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'title') && (request('dir') == 'desc'))
            <a href="/loans?sort=title&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Book <span data-feather="arrow-up"></span></a>
          @else
            <a href="/loans?sort=title&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Book <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col">
        @if ((request('sort') == 'admin') && (request('dir') == 'asc'))
          <a href="/loans?sort=admin&dir=desc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Admin <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'admin') && (request('dir') == 'desc'))
            <a href="/loans?sort=admin&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Admin <span data-feather="arrow-up"></span></a>
          @else
            <a href="/loans?sort=admin&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Admin <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col">
        @if ((request('sort') == 'date_borrow') && (request('dir') == 'asc'))
          <a href="/loans?sort=date_borrow&dir=desc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Date Borrow <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'date_borrow') && (request('dir') == 'desc'))
            <a href="/loans?sort=date_borrow&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Date Borrow <span data-feather="arrow-up"></span></a>
          @else
            <a href="/loans?sort=date_borrow&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Date Borrow <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col">
        @if ((request('sort') == 'due_date') && (request('dir') == 'asc'))
          <a href="/loans?sort=due_date&dir=desc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Due Date <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'due_date') && (request('dir') == 'desc'))
            <a href="/loans?sort=due_date&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Due Date <span data-feather="arrow-up"></span></a>
          @else
            <a href="/loans?sort=due_date&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Due Date <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col">
        @if ((request('sort') == 'date_return') && (request('dir') == 'asc'))
          <a href="/loans?sort=date_return&dir=desc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Date Return <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'date_return') && (request('dir') == 'desc'))
            <a href="/loans?sort=date_return&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Date Return <span data-feather="arrow-up"></span></a>
          @else
            <a href="/loans?sort=date_return&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Date Return <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col">
        @if ((request('sort') == 'fines') && (request('dir') == 'asc'))
          <a href="/loans?sort=fines&dir=desc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Fines <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'fines') && (request('dir') == 'desc'))
            <a href="/loans?sort=fines&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Fines <span data-feather="arrow-up"></span></a>
          @else
            <a href="/loans?sort=fines&dir=asc{{ request('admin') ? '&admin='.request('admin') : '' }}{{ request('date_borrow') ? '&date_borrow='.request('date_borrow') : '' }}{{ request('date_return') ? '&date_return='.request('date_return') : '' }}{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Fines <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>
      <th scope="col">Action</th>
    </tr>
  </thead>

  <tbody>
    @foreach ($loans as $loan)
      <tr>
        <th scope="row">{{ ($loans->currentpage()-1) * $loans->perpage() + $loop->index + 1 }}</th>
        <td>{{ $loan->member->username }}</td>
        <td>{{ $loan->book->title }}</td>
        <td>{{ $loan->admin->name }}</td>
        <td>{{ $loan->date_borrow }}</td>
        <td>{{ $loan->due_date }}</td>
        <td>
          @if ($loan->date_return == null)
            <span class="text-danger"><b>Not Returned</b></span>
          @else
            {{ $loan->date_return }}
          @endif
        </td>
        <td>
          @if ($loan->fines === 0)
            <span class="text-success">On Time</span>
          @else
            @if (isset($loan->fines))
            {{ number_format($loan->fines) }}
            @endif
          @endif
        </td>
        <td>
          <div class="btn-group btn-group-sm btn-action" role="group" aria-label="Basic outlined example">
            <a href="/loans/{{ $loan->id }}/edit" class="btn btn-outline-primary d-inline-flex align-items-center">
              <span data-feather="edit-2"></span>
            </a>
            
            <form action="/loans/{{ $loan->id }}" method="post">
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
  {{ $loans->links() }}
</div>

@endsection