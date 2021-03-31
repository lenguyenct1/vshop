<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Auth;
use Illuminate\Support\Facades\Redirect;
use App\dondathang;
use App\thanhtoan;
use App\Exports\Dondathang_Export;
use Maatwebsite\Excel\Facades\Excel;
use Barryvdh\DomPDF\Facade as PDF;
session_start();

class DondathangController extends Controller
{
      public function loc_ddh($ddh_trangthai){
             if($ddh_trangthai!=0)
       {
        $total=0;
        $ddh=DB::table('dondathang')
        ->join('khachhang','dondathang.kh_id','=','khachhang.kh_id')
        ->join('thanhtoan','dondathang.tt_id','=','thanhtoan.tt_id')
        ->where('dondathang.ddh_trangthai',$ddh_trangthai)->get();
           $output='    <div class="table-responsive">
     
<table   class= "table table-bordered table-striped table-hover"   id="dataTables-example">';
            $output.=" <thead>
          <tr>
           
            <th width='5%'>Mã đơn đặt hàng</th>
            <th>Khách hàng</th>
            <th width='15%'>Thời gian đặt hàng</th>
            <th width='15%'>Thời gian xác nhận</th>
            <th width='10%'>Hình thức thanh toán</th>
             <th>Tổng tiền</th>
            <th>Duyệt</th>   
            <th>Hành động</th> 
          </tr>
        </thead>
        <tbody>";
           foreach($ddh as $key => $dsddh){
             $ngay=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngaylap));
             $ngayxacnhan=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngayxacnhan));
                 $output.=' <tr>
           
            <td>DDH00'.$dsddh->ddh_id.'</td>
            <td>'.$dsddh->kh_ten.'</td>
            <td>'.$ngay.'</td>';
            if($dsddh->ddh_ngayxacnhan=='')
            $output.=' <td>ĐƠN HÀNG CHƯA HOÀN TẤT</td>';
            else
            $output.=' <td>'.$ngayxacnhan.'</td>';
           $output.=' <td>'.$dsddh->tt_ten.'</td>';
              $output.=' <td>'.number_format($dsddh->ddh_tong,0,',',',').'</td>';
               if($dsddh->ddh_trangthai!=4){
           $total=$total+$dsddh->ddh_tong;
         }
            $output.=' 
            <td>';
             if($dsddh->ddh_trangthai==1)
               $output.=' 
              <input type="button" data-order_status="2" data-order_id="'.$dsddh->ddh_id.'"  class="btn btn-danger btn-xs order_duyet_btn" value="Chưa duyệt" title="Chưa duyệt">';
              elseif($dsddh->ddh_trangthai==2)
                 $output.=' 
               <input type="button" data-order_status="3" data-order_id="'.$dsddh->ddh_id.'"  class="btn btn-primary btn-xs order_duyet_btn" value="Đã duyệt" title="Đã duyệt">';
                    elseif($dsddh->ddh_trangthai==3)
                       $output.=' 
                 <input type="button" class="btn btn-success btn-xs" value="Đã giao hàng" title="Đã giao hàng">';
                      elseif($dsddh->ddh_trangthai==4)
                         $output.=' 
                   <input type="button" class="btn btn-warning btn-xs" value="Đã hủy đơn" title="Đã hủy đơn">';
                  $output.=' 
            </td>';
          
            $output.=' <td>
               <a href="banhang/chitiet-ddh/'.$dsddh->ddh_id.'"  class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-eye text-success text-active" title="Xem chi tiết đơn đặt hàng"></i></a>
                <a href="banhang/pdf-ddh/'.$dsddh->ddh_id.'" class="active styling-edit" ui-toggle-class="" target="_blank" >
                  <i class="fa fa-print" title="Xuất pdf đơn hàng"></i></a>
                    <a href="banhang/excel-ddh/'.$dsddh->ddh_id.'" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-file-excel-o" title="Xuất excel đơn đặt hàng"></i></a>
            </td>
          </tr>';

          }
          $output.=" </tbody> </table>
    </div>";
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
     


         echo $output;
       }
        else{
          $total=0;
          $ddh=dondathang::all();
 $output='    <div class="table-responsive">
     
<table   class= "table table-bordered table-striped table-hover"   id="dataTables-example">';
            $output.=" <thead>
          <tr>
           
            <th width='5%'>Mã đơn đặt hàng</th>
            <th>Khách hàng</th>
            <th width='15%'>Thời gian đặt hàng</th>
            <th width='15%'>Thời gian xác nhận</th>
            <th width='10%'>Hình thức thanh toán</th>
             <th>Tổng tiền</th>
            <th>Duyệt</th>   
            <th>Hành động</th> 
          </tr>
        </thead>
        <tbody>";
           foreach($ddh as $key => $dsddh){
             $ngay=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngaylap));
             $ngayxacnhan=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngayxacnhan));
                 $output.=' <tr>
           
            <td>DDH00'.$dsddh->ddh_id.'</td>
            <td>'.$dsddh->khachhang->kh_ten.'</td>
            <td>'.$ngay.'</td>';
            if($dsddh->ddh_ngayxacnhan=='')
            $output.=' <td>ĐƠN HÀNG CHƯA HOÀN TẤT</td>';
            else
            $output.=' <td>'.$ngayxacnhan.'</td>';
           $output.=' <td>'.$dsddh->thanhtoan->tt_ten.'</td>';
              $output.=' <td>'.number_format($dsddh->ddh_tong,0,',',',').'</td>';
               if($dsddh->ddh_trangthai!=4){
           $total=$total+$dsddh->ddh_tong;
         }
            $output.=' 
            <td>';
             if($dsddh->ddh_trangthai==1)
               $output.=' 
              <input type="button" data-order_status="2" data-order_id="'.$dsddh->ddh_id.'"  class="btn btn-danger btn-xs order_duyet_btn" value="Chưa duyệt" title="Chưa duyệt">';
              elseif($dsddh->ddh_trangthai==2)
                 $output.=' 
               <input type="button" data-order_status="3" data-order_id="'.$dsddh->ddh_id.'"  class="btn btn-primary btn-xs order_duyet_btn" value="Đã duyệt" title="Đã duyệt">';
                    elseif($dsddh->ddh_trangthai==3)
                       $output.=' 
                 <input type="button" class="btn btn-success btn-xs" value="Đã giao hàng" title="Đã giao hàng">';
                      elseif($dsddh->ddh_trangthai==4)
                         $output.=' 
                   <input type="button" class="btn btn-warning btn-xs" value="Đã hủy đơn" title="Đã hủy đơn">';
                  $output.=' 
            </td>';
          
            $output.=' <td>
               <a href="banhang/chitiet-ddh/'.$dsddh->ddh_id.'"  class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-eye text-success text-active" title="Xem chi tiết đơn đặt hàng"></i></a>
                <a href="banhang/pdf-ddh/'.$dsddh->ddh_id.'" class="active styling-edit" ui-toggle-class="" target="_blank" >
                  <i class="fa fa-print" title="Xuất pdf đơn hàng"></i></a>
                    <a href="banhang/excel-ddh/'.$dsddh->ddh_id.'" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-file-excel-o" title="Xuất excel đơn đặt hàng"></i></a>
            </td>
          </tr>';

          }
          $output.=" </tbody> </table>
    </div>";
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
     
         echo $output;
       }
    
    }
    public function getdanhsach_ddh(){
        $ddh=dondathang::all(); $total=0;
          $output='    <div class="table-responsive">
     
<table   class= "table table-bordered table-striped table-hover"   id="dataTables-example">';
            $output.=" <thead>
          <tr>
           
            <th width='5%'>Mã đơn đặt hàng</th>
            <th>Khách hàng</th>
            <th width='15%'>Thời gian đặt hàng</th>
            <th width='15%'>Thời gian xác nhận</th>
            <th width='10%'>Hình thức thanh toán</th>
             <th>Tổng tiền</th>
            <th>Duyệt</th>   
            <th>Hành động</th> 
          </tr>
        </thead>
        <tbody>";
           foreach($ddh as $key => $dsddh){
             $ngay=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngaylap));
             $ngayxacnhan=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngayxacnhan));
                 $output.=' <tr>
           
            <td>DDH00'.$dsddh->ddh_id.'</td>
            <td>'.$dsddh->khachhang->kh_ten.'</td>
            <td>'.$ngay.'</td>';
            if($dsddh->ddh_ngayxacnhan=='')
            $output.=' <td>ĐƠN HÀNG CHƯA HOÀN TẤT</td>';
            else
            $output.=' <td>'.$ngayxacnhan.'</td>';
           $output.=' <td>'.$dsddh->thanhtoan->tt_ten.'</td>';
              $output.=' <td>'.number_format($dsddh->ddh_tong,0,',',',').'</td>';
            
            $output.=' 
            <td>';
             if($dsddh->ddh_trangthai==1)
               $output.=' 
              <input type="button" data-order_status="2" data-order_id="'.$dsddh->ddh_id.'"  class="btn btn-danger btn-xs order_duyet_btn" value="Chưa duyệt" title="Chưa duyệt">';
              elseif($dsddh->ddh_trangthai==2)
                 $output.=' 
               <input type="button" data-order_status="3" data-order_id="'.$dsddh->ddh_id.'"  class="btn btn-primary btn-xs order_duyet_btn" value="Đã duyệt" title="Đã duyệt">';
                    elseif($dsddh->ddh_trangthai==3)
                       $output.=' 
                 <input type="button" class="btn btn-success btn-xs" value="Đã giao hàng" title="Đã giao hàng">';
                      elseif($dsddh->ddh_trangthai==4)
                         $output.=' 
                   <input type="button" class="btn btn-warning btn-xs" value="Đã hủy đơn" title="Đã hủy đơn">';
                  $output.=' 
            </td>';
          
            $output.=' <td>
               <a href="banhang/chitiet-ddh/'.$dsddh->ddh_id.'"  class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-eye text-success text-active" title="Xem chi tiết đơn đặt hàng"></i></a>
                <a href="banhang/pdf-ddh/'.$dsddh->ddh_id.'" class="active styling-edit" ui-toggle-class="" target="_blank" >
                  <i class="fa fa-print" title="Xuất pdf đơn hàng"></i></a>
                    <a href="banhang/excel-ddh/'.$dsddh->ddh_id.'" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-file-excel-o" title="Xuất excel đơn đặt hàng"></i></a>
            </td>
          </tr>';

          }
          $output.=" </tbody> </table>
    </div>";
    
    	return view('quanly.banhang.dondathang.danhsach_ddh')->with('ddh',$ddh)->with('output',$output);
    }
     public function  postduyet_ddh(Request $request){
        
        $data=$request->all();
        $ddh=dondathang::find($data['ddh_id']);
        if($data['ddh_trangthai']==2){
        $ddh->ddh_trangthai=$data['ddh_trangthai'];
      }
      else if($data['ddh_trangthai']==3){
         $ddh->ddh_trangthai=$data['ddh_trangthai'];
          date_default_timezone_set('Asia/Ho_Chi_Minh');
          $ddh->ddh_ngayxacnhan = now();
      }
        $ddh->save();
    }
        public function  getchitiet_ddh($ddh_id){
        
      $ddh=dondathang::find($ddh_id);
      $ctddh=DB::table('chitietdathang')
         ->join('mausanpham','chitietdathang.mausp_id','=','mausanpham.mausp_id')
          ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
         ->join('dondathang','dondathang.ddh_id','=','chitietdathang.ddh_id')
         ->where('dondathang.ddh_id',$ddh_id)
         ->get();
        return view('quanly.banhang.dondathang.chitiet_ddh')->with('ddh',$ddh)->with('ctddh',$ctddh);
    }

      public function pdf_ddh($ddh_id) 
{
   $ddh=dondathang::find($ddh_id);
      $ctddh=DB::table('chitietdathang')
         ->join('mausanpham','chitietdathang.mausp_id','=','mausanpham.mausp_id')
         ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
         ->join('dondathang','dondathang.ddh_id','=','chitietdathang.ddh_id')
         ->where('dondathang.ddh_id',$ddh_id)
         ->get();
    $data = [
        'ddh' => $ddh,
        'ctddh'    => $ctddh,
    ];

   
    /* Code dành cho việc debug
    - Khi debug cần hiển thị view để xem trước khi Export PDF
    */
    // return view('backend.sanpham.pdf')
    //     ->with('danhsachsanpham', $ds_sanpham)
    //     ->with('danhsachloai', $ds_loai);
     $pdf = PDF::loadView('quanly.banhang.dondathang.pdf_ddh',$data);
     return $pdf->stream();
}

 public function excel_ddh($ddh_id) 
{
      $ddh=dondathang::find($ddh_id);
      $ctddh=DB::table('chitietdathang')
          ->join('mausanpham','chitietdathang.mausp_id','=','mausanpham.mausp_id')
          ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
         ->join('dondathang','dondathang.ddh_id','=','chitietdathang.ddh_id')
         ->where('dondathang.ddh_id',$ddh_id)
         ->get();
   
    /* Code dành cho việc debug
    - Khi debug cần hiển thị view để xem trước khi Export PDF
    */
    // return view('backend.sanpham.pdf')
    //     ->with('danhsachsanpham', $ds_sanpham)
    //     ->with('danhsachloai', $ds_loai);
      return Excel::download(new Dondathang_Export($ddh,$ctddh), 'dondathang.xlsx');
  
}
  

      public function xem_ddh(Request $request){
       $from=date("Y-m-d", strtotime($request->tungay));
       $to=date("Y-m-d", strtotime($request->denngay));
       $to1 = date('Y-m-d', strtotime($to. ' + 1 days'));
       if($from>$to ||$request->tungay==''||$request->denngay==''){
  echo "<input  style='color:red;' type='text' id='check' value='Ngày không hợp lệ' readonly='' class='form-control'>";
}
else{
  $total=0;
 
              $ddh=DB::table('dondathang')
        ->join('khachhang','dondathang.kh_id','=','khachhang.kh_id')
        ->join('thanhtoan','dondathang.tt_id','=','thanhtoan.tt_id')
        ->whereBetween('dondathang.ddh_ngaylap', [$from,$to1])->get();

 $output='    <div class="table-responsive">
     
<table   class= "table table-bordered table-striped table-hover"   id="dataTables-example">';
            $output.=" <thead>
          <tr>
           
            <th width='5%'>Mã đơn đặt hàng</th>
            <th>Khách hàng</th>
            <th>Thời gian đặt hàng</th>
            <th width='15%'>Thời gian xác nhận</th>
            <th width='10%'>Hình thức thanh toán</th>
            <th>Tổng tiền</th>
            <th>Duyệt</th>   
            <th>Hành động</th> 
          </tr>
        </thead>
        <tbody>";
           foreach($ddh as $key => $dsddh){
             $ngay=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngaylap));
             $ngayxacnhan=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngayxacnhan));
                 $output.=' <tr>
           
            <td>DDH00'.$dsddh->ddh_id.'</td>
            <td>'.$dsddh->kh_ten.'</td>
            <td>'.$ngay.'</td>';
            if($dsddh->ddh_ngayxacnhan=='')
            $output.=' <td>ĐƠN HÀNG CHƯA HOÀN TẤT</td>';
            else
            $output.=' <td>'.$ngayxacnhan.'</td>';
          
             $output.=' <td>'.$dsddh->tt_ten.'</td>';
                $output.='<td>'.number_format($dsddh->ddh_tong,0,',',',').'</td>';
                if($dsddh->ddh_trangthai!=4){
           $total=$total+$dsddh->ddh_tong;
         }
            $output.=' 
            <td>';
             if($dsddh->ddh_trangthai==1)
               $output.=' 
              <input type="button" data-order_status="2" data-order_id="'.$dsddh->ddh_id.'"  class="btn btn-danger btn-xs order_duyet_btn" value="Chưa duyệt" title="Chưa duyệt">';
              elseif($dsddh->ddh_trangthai==2)
                 $output.=' 
               <input type="button" data-order_status="3" data-order_id="'.$dsddh->ddh_id.'"  class="btn btn-primary btn-xs order_duyet_btn" value="Đã duyệt" title="Đã duyệt">';
                    elseif($dsddh->ddh_trangthai==3)
                       $output.=' 
                 <input type="button" class="btn btn-success btn-xs" value="Đã giao hàng" title="Đã giao hàng">';
                      elseif($dsddh->ddh_trangthai==4)
                         $output.=' 
                   <input type="button" class="btn btn-warning btn-xs" value="Đã hủy đơn" title="Đã hủy đơn">';
                  $output.=' 
            </td>';
         
            $output.='<td>
               <a href="banhang/chitiet-ddh/'.$dsddh->ddh_id.'"  class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-eye text-success text-active" title="Xem chi tiết đơn đặt hàng"></i></a>
                <a href="banhang/pdf-ddh/'.$dsddh->ddh_id.'" class="active styling-edit" ui-toggle-class="" target="_blank" >
                  <i class="fa fa-print" title="Xuất pdf đơn hàng"></i></a>
                    <a href="banhang/excel-ddh/'.$dsddh->ddh_id.'" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-file-excel-o" title="Xuất excel đơn đặt hàng"></i></a>
            </td>
          </tr>';

          }
          $output.=" </tbody> </table>
    </div>";
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


    }
}
    
   

