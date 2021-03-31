<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class vanchuyen extends Model
{
    const     CREATED_AT    = 'vc_ngaytaomoi';
    const     UPDATED_AT    = 'vc_ngaycapnhat';
    
    protected $table        = 'vanchuyen';
    protected $fillable     = ['vc_ten','vc_chiphi','vcthongtin','vc_ngaytaomoi','vc_ngaycapnhat','vc_hienthi'];

    protected $guarded      = ['vc_id'];
    protected $primaryKey   = 'vc_id';

    public function dondathang(){
        return $this->hasMany('App\dondathang', 'vc_id', 'vc_id');
    }
   
}
