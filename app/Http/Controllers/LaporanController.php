<?php

namespace App\Http\Controllers;

use App\Models\OKB;
use Carbon\Carbon;
use App\Models\Pegawai;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

class LaporanController extends Controller
{
    public function laporan()
    {
        return view('admin.laporan.index');
    }

    public function laporan_pegawai()
    {
        $filename = Carbon::now()->format('d-m-Y-H-i-s') . '_pegawai.pdf';
        $data = Pegawai::get();
        $pdf = Pdf::loadView('pdf.pegawai', compact('data'))->setOption([
            'enable_remote' => true,
        ])->setPaper('a4', 'landscape');
        return $pdf->stream($filename);
    }

    public function laporan_okb()
    {
        $filename = Carbon::now()->format('d-m-Y-H-i-s') . '_okb.pdf';
        $data = OKB::get();
        $pdf = Pdf::loadView('pdf.laporanokb', compact('data'))->setOption([
            'enable_remote' => true,
        ])->setPaper('a4', 'landscape');
        return $pdf->stream($filename);
    }
}
