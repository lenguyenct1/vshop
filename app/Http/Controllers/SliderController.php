<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Redirect;
use App\slider;
use App\nhacungcap;
session_start();

class SliderController extends Controller
{
    
    public function getdanhsach_slider(){
      
          $slider=slider::all();
      return view('quanly.banhang.slider.danhsach_slider')->with('slider',$slider);
    }
   
     


    public function gettao_slider(){
     
      return view('quanly.banhang.slider.tao_slider');
    }
     
     public function posttao_slider(Request $request){
        $this->validate($request,[
                'slider_ten'=> 'required|unique:slider,slider_ten|min:3|max:100',

              

        ],
        [
                'slider_ten.required'=>'Bạn chưa nhập tên slider',
                'slider_ten.unique'=>'Tên slider đã tồn tại',
                'slider_ten.min'=>'Tên slider phải có độ dài từ 3 cho đến 100 ký tự',
                'slider_ten.max'=>'Tên slider phải có độ dài từ 3 cho đến 100 ký tự',
               
        ]);
   
     
        $get_image = $request->file('slider_hinh');
         if($get_image){
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/slider',$new_image);
            $slider=new slider();
            $slider->slider_ten=$request->slider_ten;
            $slider->slider_hinh=$new_image;
            $slider->slider_hienthi=0;
            $slider->save();
        return redirect('banhang/danhsach-slider')->with('thongbao','Tạo slider thành công');
          
        }
        else{
        return redirect('banhang/danhsach-slider')->with('thongbao','Tạo slider không thành công');
            }
       
        
    }
     public function getsua_slider($slider_id){
  
          $slider=slider::find($slider_id);
        return view('quanly.banhang.slider.sua_slider',['slider'=>$slider]);
    }
    
  public function postsua_slider(Request $request,$slider_id){
     $this->validate($request,[
                'slider_ten'=> 'required|min:3|max:100',
              

        ],
        [
                'slider_ten.required'=>'Bạn chưa nhập tên slider',
                'slider_ten.min'=>'Tên slider phải có độ dài từ 3 cho đến 100 ký tự',
                'slider_ten.max'=>'Tên slider phải có độ dài từ 3 cho đến 100 ký tự',
               
        ]);
            try{
       
        $slider=slider::find($slider_id);
        $slider->slider_ten=$request->slider_ten;
        $get_image = $request->file('slider_hinh');
     
        if($get_image){
          
           
          
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/slider',$new_image);
            unlink('upload/slider/'.$slider->slider_hinh);
            $slider->slider_hinh=$new_image;
           
           
          

        }
      
        $slider->save();
        return redirect('banhang/danhsach-slider')->with('thongbao','Sửa thông tin slider thành công');}
        catch (\Exception $e)  {
     
          return redirect('banhang/danhsach-slider')->with('thongbao','Tên slider đã tồn tại ');
}
 
    }
    
        public function getxoa_slider($slider_id){
        $slider=slider::find($slider_id);

         try {
             $slider_hinh=$slider->slider_hinh;
             if($slider_hinh){
               unlink('upload/slider/'.$slider->slider_hinh);
            }
          $slider->delete();
        return redirect('banhang/danhsach-slider')->with('thongbao','Bạn đã xóa slider thành công');
  
} catch (\Exception $e)  {
     
        return redirect('banhang/danhsach-slider')->with('thongbao','Bạn đã xóa slider không thành công (do slider có ràng buộc dữ liệu)');
}
       
    }
     public function khongkichhoat_slider($slider_id){
      
        DB::table('slider')->where('slider_id',$slider_id)->update(['slider_hienthi'=>1]);
       return redirect('banhang/danhsach-slider')->with('thongbao','Không kích hoạt slider thành công');

    }
    public function kichhoat_slider($slider_id){
      
        DB::table('slider')->where('slider_id',$slider_id)->update(['slider_hienthi'=>0]);
        return redirect('banhang/danhsach-slider')->with('thongbao','Kích hoạt slider thành công');
    }
  
}
