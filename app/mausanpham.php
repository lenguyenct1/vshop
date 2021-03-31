<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class mausanpham extends Model
{
    public $timestamps = false;
    
    protected $table        = 'mausanpham';
    protected $fillable     = ['mausp_ten','mausp_soluong','sp_id','mau_id','mausp_hienthi'];

    protected $guarded      = ['mausp_id'];
    protected $primaryKey   = 'mausp_id';
   
 public function sanpham(){
        return $this->belongsTo('App\sanpham', 'sp_id', 'sp_id');
    }
     public function hinhanh(){
        return $this->hasMany('App\hinhanh', 'mausp_id', 'mausp_id');
    }
     
     
   
}
