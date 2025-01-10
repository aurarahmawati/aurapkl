<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\OKB;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class OKBController extends Controller
{
    public function index()
    {
        $data = OKB::where('pegawai_id', Auth::user()->pegawai_id)->paginate(10);
        return view('pegawai.okb.index', compact('data'));
    }
    public function print($id)
    {
        $data = OKB::find($id);
        $filename = Carbon::now()->format('d-m-Y-H-i-s') . '_laporanharian.pdf';

        $pdf = Pdf::loadView('pdf.laporanharian', compact('data'))->setOption([
            'enable_remote' => true,
        ]);
        return $pdf->stream($filename);
    }
    public function tambah()
    {
        return view('pegawai.okb.create');
    }

    public function simpan(Request $req)
    {
        if ($req->file == null) {
            $filename = null;
        } else {
            $filename = time() . '_' . $req->file->getClientOriginalName();
            $req->file('file')->storeAs('uploads', $filename, 'public');
        }
        $param = $req->all();
        $param['dokumentasi'] = $filename;
        $param['pegawai_id'] = Auth::user()->pegawai_id;
        OKB::create($param);
        Session::flash('success', 'berhasil di simpan');
        return redirect('/pegawai/data/okb');
    }

    public function edit($id)
    {
        $data = OKB::find($id);
        return view('pegawai.okb.edit', compact('data'));
    }
    public function update(Request $req, $id)
    {
        if ($req->file == null) {
            $filename = OKB::find($id)->dokumentasi;
        } else {
            $filename = time() . '_' . $req->file->getClientOriginalName();
            $req->file('file')->storeAs('uploads', $filename, 'public');
        }
        $param = $req->all();
        $param['dokumentasi'] = $filename;
        $param['pegawai_id'] = Auth::user()->pegawai_id;
        $data = OKB::find($id)->update($param);
        Session::flash('success', 'Berhasil Diupdate');
        return redirect('/pegawai/data/okb'); //untuk kembali ke menu 
    }
    public function hapus($id)
    {
        $data = OKB::find($id)->delete();
        return back();
    }
}
