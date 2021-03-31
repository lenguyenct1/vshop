<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Redirect;
use App\mau;
use APp\mausanpham;
use App\nhacungcap;
session_start();

class MauController extends Controller
{
    
    public function getdanhsach_mau(){
      
          $mau=mau::all();
    	return view('quanly.kho.mau.danhsach_mau')->with('mau',$mau);
    }
   
     


    public function gettao_mau(){
     
    	return view('quanly.kho.mau.tao_mau');
    }
     
     public function posttao_mau(Request $request){
        $this->validate($request,[
                'mau_ten'=> 'required|unique:mau,mau_ten|min:1|max:100',
                'mau_giatri'=> 'required|unique:mau,mau_giatri',
              

        ],
        [
                'mau_ten.required'=>'Bạn chưa nhập tên màu',
                'mau_ten.unique'=>'Tên màu đã tồn tại',
                'mau_ten.min'=>'Tên màu phải có độ dài từ 1 cho đến 100 ký tự',
                'mau_ten.max'=>'Tên màu phải có độ dài từ 1 cho đến 100 ký tự',
                'mau_giatri.required'=>'Bạn chưa nhập giá trị màu',
                'mau_giatri.unique'=>'Giá trị màu đã tồn tại',
               
        ]);
   
        $mau =new mau;
        $mau->mau_ten=$request->mau_ten;
        $mau->mau_giatri=$request->mau_giatri;
        $mau->save();
        return redirect('banhang/danhsach-mau')->with('thongbao','Tạo màu thành công');
        
    }
     public function getsua_mau($mau_id){
  
          $mau=mau::find($mau_id);
        return view('quanly.kho.mau.sua_mau',['mau'=>$mau]);
    }
    
  public function postsua_mau(Request $request,$mau_id){
      $this->validate($request,[
                'mau_ten'=> 'required|min:1|max:100',
                'mau_giatri'=> 'required',

        ],
        [
                'mau_ten.required'=>'Bạn chưa nhập tên màu',
                'mau_ten.min'=>'Tên màu phải có độ dài từ 1 cho đến 100 ký tự',
                'mau_ten.max'=>'Tên màu phải có độ dài từ 1 cho đến 100 ký tự',
                'mau_giatri.unique'=>'Giá trị màu đã tồn tại',
               
        ]);
            
        try {
      
        $mausp=DB::table('mausanpham')->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')->join('mau','mau.mau_id','=','mausanpham.mau_id')->where('mau.mau_id',$mau_id)->get();
         foreach ($mausp as $key => $value) {
             $data1 = array();
             $ten=str_replace($value->mau_ten, $request->mau_ten, $value->mausp_ten);
             $data1['mausp_ten'] =$ten;
              DB::table('mausanpham')->where('mausp_id',$value->mausp_id)->update($data1); 

              $data2 = array();
             $ten1=str_replace('"'.$value->mau_ten.'"','"'.$request->mau_ten.'"', $value->sp_mausac);
             $data2['sp_mausac'] =$ten1;
              DB::table('sanpham')->where('sp_id',$value->sp_id)->update($data2); 
        }
        $mau=mau::find($mau_id);
        $mau->mau_ten=$request->mau_ten;
        $mau->mau_giatri=$request->mau_giatri;
        $mau->save();
       
       
        return redirect('banhang/danhsach-mau')->with('thongbao','Sửa thông tin màu thành công');
        }
        catch (\Exception $e)  {
     
        return redirect('banhang/danhsach-mau')->with('thongbao','Tên màu đã tồn tại');
}
 
    }
    
        public function getxoa_mau($mau_id){
        $mau=mau::find($mau_id);

         try {
          $mau->delete();
        return redirect('banhang/danhsach-mau')->with('thongbao','Bạn đã xóa màu thành công');
  
} catch (\Exception $e)  {
     
        return redirect('banhang/danhsach-mau')->with('thongbao','Bạn đã xóa màu không thành công (do màu có ràng buộc dữ liệu)');
}
       
    }

  
}
