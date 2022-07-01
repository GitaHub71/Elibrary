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

        <form class="mt-4" action="/loans" method="post">
            @csrf
            <div class="mb-3">
                <label for="member_id" class="form-label">Borrower Username</label>
                <select class="form-select form-select-sm" name="member_id">
                    @foreach ($members as $member)
                        <option value="{{ $member->id }}" @if (old('member_id') == $member->id) selected @endif >{{ $member->username }}</option>
                    @endforeach
                </select>
                @error('member_id')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            
            <div class="d-flex mb-3">
                <div class="w-25">
                    <label for="borrow_date" class="form-label">Date Borrow</label>
                    <input type="date" class="form-control form-control-sm" id="borrow_date" name="borrow_date" value="{{ \Carbon\Carbon::today()->toDateString() }}" onchange="setDue(this)">
                    {{-- <div class="form-text">mm/dd/yyyy</div> --}}
                </div>

                <div class="w-5 mx-3 align-self-center"><span data-feather="arrow-right"></span></div>

                <div class="w-25">
                    <label for="due_date" class="form-label">Due Date</label>
                    <input type="date" class="form-control form-control-sm" id="due_date" name="due_date" value="{{ \Carbon\Carbon::now()->addDays(14)->toDateString() }}" readonly>
                    {{-- <div class="form-text">mm/dd/yyyy</div> --}}
                </div>
            </div>

            <div class="mb-3">
                <label for="all_books" class="form-label">Book(s)</label>
                <div id="all_books">
                    <div class="d-flex mb-1">
                        <select class="form-select form-select-sm w-50" name="books[0]" id="books[0]" onchange="saveVal(0)">
                            <option value="">Select Book</option>
                            @foreach ($books as $book)
                                <option value="{{ $book->id }}")>{{ $book->title }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                @error('books.*')
                    <div class="invalid-feedback d-block">
                        {{ $message }}
                    </div>
                @enderror
                <button type="button" class="btn btn-link btn-sm mt-1" onclick="addBook(); selectElements();"><span data-feather="plus"></span> Add Book</button>
            </div>

            <button type="submit" class="btn btn-outline-primary btn-sm mt-4">Add Transaction</button>
        </form>

    </div>
</div>

<script>
    const oldval = [];
    var x = 1;

    function setDue(e){
        var borrow = new Date(e.value);
        borrow.setDate(borrow.getDate() + 14);
        // alert(borrow.getDate());
        var d = borrow.toISOString();
        var a = d.split('T')[0];
        document.getElementById("due_date").value = a;
    }


    function addBook(){
        document.getElementById("all_books").innerHTML +=
            '<div class="d-flex mb-1">' + 
                '<select class="form-select form-select-sm w-50" name="books[' + x + ']" id="books[' + x + ']" onchange="saveVal(' + x + ')">' +
                    '<option value="">Select Book</option>' +
                    '@foreach ($books as $book)' +
                        '<option value="{{ $book->id }}")>{{ $book->title }}</option>' +
                    '@endforeach' +
                '</select>' +
                '<button type="button" class="btn btn-light btn-sm" onclick="removeBook(this)">' +
                    '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x" aria-hidden="true">' +
                        '<line x1="18" y1="6" x2="6" y2="18"></line>' +
                        '<line x1="6" y1="6" x2="18" y2="18"></line>' +
                    '</svg>' +
                '</button>' +
            '</div>';
        
        x++;
    }

    function removeBook(e){
        e.parentNode.remove();
    }

    function saveVal(id){
        oldval[id] = document.getElementById('books['+id+']').value;
    }

    function selectElements(){
        for (let i = 0; i < x-1; i++) {
            var element = document.getElementById('books['+i+']');
            if(element != null){
                document.getElementById('books['+i+']').value = oldval[i];
            }
        }
    }
</script>

@endsection