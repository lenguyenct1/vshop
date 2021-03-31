<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class chitietdathang extends Model
{
    public    $timestamps   = false;

    protected $table        = 'chitietdathang';
    protected $fillable     = ['ctdh_soluong', 'ctdh_dongia'];
    protected $guarded      = ['ddh_id', 'mausp_id'];

    protected $primaryKey   = ['ddh_id', 'mausp_id'];
   

    public function mausanpham(){
        return $this->belongsTo('App\mausanpham', 'mausp_id', 'mausp_id');
    }
    public function dondathang(){
        return $this->belongsTo('App\dondathang', 'ddh_id', 'ddh_id');
    }
}
