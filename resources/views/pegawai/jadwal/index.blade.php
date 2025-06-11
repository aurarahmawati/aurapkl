@extends('layouts.app')
@push('css')

@endpush
@section('content')

<div class="row">
  <div class="col-md-12">
    <div class="box box-primary">
      <div class="box-header">
        <i class="ion ion-clipboard"></i>
        <h3 class="box-title">Data Jadwal DOOR TO DOOR</h3>

        <div class="box-tools">


        </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body table-responsive no-padding">
        <table class="table table-hover">
          <tbody>
           <tr style="background-color:#FFD700">
              <th style="border: 1px solid black">No</th>
              <th style="border: 1px solid black">Tanggal</th>
              <th style="border: 1px solid black">Waktu Mulai</th>
              <th style="border: 1px solid black">Waktu Selesai</th>
              <th style="border: 1px solid black">Keterangan</th>
              <th style="border: 1px solid black">Lokasi</th>
              <th style="border: 1px solid black">Status</th>
              <th style="border: 1px solid black">Aksi</th>
            </tr>
            @foreach ($pegawai as $key => $item)
            <tr>
              <td style="border: 1px solid black">{{1 + $key}}</td>
              <td style="border: 1px solid black">{{$item->tgl_kegiatan}}</td>
              <td style="border: 1px solid black">{{$item->waktu_mulai}}</td>
              <td style="border: 1px solid black">{{$item->waktu_selesai}}</td>
              <td style="border: 1px solid black">{{$item->keterangan}}</td>
              <td style="border: 1px solid black">{{$item->lokasi}}</td>
              <td style="border: 1px solid black">{{$item->status}}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->
  </div>
</div>

@endsection
@push('js')

@endpush