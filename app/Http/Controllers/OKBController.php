<?php

namespace App\Http\Controllers;

use App\Models\OKB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class OKBController extends Controller
{
    public function index()
    {
        $data = OKB::paginate(10);
        return view('pegawai.okb.index', compact('data'));
    }
    public function tambah()
    {
        return view('pegawai.okb.create');
    }
    public function simpan(Request $req)
    {
        $check = OKB::where('nip', $req->nip)->first();
        if ($check != null) {
            Session::flash('warning', 'nip Sudah ada');
            $req->flash();
            return back();
        } else {
            DB::beginTransaction();

            try {

                OKB::create($req->all());

                DB::commit();

                Session::flash('success', 'berhasil di simpan');
                return redirect('/pegawai/data/okb');
            } catch (\Exception $e) {

                DB::rollback();
                Session::flash('error', 'Gagal sistem');
                return back();
            }
        }
    }
    public function edit($id)
    {
        $data = OKB::find($id);
        return view('pegawai.okb.edit', compact('data'));
    }
    public function update(Request $req, $id)
    {
        $data = OKB::find($id)->update($req->all());
        Session::flash('success', 'Berhasil Di update');

        return redirect('/pegawai/data/okb');
    }
    public function hapus($id)
    {
        $data = OKB::find($id)->delete();
        return back();
    }
}
