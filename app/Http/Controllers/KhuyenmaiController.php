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
use App\hinhanh;
use App\binhluan;
use App\phanhoi;
use App\mau;
use App\khuyenmai;
use App\phieunhapkho;
use App\chitietphieunhap;
use Barryvdh\DomPDF\Facade as PDF;
use App\Exports\Khuyenmai_Export;
use Maatwebsite\Excel\Facades\Excel;
use Carbon\Carbon;
use DateTime;
use App\mausanpham;
use Validator;
use File;
session_start();

class KhuyenmaiController extends Controller
{
     public function getdanhsach_khuyenmai(){
     
     $km=khuyenmai::orderby('khuyenmai_id','DESC')->get();
     return view('quanly.banhang.khuyenmai.danhsach_khuyenmai')->with('km',$km);
    }
    public function gettao_khuyenmai(){
      $current_day = Carbon::now('Asia/Ho_Chi_Minh');
       $date=date("Y-m-d", strtotime($current_day));
      $sp=DB::table('sanpham')->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['khuyenmai.khuyenmai_id',null],['sanpham.sp_hienthi',0]])->orWhere([['khuyenmai.khuyenmai_id', '<>', null],['khuyenmai.khuyenmai_ngayketthuc','<',$date]])->get();
//       echo '<pre>';
//      echo print_r($sp);
// echo '</pre>';
      return view('quanly.banhang.khuyenmai.tao_khuyenmai')->with('sp',$sp);
    }
    function insertkm(Request $request)
    {
      if($request->ajax())
     {
      $rules = array(
      'khuyenmai_ten'=> 'unique:khuyenmai,khuyenmai_ten',
        'sp_id.*'=>'required',
         'tungay' => 'required',
         'denngay' => 'required|after:tungay',
      );
      $messages = [];
       $sp_id = $request->sp_id;
       //Hiển thị dòng chưa nhập tương ứng với giá trị nhóm id do $key bắt đầu từ 0 nên cần cộng 1 để hiển thị
  foreach($sp_id as $key => $val)
  {

    $messages['sp_id.'.$key.'.required'] = 'Bạn chưa nhập dòng thứ '.($key + 1).' của cột Tên sản phẩm.';
 
  }
       $messages['khuyenmai_ten.unique']='Tên khuyến mãi đã tồn tại';
      $messages['tungay.required']='Vui lòng nhập ngày bắt đầu';
        $messages['denngay.required']='Vui lòng nhập ngày kết thúc';
          $messages['denngay.after']='Vui lòng nhập ngày kết thúc lớn hơn ngày bắt đầu';
      $error = Validator::make($request->all(), $rules,$messages);
      if($error->fails())
      {
         
       return response()->json([
        'error'  => $error->errors()->all()
       ]);
        
      }
      $km =new khuyenmai;
      $km->id=$request->nv_id;
      $km->khuyenmai_ten=$request->khuyenmai_ten;
      $km->khuyenmai_giatri=$request->khuyenmai_giatri;
      $km->khuyenmai_ngaybatdau=$request->tungay;
      $km->khuyenmai_ngayketthuc=$request->denngay;
      $km->save();
        $sp_id = $request->sp_id;
          for($count1 = 0; $count1 < count($sp_id); $count1++)
      {
        $product= DB::table('sanpham')->where('sanpham.sp_id',$sp_id[$count1])->get();
           foreach ($product as $key => $value) {
             $value1=$km->khuyenmai_id;
                $data1 = array();
             $data1['khuyenmai_id'] =$value1;
              DB::table('sanpham')->where('sp_id',$sp_id[$count1] )->update($data1); 
              
         

      }}
      return response()->json([
       'success'  => 'Khuyến mãi được tạo thành công.'
      ]);
    
     
     }
    }

     public function getchitiet_khuyenmai($km_id){
    $km=khuyenmai::find($km_id);
     $current_day = Carbon::now('Asia/Ho_Chi_Minh');
   $ctkm=DB::table('sanpham')
      ->join('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')
     ->where('khuyenmai.khuyenmai_id',$km_id)->get();

    return view('quanly.banhang.khuyenmai.chitiet_khuyenmai')->with('km',$km)->with('ctkm',$ctkm)->with('current_day',$current_day);
   
    }
         public function pdf_khuyenmai($km_id) 
{
   $km = khuyenmai::find($km_id);
    $current_day = Carbon::now('Asia/Ho_Chi_Minh');
   $ctkm=DB::table('sanpham')
      ->join('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')
     ->where('khuyenmai.khuyenmai_id',$km_id)->get();
    $data = [
        'km' => $km,
        'ctkm'    => $ctkm,
        'current_day'=> $current_day,
    ];

   
    /* Code dành cho việc debug
    - Khi debug cần hiển thị view để xem trước khi Export PDF
    */
    // return view('backend.sanpham.pdf')
    //     ->with('danhsachsanpham', $ds_sanpham)
    //     ->with('danhsachloai', $ds_loai);
     $pdf = PDF::loadView('quanly.banhang.khuyenmai.pdf_khuyenmai',$data);
     return $pdf->stream();
}

 public function excel_khuyenmai($km_id) 
{
  $km = khuyenmai::find($km_id);
   $current_day = Carbon::now('Asia/Ho_Chi_Minh');
   $ctkm=DB::table('sanpham')
      ->join('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')
     ->where('khuyenmai.khuyenmai_id',$km_id)->get();
   
    /* Code dành cho việc debug
    - Khi debug cần hiển thị view để xem trước khi Export PDF
    */
    // return view('backend.sanpham.pdf')
    //     ->with('danhsachsanpham', $ds_sanpham)
    //     ->with('danhsachloai', $ds_loai);
      return Excel::download(new Khuyenmai_Export($km,$ctkm,$current_day), 'khuyenmai.xlsx');
  
}
}
