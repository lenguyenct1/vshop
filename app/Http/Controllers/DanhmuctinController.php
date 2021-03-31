<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Redirect;
use App\danhmuctin;
use App\nhacungcap;
use App\tintuc;
session_start();

class DanhmuctinController extends Controller
{
    
    public function getdanhsach_dmt(){
      
          $dmt=danhmuctin::all();
      return view('quanly.banhang.danhmuctin.danhsach_dmt')->with('dmt',$dmt);
    }
   
     public function danhmuc_tintuc(Request $request,$dmt_nhan){
     
        $dmt=danhmuctin::where('dmt_nhan',$dmt_nhan)->take(1)->get();
        foreach ($dmt as $key => $dsdmt) {
          //seo 
        $meta_desc = $dsdmt->dmt_ten; 
        $meta_keywords = $dsdmt->dmt_nhan;
        $meta_title = $dsdmt->dmt_ten;
        $dmt_id=$dsdmt->dmt_id;
        $dmt_ten=$dsdmt->dmt_ten;
        $url_canonical = $request->url();
        //--seo 
        }
        $tintuc=tintuc::with('danhmuctin')->where('tintuc_hienthi',0)->where('dmt_id',$dmt_id)->paginate(5);
        return view('trang.tintuc.danhmuc_tintuc')->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('tintuc',$tintuc)->with('dmt_ten',$dmt_ten);
    }


    public function gettao_dmt(){
     
      return view('quanly.banhang.danhmuctin.tao_dmt');
    }
     
     public function posttao_dmt(Request $request){
        $this->validate($request,[
                'dmt_ten'=> 'required|unique:danhmuctin,dmt_ten|min:5|max:100',

              

        ],
        [
                'dmt_ten.required'=>'Bạn chưa nhập tên danh mục tin',
                'dmt_ten.unique'=>'Tên danh mục tin đã tồn tại',
                'dmt_ten.min'=>'Tên danh mục tin phải có độ dài từ 5 cho đến 100 ký tự',
                'dmt_ten.max'=>'Tên danh mục tin phải có độ dài từ 5 cho đến 100 ký tự',
               
        ]);
   
        $dmt =new danhmuctin;
        $dmt->dmt_ten=$request->dmt_ten;
        $dmt->dmt_nhan =Str::slug($request->dmt_ten, '-');
        $dmt->dmt_hienthi=0;
        $dmt->save();
        return redirect('banhang/danhsach-dmt')->with('thongbao','Tạo danh mục tin thành công');
        
    }
     public function getsua_dmt($dmt_id){
  
          $dmt=danhmuctin::find($dmt_id);
        return view('quanly.banhang.danhmuctin.sua_dmt',['dmt'=>$dmt]);
    }
    
  public function postsua_dmt(Request $request,$dmt_id){
     $this->validate($request,[
                'dmt_ten'=> 'required|min:5|max:100',
              

        ],
        [
                'dmt_ten.required'=>'Bạn chưa nhập tên danh mục tin',
                'dmt_ten.min'=>'Tên danh mục tin phải có độ dài từ 5 cho đến 100 ký tự',
                'dmt_ten.max'=>'Tên danh mục tin phải có độ dài từ 5 cho đến 100 ký tự',
               
        ]);
            try{
       
        $dmt=danhmuctin::find($dmt_id);
        $dmt->dmt_ten=$request->dmt_ten;
        $dmt->dmt_nhan =Str::slug($request->dmt_ten, '-');
        $dmt->save();
        return redirect('banhang/danhsach-dmt')->with('thongbao','Sửa thông tin danh mục tin thành công');}
        catch (\Exception $e)  {
     
          return redirect('banhang/danhsach-dmt')->with('thongbao','Tên danh mục tin đã tồn tại');
}
 
    }
    
        public function getxoa_dmt($dmt_id){
        $dmt=danhmuctin::find($dmt_id);

         try {
          $dmt->delete();
        return redirect('banhang/danhsach-dmt')->with('thongbao','Bạn đã xóa danh mục tin thành công');
  
} catch (\Exception $e)  {
     
        return redirect('banhang/danhsach-dmt')->with('thongbao','Bạn đã xóa danh mục tin không thành công (do danh mục tin có ràng buộc dữ liệu)');
}
       
    }
     public function khongkichhoat_dmt($dmt_id){
      
        DB::table('danhmuctin')->where('dmt_id',$dmt_id)->update(['dmt_hienthi'=>1]);
         $dmt= DB::table('tintuc')->where('dmt_id',$dmt_id)->get();
         foreach ($dmt as $key => $value) {
             $data1 = array();
             $data1['tintuc_hienthi'] =1;
              DB::table('tintuc')->where('tintuc_id',$value->tintuc_id)->update($data1); 

           
        }
       return redirect('banhang/danhsach-dmt')->with('thongbao','Không kích hoạt danh mục tin thành công');

    }
    public function kichhoat_dmt($dmt_id){
        
        DB::table('danhmuctin')->where('dmt_id',$dmt_id)->update(['dmt_hienthi'=>0]);
        $dmt= DB::table('tintuc')->where('dmt_id',$dmt_id)->get();
         foreach ($dmt as $key => $value) {
             $data1 = array();
             $data1['tintuc_hienthi'] =0;
              DB::table('tintuc')->where('tintuc_id',$value->tintuc_id)->update($data1); 

           
        }
        return redirect('banhang/danhsach-dmt')->with('thongbao','Kích hoạt danh mục tin thành công');
    }
  
}
