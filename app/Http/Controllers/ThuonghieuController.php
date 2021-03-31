<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Redirect;
use App\thuonghieu;
use App\nhacungcap;
session_start();

class ThuonghieuController extends Controller
{
    
    public function getdanhsach_th(){
      
          $th=thuonghieu::all();
    	return view('quanly.kho.thuonghieu.danhsach_th')->with('th',$th);
    }
   
     


    public function gettao_th(){
     
    	return view('quanly.kho.thuonghieu.tao_th');
    }
     
     public function posttao_th(Request $request){
        $this->validate($request,[
                'th_ten'=> 'required|unique:thuonghieu,th_ten|min:1|max:100',
              

        ],
        [
                'th_ten.required'=>'Bạn chưa nhập tên thương hiệu',
                'th_ten.unique'=>'Tên thương hiệu đã tồn tại',
                'th_ten.min'=>'Tên thương hiệu phải có độ dài từ 1 cho đến 100 ký tự',
                'th_ten.max'=>'Tên thương hiệu phải có độ dài từ 1 cho đến 100 ký tự',
               
        ]);

         $get_image = $request->file('th_hinh');
         if($get_image){
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/thuonghieu',$new_image);
           
           
           
          
        $th =new thuonghieu;
        $th->th_ten=$request->th_ten;
        $th->th_nhan =Str::slug($request->th_ten, '-');
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $th->th_ngaytaomoi = now();
        $th->th_ngaycapnhat= now();
        $th->th_hienthi=0;
        $th->th_hinh=$new_image;
        $th->save();
        return redirect('banhang/danhsach-th')->with('thongbao','Tạo thương hiệu thành công');
          
        }
        else{
        return redirect('banhang/danhsach-slider')->with('thongbao','Tạo thương hiệu không thành công');
            }
   
      
        
    }
     public function getsua_th($th_id){
  
          $th=thuonghieu::find($th_id);
        return view('quanly.kho.thuonghieu.sua_th',['th'=>$th]);
    }
    
  public function postsua_th(Request $request,$th_id){
     $this->validate($request,[
                'th_ten'=> 'required|min:1|max:100',
              

        ],
        [
                'th_ten.required'=>'Bạn chưa nhập tên thương hiệu',
                'th_ten.min'=>'Tên thương hiệu phải có độ dài từ 1 cho đến 100 ký tự',
                'th_ten.max'=>'Tên thương hiệu phải có độ dài từ 1 cho đến 100 ký tự',
               
        ]);
            try{
       
        $th=thuonghieu::find($th_id);
        $th->th_ten=$request->th_ten;
        $th->th_nhan =Str::slug($request->th_ten, '-');
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $th->th_ngaycapnhat= now();
        $get_image = $request->file('th_hinh');
     
        if($get_image){
          
           
          
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/thuonghieu',$new_image);
            unlink('upload/thuonghieu/'.$th->th_hinh);
            $th->th_hinh=$new_image;
        }
      
        $th->save();
        return redirect('banhang/danhsach-th')->with('thongbao','Sửa thông tin thương hiệu thành công');}
         catch (\Exception $e)  {
     
   return redirect('banhang/danhsach-th')->with('thongbao','Tên thương hiệu đã tồn tại');
}
 
    }
    
        public function getxoa_th($th_id){
        $th=thuonghieu::find($th_id);

         try {
            $th_hinh=$th->th_hinh;
             if($th_hinh){
               unlink('upload/thuonghieu/'.$th->th_hinh);
            }
          $th->delete();
        return redirect('banhang/danhsach-th')->with('thongbao','Bạn đã xóa thương hiệu thành công');
  
} catch (\Exception $e)  {
     
        return redirect('banhang/danhsach-th')->with('thongbao','Bạn đã xóa thương hiệu không thành công (do thương hiệu có ràng buộc dữ liệu)');
}
       
    }
     public function Khongkichhoat_th($th_id){
      
        DB::table('thuonghieu')->where('th_id',$th_id)->update(['th_hienthi'=>1]);
        $sp= DB::table('sanpham')->where('th_id',$th_id)->get();
         foreach ($sp as $key => $value) {
             $data1 = array();
             $data1['sp_hienthi'] =1;
              DB::table('sanpham')->where('sp_id',$value->sp_id)->update($data1); 

           
        }
       return redirect('banhang/danhsach-th')->with('thongbao','Không kích hoạt thương hiệu thành công');


    }
    public function kichhoat_th($th_id){
      
        DB::table('thuonghieu')->where('th_id',$th_id)->update(['th_hienthi'=>0]);
         $sp= DB::table('sanpham')->where('th_id',$th_id)->get();
         foreach ($sp as $key => $value) {
             $data1 = array();
             if($value->sp_soluong>0){
             $data1['sp_hienthi'] =0;
           }
           else{
               $data1['sp_hienthi'] =1;
           }

              DB::table('sanpham')->where('sp_id',$value->sp_id)->update($data1); 

           
        }
        return redirect('banhang/danhsach-th')->with('thongbao','Kích hoạt thương hiệu thành công');
    }
  
}
