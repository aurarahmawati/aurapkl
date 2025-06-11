<?php

namespace App\Http\Controllers;

use App\Models\Jadwal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class JadwalController extends Controller
{
    public function index()
    {
        $data = Jadwal::paginate(10);
        return view('admin.jadwal.index', compact('data'));
    }
    public function tambah()
    {
        return view('admin.jadwal.create');
    }
     public function simpan(Request $req)
    {
     DB::beginTransaction();

            {try {

                Jadwal::create($req->all());

                DB::commit();

                Session::flash('success', 'berhasil di simpan');
                return redirect('/admin/data/jadwal');
            } catch (\Exception $e) {

                DB::rollback();
                Session::flash('error', 'Gagal Menyimpan Data');
                return back();
            }
         }
    }
    public function edit($id)
    {
        $data = Jadwal::find($id);
        return view('admin.jadwal.edit', compact('data'));
    }
    public function update(Request $req, $id)
    {
        $data = Jadwal::find($id)->update($req->all());
        Session::flash('success', 'Berhasil Di update');

        return redirect('/admin/data/jadwal');
    }
     public function hapus($id)
    {
        $data = Jadwal::find($id)->delete();
        return back();
    }
}
