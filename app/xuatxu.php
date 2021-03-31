<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class xuatxu extends Model
{
    public $timestamps = false;
    
    protected $table        = 'xuatxu';
    protected $fillable     = ['xx_ten'];

    protected $guarded      = ['xx_id'];
    protected $primaryKey   = 'xx_id';
   
   public function sanpham(){
        return $this->hasMany('App\sanpham', 'xx_id', 'xx_id');
    }
   
}
