<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class chitiettrancc extends Model
{
    public    $timestamps   = false;

    protected $table        = 'chitiettrancc';
    protected $fillable     = ['ctncc_soluong', 'ctncc_dongia'];
    protected $guarded      = ['ptncc_id', 'sp_id'];

    protected $primaryKey   = ['ptncc_id', 'sp_id'];
   

    public function mausanpham(){
        return $this->belongsTo('App\mausanpham', 'mausp_id', 'mausp_id');
    }
    public function phieutrancc(){
        return $this->belongsTo('App\phieutrancc', 'ptncc_id', 'ptncc_id');
    }
}
