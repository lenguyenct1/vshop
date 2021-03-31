<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class danhmuctin extends Model
{
   
    public $timestamps = false;
    protected $table        = 'danhmuctin';
    protected $fillable     = ['dmt_ten','dmt_hienthi','dmt_nhan',];

    protected $guarded      = ['dmt_id'];
    protected $primaryKey   = 'dmt_id';

    public function tintuc(){
        return $this->hasMany('App\tintuc', 'dmt_id', 'dmt_id');
    }
   
}
