<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jadwal extends Model
{
    use HasFactory;
    protected $table = 'jadwal';
    protected $guarded = ['id'];
    Public function pegawai()
    {
    return $this->belongsTo(Pegawai::class, 'pegawai_id');
    }
}
