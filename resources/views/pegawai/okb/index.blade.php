@extends('layouts.app')
@push('css')
    
@endpush
@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-header">
            <i class="ion ion-clipboard"></i><h3 class="box-title">Data Objek Kendaraan Bermotor</h3>

            <div class="box-tools">
              <a href="/pegawai/data/okb/create" class="btn btn-flat btn-sm btn-primary"><i class="fa fa-plus"></i> Tambah Data</a>
            </div>
          </div>
          <!-- /.box-header -->
          <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
              <tbody><tr>
                <th>No</th>
                <th>Tanggal</th>
                <th>Nama</th>
                <th>Alamat</th>
                <th>Nopol</th>
                <th>Roda</th>
                <th>Nama Sesuai STNK</th>
                <th>Masa Berlaku</th>
                <th>No HP</th>
                <th>Dokumentasi</th>
                <th>Aksi</th>
              </tr>
              @foreach ($data as $key => $item)
              <tr>
                <td>{{1 + $key}}</td>
                <td>{{$item->created_at}}</td>
                <td>{{$item->nama}}</td>
                <td>{{$item->alamat}}</td>
                <td>{{$item->nopol}}</td>
                <td>{{$item->roda}}</td>
                <td>{{$item->namapemiliksesuaistnk}}</td>
                <td>{{$item->masalakupajak}}</td>
                <td>{{$item->nohp}}</td>
                <td>
                  <a href="/storage/uploads/{{$item->dokumentasi}}" target="_blank">lihat</a>
                </td>
                <td>
                  <a href="/pegawai/data/okb/print/{{$item->id}}" class="btn btn-flat btn-sm btn-primary" target="_blank"><i class="fa fa-print"></i> print</a>
                  <a href="/pegawai/data/okb/edit/{{$item->id}}" class="btn btn-flat btn-sm btn-primary"><i class="fa fa-edit"></i> Edit</a>
                  <a href="/pegawai/data/okb/delete/{{$item->id}}" class="btn btn-flat btn-sm btn-danger" onclick="return confirm('Yakin ingin dihapus?');"><i class="fa fa-trash"></i> Delete</a>
                </td>
              </tr>
              @endforeach
            </tbody></table>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
</div>

@endsection
@push('js')

@endpush