<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class thuonghieu extends Model
{
    const     CREATED_AT    = 'th_ngaytaomoi';
    const     UPDATED_AT    = 'th_ngaycapnhat';
    
    protected $table        = 'thuonghieu';
    protected $fillable     = ['th_ten','th_ngaytaomoi','th_ngaycapnhat','th_nhan','th_hienthi','th_hinh'];

    protected $guarded      = ['th_id'];
    protected $primaryKey   = 'th_id';

    public function sanpham(){
        return $this->hasMany('App\sanpham', 'th_id', 'th_id');
    }
   
}
