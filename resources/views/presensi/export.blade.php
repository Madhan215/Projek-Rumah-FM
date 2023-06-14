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
            @foreach ($data as $mahasiswa)
                <tr>
                    <td>{{ $mahasiswa->id }}</td>
                    <td>{{ $mahasiswa->nama_agen }}</td>
                    <td>{{ $mahasiswa->nim }}</td>
                    <td>{{ $mahasiswa->keterangan }}</td>
                    <!-- Tambahkan kolom sesuai dengan struktur tabel Anda -->
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
