<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class binhluan extends Model
{
    public    $timestamps   = false;

    protected $table        = 'binhluan';
    protected $fillable     = ['sp_id', 'kh_id','bl_noidung','bl_ngay','bl_trangthai'];
    protected $guarded      = ['bl_id'];

    protected $primaryKey   = 'bl_id';
   
   public function sanpham(){
        return $this->belongsTo('App\sanpham', 'sp_id', 'sp_id');
    }
       public function khachhang(){
        return $this->belongsTo('App\khachhang', 'kh_id', 'kh_id');
    }
       public function phanhoi(){
        return $this->hasMany('App\phanhoi', 'bl_id', 'bl_id');
    }
 
}
