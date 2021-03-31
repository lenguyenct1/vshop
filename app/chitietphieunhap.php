<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class chitietphieunhap extends Model
{
    public    $timestamps   = false;

    protected $table        = 'chitietphieunhap';
    protected $fillable     = ['ctpn_soluong', 'ctpn_dongia'];
    protected $guarded      = ['pnk_id', 'mausp_id'];

    protected $primaryKey   = ['pnk_id', 'mausp_id'];
   

    public function mausanpham(){
        return $this->belongsTo('App\mausanpham', 'mausp_id', 'mausp_id');
    }
    public function phieunhapkho(){
        return $this->belongsTo('App\phieunhapkho', 'pnk_id', 'pnk_id');
    }
}
