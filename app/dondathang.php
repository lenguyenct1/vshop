<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class dondathang extends Model
{
    public    $timestamps   = false;

    protected $table        = 'dondathang';
    protected $fillable     = ['kh_id', 'ddh_trangthai','ddh_ngaylap','ddh_ngayxacnhan','tt_id','ddh_diachi','ddh_sdt','ddh_tong'];
    protected $guarded      = ['ddh_id'];
    protected $primaryKey   = 'ddh_id';

    protected $dates        = ['ddh_ngaylap'];
    protected $dateFormat   = 'Y-m-d H:i:s';
    
    public function khachhang(){
        return $this->belongsTo('App\khachhang', 'kh_id', 'kh_id');
    }
    public function user(){
        return $this->belongsTo('App\User', 'id', 'id');
    }
   
     public function thanhtoan(){
        return $this->belongsTo('App\thanhtoan', 'tt_id', 'tt_id');
    }
     public function vanchuyen(){
        return $this->belongsTo('App\vanchuyen', 'vc_id', 'vc_id');
    }
}
