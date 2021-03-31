<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class thanhtoan extends Model
{
    public $timestamps = false;
    
    protected $table        = 'thanhtoan';
    protected $fillable     = ['tt_ten'];

    protected $guarded      = ['tt_id'];
    protected $primaryKey   = 'tt_id';
   
 public function dondathang(){
        return $this->hasMany('App\dondathang', 'tt_id', 'tt_id');
    }
   
}
