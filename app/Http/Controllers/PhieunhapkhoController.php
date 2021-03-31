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
use App\mausanpham;
use App\khohang;
use App\phieunhapkho;
use App\chitietphieunhap;
use Barryvdh\DomPDF\Facade as PDF;
use App\Exports\Phieunhapkho_Export;
use Maatwebsite\Excel\Facades\Excel;
use Validator;
session_start();

class PhieunhapkhoController extends Controller
{
    
   
    public function gettao_pnk(){
      $kho=khohang::all();
      $ncc_id=nhacungcap::all();
    	return view('quanly.kho.phieunhapkho.tao_pnk')->with('kho',$kho)->with('ncc_id',$ncc_id);
    }
     public function xem_pnk(Request $request){
      $from=date("Y-m-d", strtotime($request->tungay));
       $to=date("Y-m-d", strtotime($request->denngay));
       if($from>$to ||$request->tungay==''||$request->denngay==''){
  echo "<input  style='color:red;' type='text' id='check' value='Ngày không hợp lệ' readonly='' class='form-control'>";
}
else{
  $total=0;
              $pnk=DB::table('phieunhapkho')
              ->join('nhanvien','phieunhapkho.id','=','nhanvien.id')
              ->join('khohang','phieunhapkho.kho_id','=','khohang.kho_id')
              ->join('nhacungcap','phieunhapkho.ncc_id','=','nhacungcap.ncc_id')
              ->whereBetween('phieunhapkho.pnk_ngaynhapkho', [$from,$to])->get();

   $output='   <div class="table-responsive">
<table   class= "table table-bordered table-striped table-hover"   id="dataTables-example">';
            $output.=" 

             <thead>
          <tr>
            
            <th>Mã phiếu nhập kho</th>
            <th>Nhân viên tạo phiếu</th>
            <th>Kho nhập</th>
            <th>Nhà cung cấp</th>
            <th>Ngày nhập kho</th>
            <th>Tổng tiền</th>
            <th>Trạng thái</th>
            <th>Hành động</th>
          </tr>
        </thead>
        <tbody>
        ";
           foreach($pnk as $key => $dspnk){
               $ngaynhapkho=date("d-m-Y", strtotime($dspnk->pnk_ngaynhapkho));
                 $output.=' <tr>
           
            <td>PNK00'.$dspnk->pnk_id.'</td>
            <td>'. $dspnk->name.'</td>
            <td>'. $dspnk->kho_ten.'</td>
            <td>'.$dspnk->ncc_ten.'</td>
            <td>'.$ngaynhapkho.'</td>
            <td>'.number_format($dspnk->pnk_tong,0,',',',').'</td>';
              $total=$total+$dspnk->pnk_tong;
             if($dspnk->pnk_trangthai==1)
               $output.=' 
               <td> <a href="banhang/tao-ptncc/'.$dspnk->pnk_id.'"> <input type="button"  class="btn btn-info btn-xs order_duyet_btn" value="Có thể trả hàng" title="Có thể trả hàng"></a></td>';
              else
                 $output.=' 
              <td>  <input type="button" class="btn btn-success btn-xs order_duyet_btn" value="Đã trả hàng" title="Đã trả hàng"></td>';
                   
          
            $output.='

              <td>
              <a href="banhang/chitiet-pnk/'.$dspnk->pnk_id.'"  class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-eye text-success text-active" title="Xem chi tiết phiếu nhập kho"></i></a>
                <a href="banhang/pdf-pnk/'.$dspnk->pnk_id.'" class="active styling-edit" ui-toggle-class="" target="_blank" >
                  <i class="fa fa-print" title="Xuất pdf phiếu nhập kho"></i></a>
                    <a href="banhang/excel-pnk/'.$dspnk->pnk_id.'" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-file-excel-o" title="Xuất excel phiếu nhập kho"></i></a>
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
     public function getdanhsach_pnk(){
      $pnk=phieunhapkho::all();
       $output='   <div class="table-responsive">
<table   class= "table table-bordered table-striped table-hover"   id="dataTables-example">';
            $output.=" 

             <thead>
          <tr>
            
            <th>Mã phiếu nhập kho</th>
            <th>Nhân viên tạo phiếu</th>
            <th>Kho nhập</th>
            <th>Nhà cung cấp</th>
            <th>Ngày nhập kho</th>
            <th>Tổng tiền</th>
            <th>Trạng thái</th>
            <th>Hành động</th>
          </tr>
        </thead>
        <tbody>
        ";
           foreach($pnk as $key => $dspnk){
               $ngaynhapkho=date("d-m-Y", strtotime($dspnk->pnk_ngaynhapkho));
                 $output.=' <tr>
           
            <td>PNK00'.$dspnk->pnk_id.'</td>
            <td>'. $dspnk->User->name.'</td>
            <td>'. $dspnk->khohang->kho_ten.'</td>
            <td>'.$dspnk->nhacungcap->ncc_ten.'</td>
            <td>'.$ngaynhapkho.'</td>
            <td>'.number_format($dspnk->pnk_tong,0,',',',').'</td>';

             if($dspnk->pnk_trangthai==1)
               $output.=' 
               <td> <a href="banhang/tao-ptncc/'.$dspnk->pnk_id.'"> <input type="button"  class="btn btn-info btn-xs order_duyet_btn" value="Có thể trả hàng" title="Có thể trả hàng"></a></td>';
              else
                 $output.=' 
              <td>  <input type="button" class="btn btn-success btn-xs order_duyet_btn" value="Đã trả hàng" title="Đã trả hàng"></td>';
                   
          
            $output.='

              <td>
              <a href="banhang/chitiet-pnk/'.$dspnk->pnk_id.'"  class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-eye text-success text-active" title="Xem chi tiết phiếu nhập kho"></i></a>
                <a href="banhang/pdf-pnk/'.$dspnk->pnk_id.'" class="active styling-edit" ui-toggle-class="" target="_blank" >
                  <i class="fa fa-print" title="Xuất pdf phiếu nhập kho"></i></a>
                    <a href="banhang/excel-pnk/'.$dspnk->pnk_id.'" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-file-excel-o" title="Xuất excel phiếu nhập kho"></i></a>
            </td>
          </tr>';

          }
          $output.=" </tbody></table>
    </div>";
      return view('quanly.kho.phieunhapkho.danhsach_pnk')->with('pnk',$pnk)->with('output',$output);
    }
       public function getchitiet_pnk($pnk_id){
    $pnk=phieunhapkho::find($pnk_id);
   $ctpn=DB::table('chitietphieunhap')
      ->join('mausanpham','mausanpham.mausp_id','=','chitietphieunhap.mausp_id')
      ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
     ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
    ->join('nhacungcap','nhacungcap.ncc_id','=','sanpham.ncc_id')
     ->where('chitietphieunhap.pnk_id',$pnk_id)->get();

    return view('quanly.kho.phieunhapkho.chitiet_pnk')->with('pnk',$pnk)->with('ctpn',$ctpn);
   
    }
    
     public function dongia(Request $request){
  
    //it will get price if its id match with product id
    $p=sanpham::select('sp_dongianhap')->join('mausanpham','mausanpham.sp_id','=','sanpham.sp_id')->where('mausanpham.mausp_id',$request->id)->first();
    
      return response()->json($p);
  }

public function mausanpham(Request $request){

    
      //if our chosen id and products table prod_cat_id col match the get first 100 data 

        //$request->id here is the id of our chosen option id
        $data=sanpham::select('mausp_ten','mausp_id')->join('mausanpham','mausanpham.sp_id','=','sanpham.sp_id')->where([['mausanpham.sp_id',$request->id],['mausanpham.mausp_hienthi',1]])->get();
          
            $output = '';
          
           $output = ' <option value="">--Chọn mẫu sản phẩm--</option>';
                
                foreach($data as $key => $value){
                    $output.='<option value="'.$value->mausp_id.'">'.$value->mausp_ten.'</option>';
                

            }
            echo $output;
        
  }
   public function sanpham(Request $request){

    
      //if our chosen id and products table prod_cat_id col match the get first 100 data 

        //$request->id here is the id of our chosen option id
        $data=sanpham::select('sp_ten','sp_id')->where([['ncc_id',$request->ncc_id],['kho_id',$request->kho_id]])->get();
          
            $output = '';
          
           $output = ' <option value="">--Chọn sản phẩm--</option>';
                
                foreach($data as $key => $value){
                    $output.='<option value="'.$value->sp_id.'">'.$value->sp_ten.'</option>';
                

            }

            echo $output;
        
  }
     public function khosp(Request $request){

    
      //if our chosen id and products table prod_cat_id col match the get first 100 data 

        //$request->id here is the id of our chosen option id
        $data=sanpham::select('sp_ten','sp_id')->where([['ncc_id',$request->ncc_id],['kho_id',$request->kho_id]])->get();
          
            $output = '';
          
           $output = ' <option value="">--Chọn sản phẩm--</option>';
                
                foreach($data as $key => $value){
                    $output.='<option value="'.$value->sp_id.'">'.$value->sp_ten.'</option>';
                

            }

            echo $output;
        
  }
function insert(Request $request)
    {
      if($request->ajax())
     {
      $rules = array(
        'sp_id.*'=>'required',
         'mausp_id.*'=>'required',
       'ctpn_soluong.*'  => 'required'
      
      
      );
      $messages = [];
       $sp_id = $request->sp_id;
       //Hiển thị dòng chưa nhập tương ứng với giá trị nhóm id do $key bắt đầu từ 0 nên cần cộng 1 để hiển thị
  foreach($sp_id as $key => $val)
  {

    $messages['sp_id.'.$key.'.required'] = 'Bạn chưa nhập dòng thứ '.($key + 1).' của cột Tên sản phẩm.';
    $messages['mausp_id.'.$key.'.required'] = 'Bạn chưa nhập dòng thứ '.($key + 1).' của cột Mẫu sản phẩm.';
    $messages['ctpn_soluong.'.$key.'.required'] = 'Bạn chưa nhập dòng thứ '.($key + 1).' của cột Số lượng.';
  }
      $error = Validator::make($request->all(), $rules,$messages);
      if($error->fails())
      {
         
       return response()->json([
        'error'  => $error->errors()->all()
       ]);
        
      }
  
     $pnk =new phieunhapkho;
  
      $pnk->id=$request->nv_id;
      $pnk->kho_id=$request->kho_id;
      $pnk->ncc_id=$request->ncc_id;
      $pnk->pnk_trangthai=1;
      $pnk->pnk_tong=$request->sumpnk;
      date_default_timezone_set('Asia/Ho_Chi_Minh');
      $pnk->pnk_ngaynhapkho = now();
      $pnk->save();


       $mausp_id = $request->mausp_id;
      $ctpn_soluong = $request->ctpn_soluong;
      $ctpn_dongia=$request->ctpn_dongia;
       for($count1 = 0; $count1 < count($mausp_id); $count1++)
      {
        $product= DB::table('mausanpham')->where('mausanpham.mausp_id',$mausp_id[$count1])->get();
           foreach ($product as $key => $value) {
             $value1=$value->mausp_soluong+$ctpn_soluong[$count1];
                $data1 = array();
             $data1['mausp_soluong'] =$value1;
              DB::table('mausanpham')->where('mausp_id',$mausp_id[$count1] )->update($data1); 
                $data2 = array();
              $sp= DB::table('sanpham')->where('sp_id',$value->sp_id)->get();
             foreach ($sp as $key => $value2) {
              $value3=$value2->sp_soluong+$ctpn_soluong[$count1];
               $data2['sp_soluong'] =$value3;
               if($value3>0){
                 $data2['sp_hienthi']=0;
             }
              DB::table('sanpham')->where('sp_id',$value2->sp_id)->update($data2); 
             }

      }}
      for($count = 0; $count < count($mausp_id); $count++)
      {
       $data = array(
        'pnk_id'=>$pnk->pnk_id,
        'mausp_id' => $mausp_id[$count],
        'ctpn_soluong'  => $ctpn_soluong[$count],
        'ctpn_dongia'  => $ctpn_dongia[$count]
       );
       $insert_data[] = $data; 
      }
      
      chitietphieunhap::insert($insert_data);
      return response()->json([
       'success'  => 'Phiếu nhập được tạo thành công.'
      ]);
     
     }
    }
     
     public function pdf_pnk($pnk_id) 
{
   $pnk = phieunhapkho::find($pnk_id);
   $ctpn=DB::table('chitietphieunhap')
      ->join('mausanpham','mausanpham.mausp_id','=','chitietphieunhap.mausp_id')
      ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
     ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
    ->join('nhacungcap','nhacungcap.ncc_id','=','sanpham.ncc_id')
     ->where('chitietphieunhap.pnk_id',$pnk_id)->get();
    $data = [
        'pnk' => $pnk,
        'ctpn'    => $ctpn,
    ];

   
    /* Code dành cho việc debug
    - Khi debug cần hiển thị view để xem trước khi Export PDF
    */
    // return view('backend.sanpham.pdf')
    //     ->with('danhsachsanpham', $ds_sanpham)
    //     ->with('danhsachloai', $ds_loai);
     $pdf = PDF::loadView('quanly.kho.phieunhapkho.pdf_pnk',$data);
     return $pdf->stream();
}
 public function excel_pnk($pnk_id) 
{
  $pnk = phieunhapkho::find($pnk_id);
    $ctpn=DB::table('chitietphieunhap')
      ->join('mausanpham','mausanpham.mausp_id','=','chitietphieunhap.mausp_id')
      ->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')
     ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
    ->join('nhacungcap','nhacungcap.ncc_id','=','sanpham.ncc_id')
     ->where('chitietphieunhap.pnk_id',$pnk_id)->get();
   
    /* Code dành cho việc debug
    - Khi debug cần hiển thị view để xem trước khi Export PDF
    */
    // return view('backend.sanpham.pdf')
    //     ->with('danhsachsanpham', $ds_sanpham)
    //     ->with('danhsachloai', $ds_loai);
      return Excel::download(new Phieunhapkho_Export($pnk,$ctpn), 'phieunhapkho.xlsx');
  
}
    
}
  