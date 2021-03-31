<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Auth;
use Illuminate\Support\Facades\Redirect;
use App\nhacungcap;
use App\Exports\Baocaoncc_Export;
use Maatwebsite\Excel\Facades\Excel;
use Barryvdh\DomPDF\Facade as PDF;
session_start();

class BaocaonccController extends Controller
{
    
    public function gettao_bcncc(){
        $ncc=nhacungcap::all();
    	return view('quanly.kho.baocao_ncc.bcncc')->with('ncc',$ncc);
    }
    public function postpdf_bcncc(Request $request){
 
      $from=date("Y-m-d", strtotime($request->tungay));
      $to=date("Y-m-d", strtotime($request->denngay));
      $data= DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
       ->join('thuonghieu','thuonghieu.th_id','=','sanpham.th_id')
       ->join('nhacungcap','nhacungcap.ncc_id','=','sanpham.ncc_id')
       ->where('nhacungcap.ncc_id',$request->ncc_id)
       ->get();
       $ncc=nhacungcap::find($request->ncc_id);
        $data4 = [
        'from' => $from,
        'to'  => $to,
        'ncc'=>$ncc,
        'data'=>$data,
    ];
   
   
     $pdf = PDF::loadView('quanly.kho.baocao_ncc.pdf_bcncc',$data4);
 $pdf->setPaper('A4','landscape');
    return $pdf->stream();
    }
 public function excel_bcncc(Request $request){

      $from=date("Y-m-d", strtotime($request->tungay));
      $to=date("Y-m-d", strtotime($request->denngay));
      $data= DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
       ->join('thuonghieu','thuonghieu.th_id','=','sanpham.th_id')
       ->join('nhacungcap','nhacungcap.ncc_id','=','sanpham.ncc_id')
       ->where('nhacungcap.ncc_id',$request->ncc_id)
       ->get();
       $ncc=nhacungcap::find($request->ncc_id);
        $data4 = [
        'from' => $from,
        'to'  => $to,
        'ncc'=>$ncc,
        'data'=>$data,
    ];
   
   
    return Excel::download(new Baocaoncc_Export($from,$to,$data,$ncc), 'Baocao_nhacungcap.xlsx');
    }
      public function postxem_bcncc(Request $request){

      
       $from=date("Y-m-d", strtotime($request->tungay));
       $to=date("Y-m-d", strtotime($request->denngay));
          $data= DB::table('sanpham')
             ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
       ->join('thuonghieu','thuonghieu.th_id','=','sanpham.th_id')
       ->join('nhacungcap','nhacungcap.ncc_id','=','sanpham.ncc_id')
       ->where('nhacungcap.ncc_id',$request->ncc_id)
       ->get();

if($from>$to ||$request->tungay==''||$request->denngay==''){
  echo "<input  style='color:red;' type='text' id='check' value='Ngày không hợp lệ' readonly='' class='form-control'>";
}
else{
  $i=1;
     $output='';
     $output.='
   <table   class= "table table-bordered table-striped table-hover"  id="dataTables-example">
               <thead>
                <tr>
                 <th rowspan="2">STT</th>
                   <th rowspan="2"> Mã mẫu sản phẩm</th>
                    <th rowspan="2">Tên mẫu sản phẩm</th>
                      <th colspan="2"> Tồn đầu kỳ</th>
                       <th  colspan="2"> Nhập trong kỳ</th>
                        <th  colspan="2"> Xuất trong kỳ </th>
                      <th  colspan="2"> Tồn cuối kỳ</th>
                </tr>
                <tr>    
                
                <th>Số lượng</th>
                 <th>Đơn giá</th>  
                  <th>Số lượng</th>
                 <th>Đơn giá</th>  
                  <th>Số lượng</th>
                 <th>Đơn giá</th>  
                  <th>Số lượng</th>
                 <th>Đơn giá</th>  
                         
                </tr>
             
               </thead>
               <tbody>';
          foreach ($data as $key => $value) {
            $tck=0;
              $output.='<tr>
                 <td>'.$i++.'</td>
               <td>MAUSP00'.$value->mausp_id .'</td>
               <td>'.$value->mausp_ten.'</td>';
                 $data1=DB::table('chitietphieunhap')
                ->join('mausanpham','mausanpham.mausp_id','=','chitietphieunhap.mausp_id')
               ->join('phieunhapkho','phieunhapkho.pnk_id','=','chitietphieunhap.pnk_id')
               ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
               ->select(DB::raw('sum(ctpn_soluong) as quantity,sum(ctpn_soluong*ctpn_dongia) as total'))
               ->where('mausanpham.mausp_id',$value->mausp_id)
               ->where('phieunhapkho.pnk_ngaynhapkho','<', $from)->groupBy('mausanpham.mausp_id')->get();
                 if(!$data1->isEmpty()){
                foreach ($data1 as $key1 => $value1) {
                    
            $output.=  '<td>'.$value1->quantity.'</td>
                        <td>'.number_format($value1->total,0,',',',').'</td>';
                      $tck=$tck+$value1->quantity;
                    }}
                    else{

            $output.=  '<td>0</td>
                        <td>0</td>';
                    }
               $data2=DB::table('chitietphieunhap')
               ->join('phieunhapkho','phieunhapkho.pnk_id','=','chitietphieunhap.pnk_id')
               ->join('mausanpham','mausanpham.mausp_id','=','chitietphieunhap.mausp_id')
               ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
               ->select(DB::raw('sum(ctpn_soluong) as quantity,sum(ctpn_soluong*ctpn_dongia) as total'))
               ->where('mausanpham.mausp_id',$value->mausp_id)
               ->whereBetween('phieunhapkho.pnk_ngaynhapkho', [$from,$to])->groupBy('mausanpham.mausp_id')->get();
                $data3=DB::table('chitiettrancc')
                ->join('mausanpham','mausanpham.mausp_id','=','chitiettrancc.mausp_id')
               ->join('phieutrancc','phieutrancc.ptncc_id','=','chitiettrancc.ptncc_id')
               ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
               ->select(DB::raw('sum(ctncc_soluong) as quantity,sum(ctncc_soluong*ctncc_dongia) as total'))
               ->where('mausanpham.mausp_id',$value->mausp_id)
               ->whereBetween('phieutrancc.ptncc_ngaylap', [$from,$to])->groupBy('mausanpham.mausp_id')->get();
               if(!$data2->isEmpty()){
                foreach ($data2 as $key2 => $value2) {
                    
            $output.=  '<td>'.$value2->quantity.'</td>
                        <td>'.number_format($value2->total,0,',',',').'</td>';
                      $tck=$tck+$value2->quantity;
                    }}
                    else{

            $output.=  '<td>0</td>
                        <td>0</td>';
                    }
                     if(!$data3->isEmpty()){
                foreach ($data3 as $key3 => $value3) {
                    
            $output.=  '<td>'.$value3->quantity.'</td>
                        <td>'.number_format($value3->total,0,',',',').'</td>';
                      $tck=$tck-$value3->quantity;
                    }}
                    else{

            $output.=  '<td>0</td>
                        <td>0</td>';
                    }
              $output.='<td>'.$tck.'</td>
              
             
               <td>'.number_format($tck*$value->sp_dongianhap,0,',',',').'</td></tr>';
          }
          $output.= "</tbody></table>";
          return $output;
    }
  
  
}
}
    
   

