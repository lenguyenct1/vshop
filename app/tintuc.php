<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tintuc extends Model
{
    public    $timestamps   = false;

    
    protected $table        = 'tintuc';
    protected $fillable     = ['tintuc_ten','tintuc_tomtat','tintuc_noidung','tintuc_hinh','tintuc_nhan','tintuc_hienthi','dmt_id'];

    protected $guarded      = ['tintuc_id'];
    protected $primaryKey   = 'tintuc_id';

    public function danhmuctin(){
        return $this->belongsTo('App\danhmuctin', 'dmt_id', 'dmt_id');
    }
   
}
