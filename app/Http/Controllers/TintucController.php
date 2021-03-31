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
use App\danhmuctin;
use App\tintuc;
use Carbon\Carbon;
use DateTime;
session_start();

class TintucController extends Controller
{
   
     public function tintuc(Request $request,$tintuc_nhan){
     
        $tintuc=tintuc::with('danhmuctin')->where('tintuc_hienthi',0)->where('tintuc_nhan',$tintuc_nhan)->take(1)->get();
        foreach ($tintuc as $key => $dstintuc) {
          //seo 
        $meta_desc = $dstintuc->tintuc_ten; 
        $meta_keywords = $dstintuc->tintuc_nhan;
        $meta_title = $dstintuc->tintuc_ten;
        $tintuc_id=$dstintuc->tintuc_id;
        $dmt_id=$dstintuc->dmt_id;
        $image_og= url('upload/tintuc/'.$dstintuc->tintuc_hinh);
        $url_canonical = $request->url();
        //--seo 
        }
       $tinlienquan=tintuc::with('danhmuctin')->where('tintuc_hienthi',0)->where('dmt_id',$dmt_id)->whereNotIn('tintuc_nhan',[$tintuc_nhan])->take(5)->get();
        return view('trang.tintuc.tintuc')->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('tintuc',$tintuc)->with('tinlienquan',$tinlienquan)->with('image_og',$image_og);
    }

       public function gettao_tintuc(){
     $dmt=danhmuctin::all();
    	return view('quanly.banhang.tintuc.tao_tintuc')->with('dmt',$dmt);
    }
    
    public function getdanhsach_tintuc(){
      
          $tintuc=tintuc::all();
        return view('quanly.banhang.tintuc.danhsach_tintuc')->with('tintuc',$tintuc);
    }
 public function getsua_tintuc($tintuc_id){
  
          $tintuc=tintuc::find($tintuc_id);
        $dmt=danhmuctin::all();
        return view('quanly.banhang.tintuc.sua_tintuc')->with('dmt',$dmt)->with('tintuc',$tintuc);
    }
    public function posttao_tintuc(Request $request){
         $this->validate($request,[
                'tintuc_noidung'=> 'required',
                'tintuc_tomtat'=> 'required',
                'tintuc_ten'=> 'required|unique:tintuc,tintuc_ten|min:5|max:100',

              

        ],
        [
                'tintuc_noidung.required'=>'Bạn chưa nhập nội dung tin tức',
                'tintuc_tomtat.required'=>'Bạn chưa nhập tóm tắt tin tức',
                'tintuc_ten.required'=>'Bạn chưa nhập tên tin tức',
                'tintuc_ten.unique'=>'Tên tin tức  đã tồn tại',
                'tintuc_ten.min'=>'Tên tin tức phải có độ dài từ 5 cho đến 100 ký tự',
                'tintuc_ten.max'=>'Tên tin tức phải có độ dài từ 5 cho đến 100 ký tự',
               
        ]);
     try{
    
   
     
        $get_image = $request->file('tintuc_hinh');
         if($get_image){
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/tintuc',$new_image);
            $tintuc=new tintuc();
            $tintuc->tintuc_ten=$request->tintuc_ten;
            $tintuc->tintuc_nhan =Str::slug($request->tintuc_ten, '-');
            $tintuc->tintuc_noidung=$request->tintuc_noidung;
            $tintuc->tintuc_tomtat=$request->tintuc_tomtat;
            $tintuc->dmt_id=$request->dmt_id;
            $tintuc->tintuc_hienthi=0;
            $tintuc->tintuc_hinh=$new_image;
            $tintuc->save();
        return redirect('banhang/danhsach-tintuc')->with('thongbao','Tạo tin tức thành công');
          
        }
        else{
        return redirect('banhang/danhsach-tintuc')->with('thongbao','Tạo tin tức không thành công');
            }}
              catch (\Exception $e)  {
     
      return redirect('banhang/danhsach-tintuc')->with('thongbao','Tạo tin tức không thành công');
}
    }



     public function postsua_tintuc(Request $request,$tintuc_id){
         $this->validate($request,[
                'tintuc_noidung'=> 'required',
                'tintuc_tomtat'=> 'required',
                'tintuc_ten'=> 'required|min:5|max:100',

              

        ],
        [
                'tintuc_noidung.required'=>'Bạn chưa nhập nội dung tin tức',
                'tintuc_tomtat.required'=>'Bạn chưa nhập tóm tắt tin tức',
                'tintuc_ten.required'=>'Bạn chưa nhập tên tin tức',
                'tintuc_ten.min'=>'Tên tin tức phải có độ dài từ 5 cho đến 100 ký tự',
                'tintuc_ten.max'=>'Tên tin tức phải có độ dài từ 5 cho đến 100 ký tự',
               
        ]);
            try{
        
        $tintuc=tintuc::find($tintuc_id);
        $tintuc->tintuc_ten=$request->tintuc_ten;
        $tintuc->tintuc_nhan =Str::slug($request->tintuc_ten, '-');
        $tintuc->tintuc_noidung=$request->tintuc_noidung;
        $tintuc->tintuc_tomtat=$request->tintuc_tomtat;
        $tintuc->dmt_id=$request->dmt_id;
        $get_image = $request->file('tintuc_hinh');
     
        if($get_image){
          
           
          
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/tintuc',$new_image);
            unlink('upload/tintuc/'.$tintuc->tintuc_hinh);
            $tintuc->tintuc_hinh=$new_image;
           
           
          

        }
      
        $tintuc->save();
        return redirect('banhang/danhsach-tintuc')->with('thongbao','Sửa thông tin tin tức thành công');}
        catch (\Exception $e)  {
     
          return redirect('banhang/danhsach-tintuc')->with('thongbao','Tên tin tức đã tồn tại');
}
 
    }



     public function getxoa_tintuc($tintuc_id){
        $tintuc=tintuc::find($tintuc_id);

         try {
            $tintuc_hinh=$tintuc->tintuc_hinh;
            if($tintuc_hinh){
               unlink('upload/tintuc/'.$tintuc->tintuc_hinh);
            }
          $tintuc->delete();
        return redirect('banhang/danhsach-tintuc')->with('thongbao','Bạn đã xóa tin tức thành công');
  
} catch (\Exception $e)  {
     
        return redirect('banhang/danhsach-tintuc')->with('thongbao','Bạn đã xóa tin tức không thành công (do tin tức có ràng buộc dữ liệu)');
}
       
    }
     public function khongkichhoat_tintuc($tintuc_id){
      
        DB::table('tintuc')->where('tintuc_id',$tintuc_id)->update(['tintuc_hienthi'=>1]);
       return redirect('banhang/danhsach-tintuc')->with('thongbao','Không kích hoạt tin tức thành công');

    }
    public function kichhoat_tintuc($tintuc_id){
      
        DB::table('tintuc')->where('tintuc_id',$tintuc_id)->update(['tintuc_hienthi'=>0]);
        return redirect('banhang/danhsach-tintuc')->with('thongbao','Kích hoạt tin tức thành công');
    }
}
