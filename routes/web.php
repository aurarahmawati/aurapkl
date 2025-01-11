<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OKBController;
use App\Http\Controllers\SptController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\MonitoringController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('login');
});

//menghubungkan menjalankan
Route::get('login', [LoginController::class, 'index'])->name('login');
Route::post('login', [LoginController::class, 'login']);
Route::get('/logout', [LogoutController::class, 'logout']);

Route::get('admin', [HomeController::class, 'admin']);
Route::get('pegawai', [HomeController::class, 'pegawai']);

Route::get('admin/data/user', [UserController::class, 'index']);
Route::get('admin/data/user/create', [UserController::class, 'tambah']);
Route::post('admin/data/user/create', [UserController::class, 'simpan']);
Route::get('admin/data/user/edit/{id}', [UserController::class, 'edit']);
Route::post('admin/data/user/edit/{id}', [UserController::class, 'update']);
Route::get('admin/data/user/delete/{id}', [UserController::class, 'hapus']);

Route::get('admin/data/pegawai', [PegawaiController::class, 'index']);
Route::get('admin/data/pegawai/create', [PegawaiController::class, 'tambah']);
Route::post('admin/data/pegawai/create', [PegawaiController::class, 'simpan']);
Route::get('admin/data/pegawai/edit/{id}', [PegawaiController::class, 'edit']);
Route::post('admin/data/pegawai/edit/{id}', [PegawaiController::class, 'update']);
Route::get('admin/data/pegawai/delete/{id}', [PegawaiController::class, 'hapus']);
Route::get('admin/data/pegawai/detail/{id}', [PegawaiController::class, 'detail']);

Route::get('admin/data/monitoring', [MonitoringController::class, 'index']);
Route::get('admin/data/monitoring/print/{id}', [MonitoringController::class, 'print']);


Route::get('pegawai/data/okb', [OKBController::class, 'index']);
Route::get('pegawai/data/okb/create', [OKBController::class, 'tambah']);
Route::post('pegawai/data/okb/create', [OKBController::class, 'simpan']);
Route::get('pegawai/data/okb/edit/{id}', [OKBController::class, 'edit']);
Route::post('pegawai/data/okb/edit/{id}', [OKBController::class, 'update']);
Route::get('pegawai/data/okb/delete/{id}', [OKBController::class, 'hapus']);
Route::get('pegawai/data/okb/print/{id}', [OKBController::class, 'print']);

Route::get('pegawai/data/spt/cari', [SptController::class, 'cari']);
Route::get('pegawai/data/spt', [SptController::class, 'index']);
Route::get('pegawai/data/spt/create', [SptController::class, 'tambah']);
Route::post('pegawai/data/spt/create', [SptController::class, 'simpan']);
Route::get('pegawai/data/spt/edit/{id}', [SptController::class, 'edit']);
Route::post('pegawai/data/spt/edit/{id}', [SptController::class, 'update']);
Route::get('pegawai/data/spt/delete/{id}', [SptController::class, 'hapus']);


Route::get('admin/data/laporan', [LaporanController::class, 'laporan']);
Route::get('admin/data/laporan/pegawai', [LaporanController::class, 'laporan_pegawai']);
Route::get('admin/data/laporan/okb', [LaporanController::class, 'laporan_okb']);

Route::get('admin/data/pegawai/cari', [PegawaiController::class, 'cari']);
