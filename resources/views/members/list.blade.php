@extends('layouts.main')

@section('container')

<div class="d-flex flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">{{ $title }}</h1>
  <div class="btn-toolbar mb-2 mx-3">
    <a href="/members/add" class="btn btn-outline-success btn-sm my-2">
      <span data-feather="plus"></span> Add New Member
    </a>
  </div>

  @if (request('search'))
    <a class="my-auto me-2 link-dark" href="/members"><< All Members</a>
  @endif
</div>

@if (session()->has('success'))
<div class="alert alert-success">
    {{ session('success') }}
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
@endif

@if ($members->count())
<table class="table table-striped table-sm mb-4">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">
        @if ((request('sort') == 'name') && (request('dir') == 'asc'))
          <a href="/members?sort=name&dir=desc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Name <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'name') && (request('dir') == 'desc'))
            <a href="/members?sort=name&dir=asc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Name <span data-feather="arrow-up"></span></a>
          @else
            <a href="/members?sort=name&dir=asc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Name <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col">
        @if ((request('sort') == 'username') && (request('dir') == 'asc'))
          <a href="/members?sort=username&dir=desc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Username <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'username') && (request('dir') == 'desc'))
            <a href="/members?sort=username&dir=asc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Username <span data-feather="arrow-up"></span></a>
          @else
            <a href="/members?sort=username&dir=asc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Username <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col">
        @if ((request('sort') == 'email') && (request('dir') == 'asc'))
          <a href="/members?sort=email&dir=desc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Email <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'email') && (request('dir') == 'desc'))
            <a href="/members?sort=email&dir=asc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Email <span data-feather="arrow-up"></span></a>
          @else
            <a href="/members?sort=email&dir=asc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Email <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col">
        @if ((request('sort') == 'phone') && (request('dir') == 'asc'))
          <a href="/members?sort=phone&dir=desc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Phone <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'phone') && (request('dir') == 'desc'))
            <a href="/members?sort=phone&dir=asc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Phone <span data-feather="arrow-up"></span></a>
          @else
            <a href="/members?sort=phone&dir=asc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Phone <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col" class="text-center">
        @if ((request('sort') == 'year_joined') && (request('dir') == 'asc'))
          <a href="/members?sort=year_joined&dir=desc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Year Joined <span data-feather="arrow-down"></span></a>
        @else
          @if ((request('sort') == 'year_joined') && (request('dir') == 'desc'))
            <a href="/members?sort=year_joined&dir=asc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none">Year Joined <span data-feather="arrow-up"></span></a>
          @else
            <a href="/members?sort=year_joined&dir=asc{{ request('search') ? '&search='.request('search') : '' }}" class="text-decoration-none link-dark">Year Joined <span data-feather="arrow-down"></span></a>
          @endif
        @endif
      </th>

      <th scope="col" class="text-center">Action</th>
    </tr>
  </thead>

  <tbody>
    @foreach ($members as $member)
      <tr>
        <th scope="row">{{ ($members->currentpage()-1) * $members->perpage() + $loop->index + 1 }}</th>
        <td>{{ $member->name }}</td>
        <td>{{ $member->username }}</td>
        <td>{{ $member->email }}</td>
        <td>{{ $member->phone }}</td>
        <td class="text-center">{{ $member->year_joined }}</td>

        <td class="text-center align-middle">
          <div class="btn-group btn-group-sm btn-action" role="group" aria-label="Basic outlined example">
            <a href="/members/{{ $member->username }}/edit" class="btn btn-outline-primary d-inline-flex align-items-center">
              <span data-feather="edit-2"></span>
            </a>
            
            <form action="/members/{{ $member->username }}" method="post">
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
    {{ $members->links() }}
</div>
    
@endsection