<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class sanpham extends Model
{
    const     CREATED_AT    = 'sp_ngaytaomoi';
    const     UPDATED_AT    = 'sp_ngaycapnhat';

    protected $table        = 'sanpham';
    protected $fillable     = ['sp_ten', 'sp_dongianhap', 'sp_hinh','sp_soluong','sp_thongtin','sp_ngaytaomoi','sp_ngaycapnhat','kho_id','khuyenmai_id','sp_nhan','th_id','sp_hienthi','ncc_id','sp_mausac','xx_id','sp_tskt'];
    protected $guarded      = ['sp_id'];

    protected $primaryKey   = 'sp_id';
    
    protected $dates        = ['sp_ngaytaomoi', 'sp_ngaycapnhat'];
    protected $dateFormat   = 'Y-m-d H:i:s';
    
    public function thuonghieu(){
        return $this->belongsTo('App\thuonghieu', 'th_id', 'th_id');
    }
       public function khuyenmai(){
        return $this->belongsTo('App\khuyenmai', 'khuyenmai_id', 'khuyenmai_id');
    }
        public function xuatxu(){
        return $this->belongsTo('App\xuatxu', 'xx_id', 'xx_id');
    }
    public function khohang(){
        return $this->belongsTo('App\khohang', 'kho_id', 'kho_id');
    } 
     public function nhacungcap(){
        return $this->belongsTo('App\nhacungcap', 'ncc_id', 'ncc_id');
    } 
      public function hinhanh(){
        return $this->hasMany('App\hinhanh', 'sp_id', 'sp_id');
    }
      public function danhgia(){
        return $this->hasMany('App\danhgia', 'sp_id', 'sp_id');
    }
    public function binhluan(){
        return $this->hasMany('App\binhluan', 'sp_id', 'sp_id');
    }
    
}
