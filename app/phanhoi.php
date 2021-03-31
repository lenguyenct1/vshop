<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class phanhoi extends Model
{
    public    $timestamps   = false;

    protected $table        = 'phanhoi';
    protected $fillable     = ['id', 'bl_id','ph_noidung','ph_ngay'];
    protected $guarded      = ['ph_id'];

    protected $primaryKey   = 'ph_id';
   
   public function binhluan(){
        return $this->belongsTo('App\binhluan', 'bl_id', 'bl_id');
    }
      public function nhanvien(){
        return $this->belongsTo('App\nhanvien', 'id', 'id');
    }
     
 
}
