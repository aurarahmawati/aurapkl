@extends('layouts.app')
@push('css')

@endpush
@section('content')

<div class="row">
    <div class="col-md-12">
        <a href="/admin/data/jadwal" class="btn btn-flat btn-warning"><i class="fa fa-backward"></i> Kembali</a> <br /> <br />
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="box box-primary">
            <div class="box-header">
                <i class="ion ion-clipboard"></i>
                <h3 class="box-title">Edit Data</h3>
            </div>
            <!-- /.box-header -->
            <form class="form-horizontal" method="post" action="/admin/data/jadwal/edit/{{$data->id}}">
                @csrf
                <div class="box-body">
                <div class="form-group">
                        <label class="col-sm-2 control-label">Tanggal</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" name="tgl_kegiatan" required value="{{$data->tgl_kegiatan}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Waktu Mulai</label>
                        <div class="col-sm-10">
                            <input type="time" class="form-control" name="waktu_mulai" value="{{$data->waktu_mulai}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Waktu Selesai</label>
                        <div class="col-sm-10">
                            <input type="time" class="form-control" name="waktu_selesai" required value="{{$data->waktu_selesai}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Keterangan</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="keterangan" required value="{{$data->keterangan}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Lokasi</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="lokasi" required value="{{$data->lokasi}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Status</label>
                        <div class="col-sm-10">
                            <select name="status" class="form-control" required>
                                <option value="">-pilih-</option>
                                <option value="Belum Di Proses" {{$data->status == 'Belum Di Proses' ? 'selected':''}}>Belum Di Proses</option>
                                <option value="Di Proses" {{$data->status == 'Di Proses' ? 'selected':''}}>Di Proses</option>
                                <option value="Selesai" {{$data->status == 'Selesai' ? 'selected':''}}>Selesai</option>
                            </select>
                        </div>
                    </div>
                    
                </div>
<!-- /.box-body -->
<div class="box-footer">
    <button type="submit" class="btn btn-primary pull-right" onclick="return confirm('Yakin sudah sesuai?');"><i class="fa fa-save"></i> Update Data</button>
</div>
<!-- /.box-footer -->
</form>
<!-- /.box-body -->
</div>
<!-- /.box -->
</div>
</div>
@endsection
@push('js')

@endpush