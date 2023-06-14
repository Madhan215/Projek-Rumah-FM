@extends('layouts.main')

@section('container')

{{-- Start Container --}}
<div class="container">

{{-- Start Notifikasi Success --}}
@if (session('success'))
  <div class="alert alert-success alert-dismissible fade show" role="alert">
    <button href="#" class="close" data-dismiss="alert" aria-label="close">&times;</button>
    {{ session('success') }}
  </div>
@endif
{{-- End Notifikasi Success --}}

{{-- Start Tombol Tambah --}}
@if(auth()->user()->departemen == "Steering Commite")
<button type="button" class="btn btn-primary mb-4" data-toggle="modal" data-target="#Tambah" {{$tambah;}}>
 Tambah Presensi
</button>

{{-- End Tombol Tanmbah --}}

{{-- Start Searching --}}
{{-- <div class="d-flex justify-content-end mb-4 mt-4">
  <form action="{{route('searchagd')}}" class="form-inline" method="GET">
    <div class="input-group">
      <input type="search" name="search" class="form-control" placeholder="Pencarian...">
      <div class="input-group-append">
        <button type="submit" class="btn btn-default">
          <i class="fas fa-search"></i>
        </button>
      </div>
    </div>
  </form>
</div> --}}
{{-- End Searching --}}

{{-- Start Table Content --}}
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col" style="width: 45%">Kegiatan</th>
      <th scope="col" style="width: 45%">Waktu</th>
      <th scope="col" style="width: 10%">Aksi</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($absen as $abs) : ?>
    {{-- Formating Tanggal ke Indonesia --}}
    <tr>
      <td><?= $abs->nama ?></td>
      <td><?= $abs->waktu ?></td>
      <td>
        <button type="button" class="btn btn-success m-1" data-toggle="modal" data-target="#modalDetail<?=$abs->id?>">
          Detail
        </button>

        <form action="{{ route('presensi.destroy',$abs->id) }}" method="POST" class="d-inline">
            @csrf
            @method('DELETE')
            <button class="btn btn-danger m-1" onclick="return confirm_delete()">Hapus</button>
        </form>

        <script type="text/javascript">
          function confirm_delete() {
          return confirm('Anda yakin akan meenghapus data ini?');
          }
        </script>
      </td>
    </tr>
    
  </tbody>
  
{{-- End Teble Content --}}

{{-- Start Modal Edit --}}
<div class="modal fade" id="modalDetail<?=$abs->id?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Edit Data</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
          </button>
      </div>
    <div class="modal-body">
      <form>
        <div class="form-group">
          <label for="namaDetail">Nama Kegiatan</label>
          <input disabled class="form-control" id="namaDetail" value="{{$abs->nama}}">
        </div>
        <div class="mb-3">
          <label for="waktu" class="form-label">Waktu Kegiatan</label>
          <input type="datetime-local" class="form-control" id="waktuDetail" name="waktu" value="{{$abs->waktu}}">
        </div>
      </form>
    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
{{-- End Modal Detail--}}

  <?php endforeach; ?>
</table>
<a href="{{route('rekap')}}">
  <button type="button" class="btn btn-success mb-4">Rekap Presensi</button>
</a>
<hr>
<h2 align="center">Isi Presensi</h2>
@endif

</div>
{{-- End Container --}}

{{-- Start Modal Tambah Jadwal --}}
<div class="modal fade" id="Tambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <form action="{{ route('presensi.store') }}" method="POST" enctype="multipart/form-data">
  @csrf
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Tambah Data</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <label for="nama" class="form-label">Nama Kegiatan</label>
            <input type="text" class="form-control" id="nama" name="nama" required>
          </div>
          <div class="mb-3">
            <label for="waktu" class="form-label">Waktu Kegiatan</label>
            <input type="datetime-local" class="form-control" id="waktu" name="waktu" required>
          </div>
        </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Save changes</button>
          </div>
      </div>
    </div>
  </form>
</div>
{{-- End Modal Tambah Jadwal --}}


<div class="container">
  {{-- Tabel untuk Mengisi Presensi --}}
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col" style="width: 45%">Kegiatan</th>
      <th scope="col" style="width: 45%">Waktu</th>
      <th scope="col" style="width: 10%">Aksi</th>
    </tr>
  </thead>
  <tbody>
    {{-- Formating Tanggal ke Indonesia --}}
    <tr>
      <?php foreach ($absen as $abs) : ?>
      <td><?= $abs->nama ?></td>
      <td><?= $abs->waktu ?></td>
      <td>
        <?php if($abs->keterangan == "Tanpa Keterangan"):?>
        <form action="hadir">
          <input type="text" name="keterangan" value="Hadir" style="display: none">
          <input class="btn btn-success" type="submit" value="Hadir" >
        </form>
        <?php else: ?>
          Hadir
        <?php endif ?>
      </td>
      <?php endforeach; ?>
    </tr>
    
  </tbody>
</table>

{{-- Start Script --}}
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
{{-- End Scirt --}}

@endsection