<?php

namespace App\Http\Controllers;

use PDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PresensiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $absen = DB::table('presensi')->where('nim', auth()->user()->nim)->orderBy('waktu','ASC')->paginate(10);
        $jumlah = DB::table('presensi')->count();
        if($jumlah > 0){
            $data['tambah'] = 'disabled';
        }
        else{
            $data['tambah'] = '';
        }
        $data['title'] = "Presensi";
        $data['sub'] = 'UKM FKIP MENGAJAR ULM';
        $data['nim'] = auth()->user()->nim;
        return view('presensi.index',$data,['absen' => $absen]);
    }

    public function rekap(){
        $rekap = DB::table('presensi')->paginate(10);
        $data['title'] = "Rekap Presensi";
        $data['sub'] = 'UKM FKIP MENGAJAR ULM';
        return view('presensi.rekap',$data,['rekap' => $rekap]);
    }


    public function exportPDF(){
        $data = DB::table("presensi")->get();
        $pdf = PDF::loadView('presensi.export', compact('data'));
        return $pdf->download('Rekap Kegiatan.pdf');
    }


    public function hadir(Request $request){
        $keterangan = $request->input('keterangan');

        $query = DB::table('presensi')->where('nim', auth()->user()->nim)->update([
            'keterangan' => $keterangan,
        ]);

        if ($query) {
            return redirect()->route('presensi.index')->with('success', 'Berhasi Presensi');
        } else {
            return redirect()->route('presensi.index')->with('failed', 'Gagal Presensi');
        }

        // return redirect()->back();
        
    }
        

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $agens = DB::table('users')->orderBy('nama','ASC')->get();
        $nama = $request->input('nama');
        $waktu = $request->input('waktu');
        foreach($agens as $agen){
            $query = DB::table('presensi')->insert([
                'nama' => $nama,
                'waktu' => $waktu,
                'nim' => $agen->nim,
                'nama_agen' => $agen->nama,
                'keterangan' => 'Tanpa Keterangan',
            ]);
        };
        

        

        if ($query) {
            return redirect()->route('presensi.index')->with('success', 'Data Berhasil Ditambahkan');
        } else {
            return redirect()->route('presensi.index')->with('failed', 'Data Gagal Ditambahkan');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $query = DB::table('presensi')->truncate();
        if ($query) {
            return redirect()->route('presensi.index')->with('success', 'Data Berhasil Dihapus');
        } else {
            return redirect()->route('presensi.index')->with('failed', 'Data Gagal Dihapus');
        }
    }
}
