@extends('layouts.app')
@push('css')
    
@endpush
@section('content')

<form method="get" action="/admin/data/pegawai/cari">
  @csrf
  <div class="input-group input-group-md hidden-xs" style="width: 300px;">
    <input type="text" name="cari" class="form-control pull-right" placeholder="cari data">

    <div class="input-group-btn">
      <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
    </div>
  </div>
</form>

<div class="row">
    <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-header">
            <i class="ion ion-clipboard"></i><h3 class="box-title">Data Pegawai</h3>

            <div class="box-tools">
              <a href="/admin/data/pegawai/create" class="btn btn-flat btn-sm btn-primary"><i class="fa fa-plus"></i> Tambah Data</a>
            </div>
          </div>
          <!-- /.box-header -->
          <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
              <tbody><tr>
                <th>No</th>
                <th>Nik</th>
                <th>Nip</th>
                <th>Nama</th>
                <th>Jabatan</th>
                <th>Aksi</th>
              </tr>
              @foreach ($data as $key => $item)
              <tr>
                <td>{{1 + $key}}</td>
                <td>{{$item->nik}}</td>
                <td>{{$item->nip}}</td>
                <td>{{$item->nama}}</td>
                <td>{{$item->jabatan}}</td>
                <td>
                  <a href="/admin/data/pegawai/detail/{{$item->id}}" class="btn btn-flat btn-sm btn-warning"><i class="fa fa-eye"></i></a>
                  <a href="/admin/data/pegawai/edit/{{$item->id}}" class="btn btn-flat btn-sm btn-primary"><i class="fa fa-edit"></i></a>
                  <a href="/admin/data/pegawai/delete/{{$item->id}}" class="btn btn-flat btn-sm btn-danger" onclick="return confirm('Yakin ingin dihapus?');"><i class="fa fa-trash"></i></a>
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