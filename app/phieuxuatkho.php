<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class phieuxuatkho extends Model
{
    public    $timestamps   = false;

    protected $table        = 'phieuxuatkho';
    protected $fillable     = ['id', 'ddh_id','pxk_ngayxuatkho'];
    protected $guarded      = ['pxk_id'];
    protected $primaryKey   = 'pxk_id';

    protected $dates        = ['pxk_ngayxuatkho'];
     protected $dateFormat   = 'Y-m-d H:i:s';

       public function user(){
        return $this->belongsTo('App\User', 'id', 'id');
    }
	public function dondathang(){
        return $this->belongsTo('App\dondathang', 'pxk_id', 'pxk_id');
    }
}
