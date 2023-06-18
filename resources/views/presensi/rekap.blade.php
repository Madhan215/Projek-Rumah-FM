@extends('layouts.main')

@section('container')

{{-- Start Container --}}
<div class="container">

<a href="{{ route('export.pdf') }}" class="btn btn-info text-white mb-4">Export PDF</a>

@if(auth()->user()->departemen == "Steering Commite")
{{-- Start Table Content --}}
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col" style="width: 45%">Nama</th>
      <th scope="col" style="width: 45%">NIM</th>
      <th scope="col" style="width: 10%">Keterangan</th>
    </tr>
  </thead>
  <tbody>
    {{-- Formating Tanggal ke Indonesia --}}
    <?php foreach ($rekap as $abs) :?>
    <tr>
      <td><?= $abs->nama_agen ?></td>
      <td><?= $abs->nim ?></td>
      <td><?= $abs->keterangan ?></td>
    </tr>
    <?php endforeach; ?>
    
  </tbody>
</table>
{{-- Start Link Paginate --}}
<div class="d-flex justify-content-end">
  {{$rekap->links()}}
</div>
{{-- End Link Paginate --}}
@endif
</div>

@endsection