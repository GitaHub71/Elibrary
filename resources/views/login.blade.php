@extends('layouts.main')

@section('container')
<div class="clearfix row justify-content-center">
    <div class="col-md-4">
  
      @if (session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
          {{ session('success') }}
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
      @endif
  
      @if (session()->has('loginError'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
          {{ session('loginError') }}
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
      @endif
  
  
      <main class="form-signin">
        <h1 class="h3 mb-5 fw-normal text-center">Elibrary | Please login</h1>
          
        <form action="/login" method="POST">
          @csrf
            <div class="form-floating" style="margin-bottom: -2px;">
              <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" autofocus required value="{{ old('email') }}"  style="border-bottom-right-radius: 0; border-bottom-left-radius: 0;">
              <label for="email">Email address</label>
            </div>
            @error('email')
              <div class="invalid-feedback d-block">
                {{ $message }}
              </div>
            @enderror
  
            <div class="form-floating mt-0">
              <input type="password" name="password" class="form-control @error('password') is-invalid @enderror" id="password" placeholder="Password" required style="border-top-right-radius: 0; border-top-left-radius: 0;">
              <label for="password">Password</label>
            </div>
            @error('password')
              <div class="invalid-feedback d-block">
                {{ $message }}
              </div>
            @enderror
  
            <button class="w-100 btn btn-lg btn-primary mt-5" type="submit">Log In</button>
          </form>

      </main>
    </div>
  </div>
@endsection