<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Redirect;
use App\xuatxu;
use App\nhacungcap;
session_start();

class XUatxuController extends Controller
{
    
    public function getdanhsach_xx(){
      
          $xx=xuatxu::all();
    	return view('quanly.kho.xuatxu.danhsach_xx')->with('xx',$xx);
    }
   
     


    public function gettao_xx(){
     
    	return view('quanly.kho.xuatxu.tao_xx');
    }
     
     public function posttao_xx(Request $request){
        $this->validate($request,[
                'xx_ten'=> 'required|unique:xuatxu,xx_ten|min:1|max:100',
              

        ],
        [
                'xx_ten.required'=>'Bạn chưa nhập tên xuất xứ',
                'xx_ten.unique'=>'Tên xuất xứ đã tồn tại',
                'xx_ten.min'=>'Tên xuất xứ phải có độ dài từ 1 cho đến 100 ký tự',
                'xx_ten.max'=>'Tên xuất xứ phải có độ dài từ 1 cho đến 100 ký tự',
               
        ]);
   
        $xx =new xuatxu;
        $xx->xx_ten=$request->xx_ten;
        $xx->save();
        return redirect('banhang/danhsach-xx')->with('thongbao','Tạo xuất xứ thành công');
        
    }
     public function getsua_xx($xx_id){
  
          $xx=xuatxu::find($xx_id);
        return view('quanly.kho.xuatxu.sua_xx',['xx'=>$xx]);
    }
    
  public function postsua_xx(Request $request,$xx_id){
     $this->validate($request,[
                'xx_ten'=> 'required|min:1|max:100',
              

        ],
        [
                'xx_ten.required'=>'Bạn chưa nhập tên xuất xứ',
                'xx_ten.min'=>'Tên xuất xứ phải có độ dài từ 1 cho đến 100 ký tự',
                'xx_ten.max'=>'Tên xuất xứ phải có độ dài từ 1 cho đến 100 ký tự',
               
        ]);
            try{
       
        $xx=xuatxu::find($xx_id);
        $xx->xx_ten=$request->xx_ten;
        $xx->save();
        return redirect('banhang/danhsach-xx')->with('thongbao','Sửa thông tin xuất xứ thành công');}
         catch (\Exception $e)  {
     
      return redirect('banhang/danhsach-xx')->with('thongbao','Tên xuất xứ đã tồn tại');
}
 
    }
    
        public function getxoa_xx($xx_id){
        $xx=xuatxu::find($xx_id);

         try {
          $xx->delete();
        return redirect('banhang/danhsach-xx')->with('thongbao','Bạn đã xóa xuất xứ thành công');
  
} catch (\Exception $e)  {
     
        return redirect('banhang/danhsach-xx')->with('thongbao','Bạn đã xóa xuất xứ không thành công (do xuất xứ có ràng buộc dữ liệu)');
}
       
    }
    
  
}
