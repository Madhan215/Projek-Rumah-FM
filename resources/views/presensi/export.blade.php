<!DOCTYPE html>
<html>
<head>
    <title>Export PDF</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid black;
            padding: 5px;
        }
    </style>
</head>
<body>
    <h3 align="right">Tanggal : {{date('d-m-Y')}}</h3>
    <h1>Rekap Presensi</h1>
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Nama</th>
                <th>NIM</th>
                <th>Keterangan</th>
                <!-- Tambahkan kolom sesuai dengan struktur tabel Anda -->
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $dt)
                <tr>
                    <td>{{ $dt->id }}</td>
                    <td>{{ $dt->nama_agen }}</td>
                    <td>{{ $dt->nim }}</td>
                    <td>{{ $dt->keterangan }}</td>
                    <!-- Tambahkan kolom sesuai dengan struktur tabel Anda -->
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
