@extends('layouts.main')

@section('container')

<div class="container">
    @if (session('success'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <button href="#" class="close" data-dismiss="alert" aria-label="close">&times;</button>
        {{ session('success') }}
    </div>
    @endif

    <form action="{{ route('editPass', $nim) }}" method="POST">
        @method('get')
        @csrf
    <div class="modal-body">
        <div class="mb-3">
          <label for="passwordLama" class="form-label">Password Lama</label>
          <input type="text" class="form-control" name="passwordLama" id="passwordLama" autocomplete="new-password" required>  
          @error("passwordLama")
          <div class="text-danger mt-2 text-sm">{{$message}}</div>
          @enderror
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password Baru</label>
          <input type="password" class="form-control" name="password" id="password" autocomplete="new-password" required>
          @error("password")
          <div class="text-danger mt-2 text-sm">{{$message}}</div>
          @enderror  
        </div>
        <div class="mb-3">
          <label for="password_confirmation" class="form-label">Konfirmasi Password Baru</label>
          <input type="password" class="form-control" name="password_confirmation" id="password_confirmation" required>  
          @error("password_confirmation")
          <div class="text-danger mt-2 text-sm">{{$message}}</div>
          @enderror
        </div>
    </div>
    <div class="modal-footer">
    <a class="btn btn-primary" href="{{ url()->previous() }}">Kembali</a>
    <button type="submit" class="btn btn-success">Update</button>
    </div>
    </form>
</div>



@endsection