<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class gia extends Model
{
   public    $timestamps   = false;

    protected $table        = 'gia';
    protected $fillable     = ['gia_giatri', 'gia_ngayapdung'];
    protected $guarded      = ['sp_id'];

    protected $primaryKey   = 'sp_id';

    protected $dates        = ['gia_ngayapdung'];
    protected $dateFormat   = 'Y-m-d H:i:s';
    public function sanpham(){
        return $this->belongsTo('App\sanpham', 'sp_id', 'sp_id');
    }
   
   
}
