<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class danhgia extends Model
{
    public $timestamps = false;
    
    protected $table        = 'danhgia';
    protected $fillable     = ['dg_ten','sp_id'];

    protected $guarded      = ['dg_id'];
    protected $primaryKey   = 'dg_id';
   
 public function sanpham(){
        return $this->belongsTo('App\sanpham', 'sp_id', 'sp_id');
    }
   
}
