<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class mau extends Model
{
    public $timestamps = false;
    
    protected $table        = 'mau';
    protected $fillable     = ['mau_ten','mau_giatri'];

    protected $guarded      = ['mau_id'];
    protected $primaryKey   = 'mau_id';
   
 public function mausanpham(){
        return $this->belongsTo('App\mausanpham', 'mausp_id', 'mausp_id');
    }
   
}
