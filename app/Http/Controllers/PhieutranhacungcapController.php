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
use App\khacspang;
use App\dondathang;
use App\phieunhapkho;
use App\phieutrahang;
use App\chitiettrahang;
use App\chitietphieunhap;
use App\chitietdathang;
use App\mausanpham;
use App\phieutrancc;
use App\chitiettrancc;
use App\Exports\Phieutranhacungcap_Export;
use Maatwebsite\Excel\Facades\Excel;
use Barryvdh\DomPDF\Facade as PDF;
use Validator;
session_start();

class PhieutranhacungcapController extends Controller
{
    
    public function gettao_ptncc($pnk_id){
      $pnk= phieunhapkho::find($pnk_id);
       $ctptncc=DB::table('chitietphieunhap')
       ->join('mausanpham','mausanpham.mausp_id','=','chitietphieunhap.mausp_id')
      ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
     ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
    ->join('nhacungcap','nhacungcap.ncc_id','=','sanpham.ncc_id')
     ->where('chitietphieunhap.pnk_id',$pnk_id)->get();
    	return view('quanly.kho.phieutrancc.tao_ptncc')->with('pnk',$pnk)->with('ctptncc',$ctptncc);
    }

         public function xem_ptncc(Request $request){
      $from=date("Y-m-d", strtotime($request->tungay));
       $to=date("Y-m-d", strtotime($request->denngay));
       if($from>$to ||$request->tungay==''||$request->denngay==''){
  echo "<input  style='color:red;' type='text' id='check' value='Ngày không hợp lệ' readonly='' class='form-control'>";
}
else{
  $total=0;
              $ptncc=DB::table('phieutrancc')
              ->join('phieunhapkho','phieutrancc.pnk_id','=','phieunhapkho.pnk_id')
              ->join('nhanvien','phieutrancc.id','=','nhanvien.id')
              ->join('nhacungcap','phieutrancc.ncc_id','=','nhacungcap.ncc_id')
              ->whereBetween('phieutrancc.ptncc_ngaylap', [$from,$to])->get();

  $output='   <div class="table-responsive">
<table   class= "table table-bordered table-striped table-hover"   id="dataTables-example">';
            $output.=" 

             <thead>
          <tr>
            
            <th>Mã phiếu trả nhà cung cấp</th>
             <th>Nhà cung cấp</th>
             <th>Tạo bởi phiếu nhập</th>
            <th>Nhân viên tạo phiếu</th>
            <th>Ngày lập</th>
            <th>Tổng tiền</th>
            <th>Hành động</th>
          </tr>
        </thead>
        <tbody>
        ";
         foreach($ptncc as $dsptncc){
                $ngaylap=date("d-m-Y", strtotime($dsptncc->ptncc_ngaylap));
                 $output.=' <tr>
           
            <td>PTNCC00'.$dsptncc->ptncc_id.'</td>
            <td>'. $dsptncc->ncc_ten.'</td>
            <td>PNK00'.$dsptncc->pnk_id.'</td>
            <td>'.$dsptncc->name .'</td>
            <td>'.$ngaylap.'</td>
            <td>'.number_format($dsptncc->ptncc_tong,0,',',',').'</td>';
              $total=$total+$dsptncc->ptncc_tong;
             
                   
          
            $output.='
             <td>
              <a href="banhang/chitiet-ptncc/'.$dsptncc->ptncc_id.'"   class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-eye text-success text-active" title="Xem chi tiết phiếu trả nhà cung cấp"></i></a>
                  <a href="banhang/pdf-ptncc/'.$dsptncc->ptncc_id.'" class="active styling-edit" ui-toggle-class="" target="_blank">
                    <i class="fa fa-print" title="Xuất pdf phiếu trả nhà cung cấp"></i></a>
                    <a href="banhang/excel-ptncc/'.$dsptncc->ptncc_id.'" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-file-excel-o" title="Xuất excel phiếu trả nhà cung cấp"></i></a>
            </td>

         
          </tr>';

          }
          $output.=" </tbody></table>
    </div>";
     $output.=' <footer class="panel-footer">
      <div class="row">
        
        <div class="col-sm-4 text-center">
          <small class="text-muted inline m-t-sm m-b-sm" style="font-size: 20px;"><b>Tổng Tiền:</b> </small>
          
          <small style="font-size: 20px;"> '.number_format($total,0,',',',').' VNĐ'.'</small>
        
        </div>
        
  
      </div>
    </footer>';
    return $output;

}


    }
   public  function insertncc(Request $request)
    {
      if($request->ajax())
     {
      $rules = array(
       
       'ctncc_soluong.*'  => 'required'
      
      
      );
        $messages = [];
        $check = $request->check;
//Hiển thị dòng chưa nhập tương úng với giá trị checkbox
  foreach($check as $key => $val)
  {

    $messages['ctncc_soluong.'.$key.'.required'] = 'Bạn chưa nhập dòng thứ '.$val.' của cột Số lượng trả.';
   
  }
      $error = Validator::make($request->all(), $rules,$messages);
      if($error->fails())
      {
         
       return response()->json([
        'error'  => $error->errors()->all()
       ]);
          }
    
      $ptncc =new phieutrancc;
   
      $ptncc->ncc_id=$request->ncc_id;
      $ptncc->pnk_id=$request->pnk_id;
      $ptncc->id=$request->nv_id;
      $ptncc->ptncc_tong=$request->sumpnk;
      date_default_timezone_set('Asia/Ho_Chi_Minh');
      $ptncc->ptncc_ngaylap = now();
      $ptncc->save();

      $pnk= phieunhapkho::find($request->pnk_id);
      $pnk->pnk_trangthai=2;
      $pnk->save();

        $mausp_id = $request->mausp_id;
      $ctncc_soluong = $request->ctncc_soluong;
      $ctncc_dongia=$request->ctncc_dongia;
        for($count1 = 0; $count1 < count($mausp_id); $count1++)
      {
        $product= DB::table('mausanpham')->where('mausp_id',$mausp_id[$count1])->get();
           foreach ($product as $key => $value) {
             $value1=$value->mausp_soluong-$ctncc_soluong[$count1];
                $data1 = array();
             $data1['mausp_soluong'] =$value1;
              DB::table('mausanpham')->where('mausp_id',$mausp_id[$count1] )->update($data1); 
                $data2 = array();
              $sp= DB::table('sanpham')->where('sp_id',$value->sp_id)->get();
             foreach ($sp as $key => $value2) {
              $value3=$value2->sp_soluong-$ctncc_soluong[$count1];
               $data2['sp_soluong'] =$value3;
               if($value3==0){
                 $data2['sp_hienthi']=1;
             }
              DB::table('sanpham')->where('sp_id',$value2->sp_id)->update($data2); 
             }
      }}
   for($count = 0; $count < count($mausp_id); $count++)
      {
       $data = array(
        'ptncc_id' => $ptncc->ptncc_id,
        'mausp_id' => $mausp_id[$count],
        'ctncc_soluong'  => $ctncc_soluong[$count],
        'ctncc_dongia'  => $ctncc_dongia[$count]
       );
       $insert_data[] = $data; 
      }
      
      chitiettrancc::insert($insert_data);
      return response()->json([
       'success'  => 'Phiếu  trả nhà cung cấp được tạo thành công.'
      ]);
     
  
      }
       
     }
      public function getdanhsach_ptncc(){
     $ptncc=phieutrancc::all();
       $output='   <div class="table-responsive">
<table   class= "table table-bordered table-striped table-hover"   id="dataTables-example">';
            $output.=" 

             <thead>
          <tr>
            
            <th>Mã phiếu trả nhà cung cấp</th>
             <th>Nhà cung cấp</th>
             <th>Tạo bởi phiếu nhập</th>
            <th>Nhân viên tạo phiếu</th>
            <th>Ngày lập</th>
            <th>Tổng tiền</th>
            <th>Hành động</th>
          </tr>
        </thead>
        <tbody>
        ";
         foreach($ptncc as $dsptncc){
                $ngaylap=date("d-m-Y", strtotime($dsptncc->ptncc_ngaylap));
                 $output.=' <tr>
           
            <td>PTNCC00'.$dsptncc->ptncc_id.'</td>
            <td>'. $dsptncc->nhacungcap->ncc_ten.'</td>
            <td>PNK00'.$dsptncc->pnk_id.'</td>
            <td>'.$dsptncc->User->name .'</td>
            <td>'.$ngaylap.'</td>
            <td>'.number_format($dsptncc->ptncc_tong,0,',',',').'</td>';

             
                   
          
            $output.='
             <td>
              <a href="banhang/chitiet-ptncc/'.$dsptncc->ptncc_id.'"   class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-eye text-success text-active" title="Xem chi tiết phiếu trả nhà cung cấp"></i></a>
                  <a href="banhang/pdf-ptncc/'.$dsptncc->ptncc_id.'" class="active styling-edit" ui-toggle-class="" target="_blank">
                    <i class="fa fa-print" title="Xuất pdf phiếu trả nhà cung cấp"></i></a>
                    <a href="banhang/excel-ptncc/'.$dsptncc->ptncc_id.'" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-file-excel-o" title="Xuất excel phiếu trả nhà cung cấp"></i></a>
            </td>

         
          </tr>';

          }
          $output.=" </tbody></table>
    </div>";
      return view('quanly.kho.phieutrancc.danhsach_ptncc')->with('ptncc',$ptncc)->with('output',$output);
    }
       public function getchitiet_ptncc($ptncc_id){
    $ptncc=phieutrancc::find($ptncc_id);
   $ctncc=DB::table('chitiettrancc')
      ->join('mausanpham','mausanpham.mausp_id','=','chitiettrancc.mausp_id')
      ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
     ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
    ->join('nhacungcap','nhacungcap.ncc_id','=','sanpham.ncc_id')
   ->where('chitiettrancc.ptncc_id',$ptncc_id)->get();
   
    return view('quanly.kho.phieutrancc.chitiet_ptncc')->with('ptncc',$ptncc)->with('ctncc',$ctncc);

    }
    public function pdf_ptncc($ptncc_id) 
{
    $ptncc=phieutrancc::find($ptncc_id);
   $ctncc=DB::table('chitiettrancc')
      ->join('mausanpham','mausanpham.mausp_id','=','chitiettrancc.mausp_id')
      ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
     ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
    ->join('nhacungcap','nhacungcap.ncc_id','=','sanpham.ncc_id')
   ->where('chitiettrancc.ptncc_id',$ptncc_id)->get();
    $data = [
        'ptncc' => $ptncc,
        'ctncc'  => $ctncc,
    ];

   
    /* Code dành cho việc debug
    - Khi debug cần hiển thị view để xem trước khi Export PDF
    */
    // return view('backend.sanpham.pdf')
    //     ->with('danhsachsanpham', $ds_sanpham)
    //     ->with('danhsachloai', $ds_loai);
     $pdf = PDF::loadView('quanly.kho.phieutrancc.pdf_ptncc',$data);
     return $pdf->stream();
}
  public function excel_ptncc($ptncc_id) 
{
    $ptncc=phieutrancc::find($ptncc_id);
   $ctncc=DB::table('chitiettrancc')
      ->join('mausanpham','mausanpham.mausp_id','=','chitiettrancc.mausp_id')
      ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
     ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
    ->join('nhacungcap','nhacungcap.ncc_id','=','sanpham.ncc_id')
   ->where('chitiettrancc.ptncc_id',$ptncc_id)->get();
    $data = [
        'ptncc' => $ptncc,
        'ctncc'  => $ctncc,
    ];

   
    /* Code dành cho việc debug
    - Khi debug cần hiển thị view để xem trước khi Export PDF
    */
    // return view('backend.sanpham.pdf')
    //     ->with('danhsachsanpham', $ds_sanpham)
    //     ->with('danhsachloai', $ds_loai);
    return Excel::download(new Phieutranhacungcap_Export($ptncc,$ctncc), 'phieutranhacungcap.xlsx');
}
    
    }
 

   
