<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Auth;
use Illuminate\Support\Facades\Redirect;
use App\khohang;
use Barryvdh\DomPDF\Facade as PDF;
use Carbon\Carbon;
use App\Exports\Baocaotk_Export;
use Maatwebsite\Excel\Facades\Excel;
use DateTime;
session_start();

class BaocaotkController extends Controller
{
    
    public function gettao_bctk(){
        $khohang=khohang::all();
    	return view('quanly.kho.baocao_tk.bctk')->with('khohang',$khohang);
    }
        public function postpdf_bctk(Request $request){
 
       $current_day = Carbon::now('Asia/Ho_Chi_Minh');
      
       $date=date("Y-m-d", strtotime($current_day));
   
          $data= DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
       ->where('kho_id',$request->kho_id)
       ->get();
$khohang=khohang::find($request->kho_id);
        $data4 = [
        'date' => $date,
        'khohang'=>$khohang,
        'data'=>$data,
    ];
   
   
     $pdf = PDF::loadView('quanly.kho.baocao_tk.pdf_bctk',$data4);
 $pdf->setPaper('A4','landscape');
    return $pdf->stream();
    }
     public function excel_bctk(Request $request){
 
      $current_day = Carbon::now('Asia/Ho_Chi_Minh');
      
       $date=date("Y-m-d", strtotime($current_day));
   
          $data= DB::table('sanpham')
           ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
       ->where('kho_id',$request->kho_id)
       ->get();
$khohang=khohang::find($request->kho_id);
        $data4 = [
        'date' => $date,
        'khohang'=>$khohang,
        'data'=>$data,
    ];
   
   
    return Excel::download(new Baocaotk_Export($date,$data,$khohang), 'Baocao_tonkho.xlsx');
    }
      public function postxem_bctk(Request $request){

      $current_day = Carbon::now('Asia/Ho_Chi_Minh');
      
       $date=date("Y-m-d", strtotime($current_day));
   
          $data= DB::table('sanpham')
          ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
       ->where('kho_id',$request->kho_id)
       ->get();
       $i=1;
     $output='';
     $output.='
   <table   class= "table table-bordered table-striped table-hover"  id="dataTables-example">
               <thead>
                <tr>
                 <th>STT</th>
                   <th > Mã mẫu sản phẩm</th>
                    <th>Tên mẫu sản phẩm</th>
                   
                      <th> Số lượng tồn</th>
                       <th> Đơn giá nhập</th>
                    
                     
                </tr>
            
             
               </thead>
               <tbody>';
          foreach ($data as $key => $value) {
            $tck=0;
              $output.='<tr>
              <td>'.$i++.'</td>
                <td>MAUSP00'.$value->mausp_id .'</td>
                <td>'.$value->mausp_ten.'</td>
                <td>'.$value->mausp_soluong.'</td>
                <td>'.number_format($value->sp_dongianhap,0,',',',').'</td>
                </tr>';
               
           
              
              
          }
          $output.= "</tbody>
                           </table>";
          return $output;
    
  
  
}
   
}
    
   

