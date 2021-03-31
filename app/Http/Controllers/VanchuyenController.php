<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Redirect;
use App\vanchuyen;
use App\nhacungcap;
session_start();

class vanchuyenController extends Controller
{
    
    public function getdanhsach_vc(){
      
          $vc=vanchuyen::all();
    	return view('quanly.banhang.vanchuyen.danhsach_vc')->with('vc',$vc);
    }
   
     


    public function gettao_vc(){
     
    	return view('quanly.banhang.vanchuyen.tao_vc');
    }
     
     public function posttao_vc(Request $request){
          $this->validate($request,[
                'vc_ten'=> 'required|unique:vanchuyen,vc_ten|min:5|max:100',

              

        ],
        [
                'vc_ten.required'=>'Bạn chưa nhập tên vận chuyển',
                'vc_ten.unique'=>'Tên vận chuyển đã tồn tại',
                'vc_ten.min'=>'Tên vận chuyển phải có độ dài từ 5 cho đến 100 ký tự',
                'vc_ten.max'=>'Tên vận chuyển phải có độ dài từ 5 cho đến 100 ký tự',
               
        ]);
        try{
      
   
        $vc =new vanchuyen;
        $vc->vc_ten=$request->vc_ten;
        $vc->vc_chiphi=filter_var($request->vc_chiphi, FILTER_SANITIZE_NUMBER_INT);
        $vc->vc_thongtin=$request->vc_thongtin;
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $vc->vc_ngaytaomoi = now();
        $vc->vc_ngaycapnhat= now();
        $vc->vc_hienthi=0;
        $vc->save();
        return redirect('banhang/danhsach-vc')->with('thongbao','Tạo vận chuyển thành công');}
          catch (\Exception $e)  {
     
      return redirect('banhang/danhsach-vc')->with('thongbao','Tạo vận chuyển không thành công');
}
        
    }
     public function getsua_vc($vc_id){
  
          $vc=vanchuyen::find($vc_id);
        return view('quanly.banhang.vanchuyen.sua_vc',['vc'=>$vc]);
    }
    
  public function postsua_vc(Request $request,$vc_id){
       $this->validate($request,[
                'vc_ten'=> 'required|min:5|max:100',
              

        ],
        [
                'vc_ten.required'=>'Bạn chưa nhập tên vận chuyển',
                'vc_ten.min'=>'Tên vận chuyển phải có độ dài từ 5 cho đến 100 ký tự',
                'vc_ten.max'=>'Tên vận chuyển phải có độ dài từ 5 cho đến 100 ký tự',
               
        ]);
            try{
     
        $vc=vanchuyen::find($vc_id);
        $vc->vc_ten=$request->vc_ten;
        $vc->vc_chiphi=filter_var($request->vc_chiphi, FILTER_SANITIZE_NUMBER_INT);
        $vc->vc_thongtin=$request->vc_thongtin;
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $vc->vc_ngaycapnhat= now();
        $vc->save();
        return redirect('banhang/danhsach-vc')->with('thongbao','Sửa thông tin vận chuyển thành công');}
        catch (\Exception $e)  {
     
          return redirect('banhang/danhsach-vc')->with('thongbao','Tên hình thức vận chuyển');
}
 
    }
    
        public function getxoa_vc($vc_id){
        $vc=vanchuyen::find($vc_id);

         try {
          $vc->delete();
        return redirect('banhang/danhsach-vc')->with('thongbao','Bạn đã xóa vận chuyển thành công');
  
} catch (\Exception $e)  {
     
        return redirect('banhang/danhsach-vc')->with('thongbao','Bạn đã xóa vận chuyển không thành công (do vận chuyển có ràng buộc dữ liệu)');
}
       
    }
     public function khongkichhoat_vc($vc_id){
      
        DB::table('vanchuyen')->where('vc_id',$vc_id)->update(['vc_hienthi'=>1]);
       return redirect('banhang/danhsach-vc')->with('thongbao','Không kích hoạt vận chuyển thành công');

    }
    public function kichhoat_vc($vc_id){
      
        DB::table('vanchuyen')->where('vc_id',$vc_id)->update(['vc_hienthi'=>0]);
        return redirect('banhang/danhsach-vc')->with('thongbao','Kích hoạt vận chuyển thành công');
    }
  
}
