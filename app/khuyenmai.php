<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class khuyenmai extends Model
{
    public $timestamps = false;
    
    protected $table        = 'khuyenmai';
    protected $fillable     = ['khuyenmai_ten','khuyenmai_giatri','id','khuyenmai_ngaybatdau','khuyenmai_ngayketthuc'];

    protected $guarded      = ['khuyenmai_id'];
    protected $primaryKey   = 'khuyenmai_id';
    protected $dates        = ['khuyenmai_ngaybatdau', 'khuyenmai_ngayketthuc'];
    protected $dateFormat   = 'Y-m-d H:i:s';

     public function sanpham(){
        return $this->hasMany('App\sanpham', 'khuyenmai_id', 'khuyenmai_id');
    }
     public function user(){
        return $this->belongsTo('App\User', 'id', 'id');
    }
}
