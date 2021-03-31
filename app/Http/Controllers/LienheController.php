<?php

namespace App\Http\Controllers;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Auth;
use Illuminate\Support\Facades\Redirect;
use App\thuonghieu;
use App\khohang;
use App\sanpham;
use App\nhacungcap;
use Cart;
use App\dondathang;
use App\mausanpham;
use App\mau;
use App\hinhanh;
use App\khachhang;
use App\phieuxuatkho;
use App\lienhe;
use Carbon\Carbon;
use DateTime;
session_start();

class LienheController extends Controller
{
     public function lien_he(Request $request){
      //seo 
        $meta_desc = "Liên hệ"; 
        $meta_keywords = "Liên hệ";
        $meta_title = "Liên hệ";
        $url_canonical = $request->url();
        //--seo 
        $lienhe=lienhe::find(1);
        return view('trang.lienhe.tranglienhe')->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('lienhe',$lienhe);
    }
   
       public function gettao_lienhe(){
     $lienhe=lienhe::find(1);
    	return view('quanly.banhang.lienhe.tao_lienhe')->with('lienhe',$lienhe);
    }

    public function posttao_lienhe(Request $request){
         $this->validate($request,[
                'lienhe_thongtin'=> 'required',
                'lienhe_bando'=> 'required',
                'lienhe_fanpage'=> 'required',

              

        ],
        [
                'lienhe_thongtin.required'=>'Bạn chưa nhập thông tin liên hệ',
                'lienhe_bando.required'=>'Bạn chưa nhập bản đồ',
                'lienhe_fanpage.required'=>'Bạn chưa nhập fanpage',
               
        ]);
     try{
    
   
     
        $get_image = $request->file('lienhe_hinh');
         if($get_image){
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/lienhe',$new_image);
            $lienhe=new lienhe();
            $lienhe->lienhe_thongtin=$request->lienhe_thongtin;
            $lienhe->lienhe_bando=$request->lienhe_bando;
            $lienhe->lienhe_fanpage=$request->lienhe_fanpage;
            $lienhe->lienhe_hinh=$new_image;
            $lienhe->save();
        return redirect('banhang/tao-lienhe')->with('thongbao','Tạo thông tin liên hệ website thành công');
          
        }
        else{
        return redirect('banhang/tao-lienhe')->with('thongbao','Tạo thông tin liên hệ website không thành công');
            }
    }

      catch (\Exception $e)  {
     
      return redirect('banhang/tao-lienhe')->with('thongbao','Tạo thông tin liên hệ website không thành công');
}
}



     public function postsua_lienhe(Request $request,$lienhe_id){
          $this->validate($request,[
                'lienhe_thongtin'=> 'required',
                'lienhe_bando'=> 'required',
                'lienhe_fanpage'=> 'required',

              

        ],
        [
                'lienhe_thongtin.required'=>'Bạn chưa nhập thông tin liên hệ',
                'lienhe_bando.required'=>'Bạn chưa nhập bản đồ',
                'lienhe_fanpage.required'=>'Bạn chưa nhập fanpage',
               
        ]);
            try{
       
        $lienhe=lienhe::find($lienhe_id);
        $lienhe->lienhe_thongtin=$request->lienhe_thongtin;
        $lienhe->lienhe_bando=$request->lienhe_bando;
        $lienhe->lienhe_fanpage=$request->lienhe_fanpage;
        $get_image = $request->file('lienhe_hinh');
     
        if($get_image){
          
           
          
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/lienhe',$new_image);
            unlink('upload/lienhe/'.$lienhe->lienhe_hinh);
            $lienhe->lienhe_hinh=$new_image;
           
           
          

        }
      
        $lienhe->save();
        return redirect('banhang/tao-lienhe')->with('thongbao','Sửa thông tin liên hệ thành công');}
        catch (\Exception $e)  {
     
          return redirect('banhang/tao-lienhe')->with('thongbao','Sửa thông tin liên hệ không thành công');
}
 
    }
}
