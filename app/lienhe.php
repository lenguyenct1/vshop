<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lienhe extends Model
{
    public $timestamps = false;
    
    protected $table        = 'lienhe';
    protected $fillable     = ['lienhe_thongtin','lienhe_bando','lienhe_hinh','lienhe_fanpage'];

    protected $guarded      = ['lienhe_id'];
    protected $primaryKey   = 'lienhe_id';
   

   
}
