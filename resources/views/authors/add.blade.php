@extends('layouts.main')

@section('container')
    

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">{{ $title }}</h1>
    <div class="btn-toolbar mb-2">
        <a class="link-dark" href="/authors"><span data-feather="arrow-left"></span> Back to Authors List</a>
    </div>
</div>


<form class="mt-4 mb-5" action="/authors" method="post" enctype="multipart/form-data">
    @csrf
    <div class="d-flex">
        <div class="col-md-6">
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control form-control-sm @error('name') is-invalid @enderror" id="name" name="name" value="{{ old('name') }}">
                @error('name')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="slug" class="form-label">Slug</label>
                <input type="text" class="form-control form-control-sm @error('slug') is-invalid @enderror" id="slug" name="slug" value="{{ old('slug') }}">
                @error('slug')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="date_born" class="form-label">Date Born</label>
                <input type="date" class="form-control form-control-sm @error('date_born') is-invalid @enderror" id="date_born" name="date_born" value="{{ old('date_born') }}">
                @error('date_born')
                    <div class="invalid-feedback d-block">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="bio" class="form-label">Biography</label>
                <input id="bio" type="hidden" name="bio" value="{{ old('bio') }}">
                <trix-editor input="bio"></trix-editor>
                @error('bio')
                    <div class="invalid-feedback d-block">
                        The biography field is required.
                    </div>
                @enderror
            </div>
        </div>

        <div class="ms-5 col-md-5">
            <div class="d-flex justify-content-between mb-3">
                <div class="me-4">
                    <label for="photo" class="form-label">Photo</label>
                    <input class="form-control form-control-sm @error('photo') is-invalid @enderror" type="file" id="photo" name="photo" onchange="previewImage()">
                    @error('photo')
                        <div class="invalid-feedback d-block">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
                <div class="d-flex justify-content-center" style="height: 175px; width: 125px; border: 1px solid rgba(0,0,0,.125); border-radius: 0.25rem;">
                    <p class="img-ins align-self-center p-2 text-center" style=" color:gray">Insert Author Photo</p>
                    <img class="img-preview img-fluid d-block">
                </div>
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-outline-primary btn-sm mt-4">Add Author</button>
</form>

<script>
    const name = document.querySelector('#name');
    const slug = document.querySelector('#slug');

    name.addEventListener('change', function(){
        fetch('/authors/checkSlug?name=' + name.value)
            .then(response => response.json())
            .then(data => slug.value = data.slug)
    });

    document.addEventListener('trix-file-accept', function(e){
        e.preventDefault();
    });

    function previewImage(){
        const image = document.querySelector('#photo');
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
</script>

@endsection