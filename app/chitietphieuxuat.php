<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class chitietphieuxuat extends Model
{
    public    $timestamps   = false;

    protected $table        = 'chitietphieuxuat';
    protected $fillable     = ['ctpx_soluong', 'ctpx_dongia'];
    protected $guarded      = ['pxk_id', 'mausp_id'];

    protected $primaryKey   = ['pxk_id', 'mausp_id'];
 

    public function mausanpham(){
        return $this->belongsTo('App\mausanpham', 'mausp_id', 'mausp_id');
    }
    public function phieuxuatkho(){
        return $this->belongsTo('App\phieuxuatkho', 'pxk_id', 'pxk_id');
    }
}
