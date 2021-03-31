<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Auth;
use Illuminate\Support\Facades\Redirect;
use App\thuonghieu;
use App\nhacungcap;
use App\sanpham;
use App\khachhang;
use App\phieunhapkho;
use App\dondathang;
use App\chitietphieunhap;
use Carbon\Carbon;
use DateTime;
use Barryvdh\DomPDF\Facade as PDF;
use App\Exports\Khachhangdh_Export;
use Maatwebsite\Excel\Facades\Excel;
use Validator;
session_start();

class KhachhangController extends Controller
{
    
   
    public function getdanhsach_kh(){
      $kh=khachhang::all();
      return view('quanly.banhang.khachhang.danhsach_kh')->with('kh',$kh);
    }
   
    public function getchitiet_kh($kh_id){
     
      $ddh=DB::table('dondathang')->join('thanhtoan','dondathang.tt_id','=','thanhtoan.tt_id')->join('khachhang','dondathang.kh_id','=','khachhang.kh_id')->where('khachhang.kh_id',$kh_id)->get();
     $kh=khachhang::find($kh_id);
       $output='  <table   class= "table table-bordered table-striped table-hover"   id="dataTables-example"  >';
            $output.=" <thead>
                                      <tr>
                                       <th>STT</th>
                                        <th>Mã đơn đặt hàng</th>
                                        <th  width='15%'>Thời gian đặt hàng</th>
                                        <th  width='15%'>Thời gian xác nhận</th>
                                        <th  width='10%'>Hình thức thanh toán</th>
                                         <th  width='10%'>Tình trạng đơn đặt hàng</th>
                                             <th>Tổng tiền</th>
                                        <th>Hành động</th>   
                                      </tr>
                                    </thead>
                                    <tbody>";
                              $i=1;
             foreach($ddh as $key => $dsddh){
             $ngay=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngaylap));
             $ngayxacnhan=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngayxacnhan));
                 $output.=' <tr>
            <td>'.$i++.'</td>
            <td>DDH00'.$dsddh->ddh_id.'</td>
            <td>'.$ngay.'</td>';
            if($dsddh->ddh_ngayxacnhan=='')
            $output.=' <td>ĐƠN HÀNG CHƯA HOÀN TẤT</td>';
            else
           $output.=' <td>'.$ngayxacnhan.'</td>';
           
             $output.=' <td>'.$dsddh->tt_ten.'</td>';
           
            if($dsddh->ddh_trangthai==1)
               $output.=' <td>Chưa duyệt</td>';
            elseif($dsddh->ddh_trangthai==2)
               $output.='<td>Đã duyệt</td>';
                elseif($dsddh->ddh_trangthai==3)
                $output.='<td>Đã giao hàng</td>';
                elseif($dsddh->ddh_trangthai==4)
               $output.='<td>Đã hủy đơn</td>';
             $output.='<td>'.number_format($dsddh->ddh_tong,0,',',',').'</td>';
            $output.=' 
            <td>
               <a href="banhang/chitiet-ddh/'.$dsddh->ddh_id.'"  class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-eye text-success  text-active" title="Xem chi tiết đơn đặt hàng"></i></a>
                <a href="banhang/pdf-ddh/'.$dsddh->ddh_id.'" class="active styling-edit" ui-toggle-class="" target="_blank"  >
                  <i class="fa fa-print" title="Xuất pdf đơn hàng"></i></a>
                    <a href="banhang/excel-ddh/'.$dsddh->ddh_id.'" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-file-excel-o" title="Xuất excel đơn đặt hàng"></i></a>
            </td>
            </tr>';
        }
          $output.=" </tbody> </table>";
      return view('quanly.banhang.khachhang.chitiet_kh')->with('kh',$kh)->with('output',$output);
    }
      public function postxem_khdh(Request $request){
     
      $from=date("Y-m-d", strtotime($request->tungay));
       $to=date("Y-m-d", strtotime($request->denngay));
       $to1 = date('Y-m-d', strtotime($to. ' + 1 days'));
       $ddh=DB::table('dondathang')->join('thanhtoan','dondathang.tt_id','=','thanhtoan.tt_id')->join('khachhang','dondathang.kh_id','=','khachhang.kh_id')->where('khachhang.kh_id',$request->kh_id)->whereBetween('dondathang.ddh_ngaylap', [$from,$to1])->get();

if($from>$to ||$request->tungay==''||$request->denngay==''){
  echo "<input  style='color:red;' type='text' id='check' value='Ngày không hợp lệ' readonly='' class='form-control'>";
}
else{
	if(!$ddh->isEmpty()){
     $output='<table   class= "table table-bordered table-striped table-hover"   id="dataTables-example"  >';
            $output.=" <thead>
                                      <tr>
                                       <th>STT</th>
                                        <th>Mã đơn đặt hàng</th>
                                        <th  width='15%'>Thời gian đặt hàng</th>
                                        <th  width='15%'>Thời gian xác nhận</th>
                                        <th  width='10%'>Hình thức thanh toán</th>
                                         <th  width='10%'>Tình trạng đơn đặt hàng</th>
                                          <th>Tổng tiền</th>
                                        <th>Hành động</th>   
                                      </tr>
                                    </thead>
                                    <tbody>";
                              $i=1; $total=0;
             foreach($ddh as $key => $dsddh){
             $ngay=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngaylap));
             $ngayxacnhan=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngayxacnhan));
                 $output.=' <tr>
            <td>'.$i++.'</td>
            <td>DDH00'.$dsddh->ddh_id.'</td>
            <td>'.$ngay.'</td>';
            if($dsddh->ddh_ngayxacnhan=='')
            $output.=' <td>ĐƠN HÀNG CHƯA HOÀN TẤT</td>';
            else
            $output.=' <td>'.$ngayxacnhan.'</td>';
           
             $output.=' <td>'.$dsddh->tt_ten.'</td>';
              if($dsddh->ddh_trangthai==1)
               $output.=' <td>Chưa duyệt</td>';
            elseif($dsddh->ddh_trangthai==2)
               $output.='<td>Đã duyệt</td>';
                elseif($dsddh->ddh_trangthai==3)
                $output.='<td>Đã giao hàng</td>';
                elseif($dsddh->ddh_trangthai==4)
               $output.='<td>Đã hủy đơn</td>';
               $output.='<td>'.number_format($dsddh->ddh_tong,0,',',',').'</td>';
                 if($dsddh->ddh_trangthai!=4){
           $total=$total+$dsddh->ddh_tong;
         }
            $output.=' 
            <td>
               <a href="banhang/chitiet-ddh/'.$dsddh->ddh_id.'"  class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-eye text-success  text-active" title="Xem chi tiết đơn đặt hàng"></i></a>
                <a href="banhang/pdf-ddh/'.$dsddh->ddh_id.'" class="active styling-edit" ui-toggle-class=""  target="_blank">
                  <i class="fa fa-print" title="Xuất pdf đơn hàng"></i></a>
                    <a href="banhang/excel-ddh/'.$dsddh->ddh_id.'" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-file-excel-o" title="Xuất excel đơn đặt hàng"></i></a>
            </td>
            </tr>';
        }
          $output.=" </tbody> </table>";
             $output.=' <footer class="panel-footer">
      <div class="row">
        
        <div class="col-sm-5 text-center">
          <small class="text-muted inline m-t-sm m-b-sm" style="font-size: 20px;"><b>Tổng Tiền:</b> </small>
          
          <small style="font-size: 20px;"> '.number_format($total,0,',',',').' VNĐ'.'</small>
          <br/>
          <small style="font-size: 16px;">(Tổng tiền không bao gồm các đơn đặt hàng đã hủy)</small>
        
        </div>
        
  
      </div>
    </footer>';
          return $output;
 }
 else{
  echo "<input  style='color:red;' type='text' id='check' value='Không có đơn đặt hàng trong thời gian này' readonly='' class='form-control'>";
 }
    }
    
}
 public function pdf_kh($kh_id) 
{
    $current_day = Carbon::now('Asia/Ho_Chi_Minh');
      
       $date=date("Y-m-d", strtotime($current_day));
   $ddh=DB::table('dondathang')->join('thanhtoan','dondathang.tt_id','=','thanhtoan.tt_id')->join('khachhang','dondathang.kh_id','=','khachhang.kh_id')->where('khachhang.kh_id',$kh_id)->get();
   $kh=khachhang::find($kh_id);
  
    $data = [
        'date' => $date,
        'ddh' => $ddh,
        'kh'    => $kh,
    ];

   
    /* Code dành cho việc debug
    - Khi debug cần hiển thị view để xem trước khi Export PDF
    */
    // return view('backend.sanpham.pdf')
    //     ->with('danhsachsanpham', $ds_sanpham)
    //     ->with('danhsachloai', $ds_loai);
     $pdf = PDF::loadView('quanly.banhang.khachhang.pdf_kh',$data);
     return $pdf->stream();
}
public function excel_kh($kh_id) 
{
       $current_day = Carbon::now('Asia/Ho_Chi_Minh');
      
   $date=date("Y-m-d", strtotime($current_day));
   $ddh=DB::table('dondathang')->join('thanhtoan','dondathang.tt_id','=','thanhtoan.tt_id')->join('khachhang','dondathang.kh_id','=','khachhang.kh_id')->where('khachhang.kh_id',$kh_id)->get();
   $kh=khachhang::find($kh_id);
  
   
    /* Code dành cho việc debug
    - Khi debug cần hiển thị view để xem trước khi Export PDF
    */
    // return view('backend.sanpham.pdf')
    //     ->with('danhsachsanpham', $ds_sanpham)
    //     ->with('danhsachloai', $ds_loai);
      return Excel::download(new Khachhangdh_Export($ddh,$kh,$date), 'khachhang.xlsx');
  
}
}
  