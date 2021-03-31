<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class nhacungcap extends Model
{
    public $timestamps = false;

    protected $table = 'nhacungcap';
    protected $fillable     = ['ncc_ten', 'ncc_diachi','ncc_sdt','ncc_email'];

    protected $guarded      = ['ncc_id'];
    protected $primaryKey   = 'ncc_id';

   
}
