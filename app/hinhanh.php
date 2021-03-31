<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class hinhanh extends Model
{
    public $timestamps = false;
    
    protected $table        = 'hinhanh';
    protected $fillable     = ['hinhanh_ten','hinhanh_hinh','sp_id','mausp_id'];

    protected $guarded      = ['hinhanh_id'];
    protected $primaryKey   = 'hinhanh_id';
   
 public function sanpham(){
        return $this->belongsTo('App\hinhanh', 'sp_id', 'sp_id');
    }
     public function mausanpham(){
        return $this->belongsTo('App\hinhanh', 'mausp_id', 'mausp_id');
    }
   
}
