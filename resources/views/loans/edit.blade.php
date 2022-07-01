@extends('layouts.main')

@section('container')
    
<div class="d-flex">
    <div class="col-md-6">

        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">{{ $title }}</h1>
            <div class="btn-toolbar mb-2">
                <a class="link-dark" href="/loans"><span data-feather="arrow-left"></span> Back to Transaction List</a>
            </div>
        </div>

        <form class="mt-4" action="/loans/{{ $loan->id }}" method="post">
            @method('put')
            @csrf
            <div class="mb-3">
                <label for="member_id" class="form-label">Borrower Username</label>
                <select class="form-select form-select-sm" name="member_id">
                    @foreach ($members as $member)
                        <option value="{{ $member->id }}" @if (old('member_id', $loan->member_id) == $member->id) selected @endif >{{ $member->username }}</option>
                    @endforeach
                </select>
                @error('member_id')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="book_id" class="form-label">Book</label>
                <select class="form-select form-select-sm" name="book_id">
                    @foreach ($books as $book)
                        <option value="{{ $book->id }}" @if (old('book_id', $loan->book_id) == $book->id) selected @endif >{{ $book->title }}</option>
                    @endforeach
                </select>
                @error('book_id')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            
            <div class="d-flex mb-0">
                <div class="w-25">
                    <label for="date_borrow" class="form-label">Date Borrow</label>
                    <input type="date" class="form-control form-control-sm @error('date_return') is-invalid @enderror" id="date_borrow" name="date_borrow" value="{{ old('date_borrow', $loan->date_borrow) }}">
                    {{-- <div class="form-text">mm/dd/yyyy</div> --}}
                    @error('date_borrow')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="w-5 mx-3 align-self-center"><span data-feather="arrow-right"></span></div>

                <div class="w-25">
                    <label for="date_return" class="form-label">Date Return</label>
                    <input type="date" class="form-control form-control-sm @error('date_return') is-invalid @enderror" id="date_return" name="date_return" value="{{ old('date_return', $loan->date_return) }}">
                    {{-- <div class="form-text">mm/dd/yyyy</div> --}}
                    @error('date_return')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
            </div>

            <button type="submit" class="btn btn-outline-primary btn-sm mt-4">Save Changes</button>
        </form>

    </div>
</div>

{{-- <script type="text/javascript">
    $(function(){
        $(".datepicker").datepicker({
            format: 'yyyy-mm-dd',
            autoclose: true,
            todayHighlight: true,
        });
    });
</script> --}}

@endsection