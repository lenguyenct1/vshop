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
use App\phieunhapkho;
use App\chitietphieunhap;
use Barryvdh\DomPDF\Facade as PDF;
use App\Exports\Dsspton_Export;
use Maatwebsite\Excel\Facades\Excel;
use App\User;
use App\xuatxu;
use App\gia;
use Carbon\Carbon;
use DateTime;
use App\mausanpham;
use Validator;
use File;
session_start();

class SanphamController extends Controller
{
     public function getdanhsach_binhluan(){
     $binhluan=binhluan::orderby('bl_id','DESC')->get();
     $phanhoi=phanhoi::orderby('bl_id','DESC')->get();
     return view('quanly.banhang.binhluan.danhsach_binhluan')->with('binhluan',$binhluan)->with('phanhoi',$phanhoi);
    }
     public function postduyet_binhluan(Request $request){
        $data=$request->all();
        $binhluan=binhluan::find($data['bl_id']);
        $binhluan->bl_trangthai=$data['bl_trangthai'];
        $binhluan->save();
    }
      public function postphanhoi_binhluan(Request $request){
        $data=$request->all();
        $phanhoi = new phanhoi();
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $phanhoi->ph_ngay = now();
        $phanhoi->bl_id=$data['bl_id'];
        $phanhoi->ph_noidung=$data['ph_noidung'];
        $phanhoi->id=$data['nv_id'];
        $phanhoi->save();
    }
    public function getdanhsach_sp(){
      $sp=sanpham::all();
      $current_day = Carbon::now('Asia/Ho_Chi_Minh');
      return view('quanly.kho.sanpham.danhsach_sp',['sp'=>$sp],['current_day'=>$current_day]);
    }
       public function gettao_sp(){
        $khohang=khohang::all();
        $ncc=nhacungcap::all();
        $th=thuonghieu::all();
        $xx=xuatxu::all();
        return view('quanly.kho.sanpham.tao_sp')->with('khohang',$khohang)->with('ncc',$ncc)->with('th',$th)->with('xx',$xx);
         
        // echo "<pre>";
        // echo print_r($sp);
        //   echo "</pre>";
    }
    public function gettinhtrang(Request $request){
      $tinhtrang=$request->tinhtrang;
          $output=' <table class= "table table-bordered table-striped" id="dataTables-example">';
       if($tinhtrang==1){
        $search = $request->get('query');
      if($search==''){
        $sp=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
        ->where('mausanpham.mausp_soluong','>=',10)->orderby('mausp_soluong','asc')->get();}
        else{
            $sp=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
        ->where([['mausanpham.mausp_soluong','>=',10],['mausp_soluong','<=',$search]])->orderby('mausp_soluong','asc')->get();
        }
         $i=1;
              $output.="<thead>
          <tr>
             <th>STT</th>
            <th>Mã mẫu sản phẩm</th>
            <th>Tên mẫu sản phẩm</th>
            <th>Kho</th>
            <th>Thương hiệu</th>
            <th>Số lượng</th>
          
    
          </tr>
        </thead>
        <tbody>";
         foreach($sp as $key => $dssp){
        
             $output.='<tr>
              <td>'. $i++.'</td>
             <td>MAUSP00'. $dssp->mausp_id.'</td>
             <td>'.$dssp->mausp_ten.'</td>
             <td>'.$dssp->kho_ten.'</td>
             <td>'.$dssp->th_ten.'</td>
             <td style="color: black;">'.$dssp->mausp_soluong.'</td></tr>';
        
           
        }
          $output.='</tbody></table>';
            echo $output;
       }
       elseif ($tinhtrang==2){
         $search = $request->get('query');
      if($search==''){
          $sp=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
          ->whereBetween('mausanpham.mausp_soluong',[1,9]) ->orderby('mausp_soluong','asc')->get();}
          else{
             $sp=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
          ->whereBetween('mausanpham.mausp_soluong',[1,9])->where('mausp_soluong','<=',$search)->orderby('mausp_soluong','asc')->get();
          }
           $i=1;
              $output.="<thead>
          <tr>
             <th>STT</th>
               <th>Mã mẫu sản phẩm</th>
            <th>Tên mẫu sản phẩm</th>
            <th>Kho</th>
            <th>Thương hiệu</th>
            <th>Số lượng</th>
          
    
          </tr>
        </thead>
        <tbody>";
         foreach($sp as $key => $dssp){
          
           
             $output.='<tr style="background-color:#ff1a1a;" >
               <td style="color: black;"><b>'. $i++.'</b></td>
               <td style="color: black;"><b>MAUSP00'. $dssp->mausp_id.'</b></td>
              <td style="color: black;"><b>'.$dssp->mausp_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->kho_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->th_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->mausp_soluong.'</b></td></tr>';
           

           
        }
          $output.='</tbody></table>';
            echo $output;
       }
        elseif ($tinhtrang==3){
           $search = $request->get('query');
      if($search==''){
          $sp=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
          ->where('mausanpham.mausp_soluong','=',0)->orderby('mausp_soluong','asc')->get();}
          else{
              $sp=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
          ->where([['mausanpham.mausp_soluong','=',0],['mausp_soluong','<=',$search]])->orderby('mausp_soluong','asc')->get();
          }
            $i=1;
              $output.="<thead>
          <tr>
             <th>STT</th>
             <th>Mã mẫu sản phẩm</th>
            <th>Tên mẫu sản phẩm</th>
            <th>Kho</th>
            <th>Thương hiệu</th>
            <th>Số lượng</th>
         
    
          </tr>
        </thead>
        <tbody>";
          foreach($sp as $key => $dssp){
          
            $output.='<tr style="background-color:#ffff33;" >
             <td style="color: black;"><b>'. $i++.'</b></td>
            <td style="color: black;"><b>MAUSP00'. $dssp->mausp_id.'</b></td>
              <td style="color: black;"><b>'.$dssp->mausp_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->kho_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->th_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->mausp_soluong.'</b></td></tr>';

           
        }
          $output.='</tbody></table>';
            echo $output;
       }
       elseif  ($tinhtrang==0){
                $search = $request->get('query');
      if($search==''){
       $sp=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
         ->orderby('mausp_soluong','asc')
         ->get();
       }
         else{
             $sp=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
        ->where('mausp_soluong','<=',$search)
        ->orderby('mausp_soluong','asc')
         ->get();
         }
      $i=1;
               $output.="<thead>
          <tr>
            <th>STT</th>
            <th>Mã mẫu sản phẩm</th>
            <th>Tên mẫusản phẩm</th>
            <th>Kho</th>
            <th>Thương hiệu</th>
            <th>Số lượng</th>
          
    
          </tr>
        </thead>
        <tbody>";
         foreach($sp as $key => $dssp){
           if($dssp->mausp_soluong>=10){
             $output.='<tr>
             <td>'. $i++.'</td>
             <td>MAUSP00'. $dssp->mausp_id.'</td>
             <td>'.$dssp->mausp_ten.'</td>
             <td>'.$dssp->kho_ten.'</td>
             <td>'.$dssp->th_ten.'</td>
             <td style="color: black;">'.$dssp->mausp_soluong.'</td></tr>';}
            if($dssp->mausp_soluong>=1 && $dssp->mausp_soluong<=9){
             $output.='<tr style="background-color:#ff1a1a;" >
              <td style="color: black;"><b>'. $i++.'</b></td>
              <td style="color: black;"><b>MAUSP00'. $dssp->mausp_id.'</b></td>
              <td style="color: black;"><b>'.$dssp->mausp_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->kho_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->th_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->mausp_soluong.'</b></td></tr>';}
             if($dssp->mausp_soluong==0){
            $output.='<tr style="background-color:#ffff33;" >
               <td style="color: black;"><b>'. $i++.'</b></td>
              <td style="color: black;"><b>MAUSP00'. $dssp->mausp_id.'</b></td>
              <td style="color: black;"><b>'.$dssp->mausp_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->kho_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->th_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->mausp_soluong.'</b></td></tr>';}

           
        }
          $output.='</tbody></table>';
              echo $output;
       }

    }
      public function getton_sp(){
       $sp=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
         ->orderby('mausp_soluong','asc')
         ->get();
      $i=1;
         $output=' <table class= "table table-bordered table-striped" id="dataTables-example">';
            $output.="<thead>
          <tr>
             <th>STT</th>
              <th>Mã mẫu sản phẩm</th>
            <th>Tên mẫu sản phẩm</th>
            <th>Kho</th>
            <th>Thương hiệu</th>
            <th>Số lượng</th>
        
    
          </tr>
        </thead>
        <tbody>";
        foreach($sp as $key => $dssp){
           if($dssp->mausp_soluong>=10){
             $output.='<tr>
             <td>'. $i++.'</td>
              <td>MAUSP00'. $dssp->mausp_id.'</td>
             <td>'.$dssp->mausp_ten.'</td>
             <td>'.$dssp->kho_ten.'</td>
             <td>'.$dssp->th_ten.'</td>
             <td style="color: black;">'.$dssp->mausp_soluong.'</td></tr>';}
            if($dssp->mausp_soluong>=1 && $dssp->mausp_soluong<=9){
             $output.='<tr style="background-color:#ff1a1a;" >
             <td style="color: black;"><b>'. $i++.'</b></td>
               <td style="color: black;"><b>MAUSP00'. $dssp->mausp_id.'</b></td>
              <td style="color: black;"><b>'.$dssp->mausp_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->kho_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->th_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->mausp_soluong.'</b></td></tr>';}
             if($dssp->mausp_soluong==0){
            $output.='<tr style="background-color:#ffff33;" >
            <td style="color: black;"><b>'. $i++.'</b></td>
             <td style="color: black;"><b>MAUSP00'. $dssp->mausp_id.'</b></td>
              <td style="color: black;"><b>'.$dssp->mausp_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->kho_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->th_ten.'</b></td>
              <td style="color: black;"><b>'.$dssp->mausp_soluong.'</b></td></tr>';}

           
        }
          $output.='</tbody></table>';
         
     
       return view('quanly.kho.sanpham.ton_sp')->with('sp',$sp)->with('output',$output);
    }
   public function posttao_sp(Request $request){
      $this->validate($request,[
          'sp_ten'=> 'unique:sanpham,sp_ten',
                'sp_thongtin'=>'required',
                 'sp_tskt'=>'required',
                  'sp_posttag'=>'required',
                  'kho_id'=>'required',
                'th_id'=>'required',
                'ncc_id'=>'required',
                'xx_id'=>'required',

      ],
      [
          'sp_ten.unique'=>'Tên sản phẩm đã tồn tại',
                'sp_thongtin.required'=>'Bạn chưa nhập thông tin sản phẩm',
                 'sp_tskt.required'=>'Bạn chưa nhập thông số kỹ thuật sản phẩm',
                 'sp_posttag.required'=>'Bạn chưa nhập màu sản phẩm',
                 'kho_id.required'=>'Bạn chưa chọn kho',
                 'th_id.required'=>'Bạn chưa chọn thương hiệu',
                 'ncc_id.required'=>'Bạn chưa chọn nhà cung cấp',
                 'xx_id.required'=>'Bạn chưa chọn xuất xứ',
      ]);

    try{
    $tagsArray = explode(',',$request->sp_posttag);
    foreach($tagsArray as $tag) {

        $tagName = '"'.trim($tag).'"';
        $tagsLinksArray[] = $tagName;
    }

    
    $tagsLinks = implode(',', $tagsLinksArray);

  

       
   
          
        $sp =new sanpham;
      $sp->sp_ten=$request->sp_ten;
      $sp->sp_nhan =Str::slug($request->sp_ten, '-');
      $sp->th_id=$request->th_id;
      $sp->kho_id=$request->kho_id;
      $sp->ncc_id=$request->ncc_id;
      $sp->xx_id=$request->xx_id;
      $sp->sp_soluong=0;
      $sp->sp_hienthi=1;
      $sp->sp_dongianhap=filter_var($request->sp_dongianhap, FILTER_SANITIZE_NUMBER_INT);
      $sp->sp_tskt=$request->sp_tskt;
      $sp->sp_thongtin=$request->sp_thongtin;
      $sp->sp_mausac=$tagsLinks;
      date_default_timezone_set('Asia/Ho_Chi_Minh');
        $sp->sp_ngaytaomoi = now();
        $sp->sp_ngaycapnhat= now();
          $get_image = $request->file('sp_hinh');
        if($get_image){
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/sanpham',$new_image);
            $sp->sp_hinh = $new_image;
                   
        }
        else{
            $sp->sp_hinh="";
        }
             $sp->save();
      $tag=$request->sp_posttag;
      $tag=explode(",", $tag);
      foreach ($tag as $key => $value) {
         $mau=mau::where('mau_ten',$value)->first();
         $mausanpham=new mausanpham;
         $mausanpham->mausp_ten=$request->sp_ten."(".$mau->mau_ten.")";
         $mausanpham->mausp_soluong=0;
         $mausanpham->sp_id=$sp->sp_id;
         $mausanpham->mau_id=$mau->mau_id;
         $mausanpham->mausp_hienthi=1;
         $mausanpham->save();
      }
        $gia_giatri = $request->gia_giatri;
           $gia_ngayapdung = $request->gia_ngayapdung;
             for($count = 0; $count < count($gia_ngayapdung); $count++)
      {
       
       $data = array(
        'sp_id'=>$sp->sp_id,
        'gia_ngayapdung' => $gia_ngayapdung[$count],
        'gia_giatri'  => filter_var($gia_giatri[$count], FILTER_SANITIZE_NUMBER_INT),
        
       );
       $insert_data[] = $data; 
      }
      
      gia::insert($insert_data);
         return redirect('banhang/danhsach-sp')->with('thongbao','Tạo sản phẩm thành công');  }
           catch (\Exception $e)  {
     
      return redirect('banhang/danhsach-sp')->with('thongbao','Tạo sản phẩm không thành công');
}
    
        
        
    }


    public function posttaopnk_sp(Request $request){
        $this->validate($request,[
          'sp_ten'=> 'unique:sanpham,sp_ten',
                'sp_thongtin'=>'required',
                  'sp_tskt'=>'required',
                  'sp_posttag'=>'required',
                  'kho_id'=>'required',
                'th_id'=>'required',
                'ncc_id'=>'required',
                'xx_id'=>'required',

      ],
      [
                 'sp_ten.unique'=>'Tên sản phẩm đã tồn tại',
                 'sp_thongtin.required'=>'Bạn chưa nhập thông tin sản phẩm',
                 'sp_tskt.required'=>'Bạn chưa nhập thông số kỹ thuật sản phẩm',
                 'sp_posttag.required'=>'Bạn chưa nhập màu sản phẩm',
                 'kho_id.required'=>'Bạn chưa chọn kho',
                 'th_id.required'=>'Bạn chưa chọn thương hiệu',
                 'ncc_id.required'=>'Bạn chưa chọn nhà cung cấp',
                 'xx_id.required'=>'Bạn chưa chọn xuất xứ',
      ]);

      try{
//THÊM "" cho tag
       $tagsArray = explode(',',$request->sp_posttag);
    foreach($tagsArray as $tag) {

        $tagName = '"'.trim($tag).'"';
        $tagsLinksArray[] = $tagName;
    }

    
    $tagsLinks = implode(',', $tagsLinksArray);
    //
          
        $sp =new sanpham;
      $sp->sp_ten=$request->sp_ten;
      $sp->sp_nhan =Str::slug($request->sp_ten, '-');
      $sp->th_id=$request->th_id;
      $sp->kho_id=$request->kho_id;
      $sp->ncc_id=$request->ncc_id;
      $sp->xx_id=$request->xx_id;
      $sp->sp_soluong=0;
      $sp->sp_hienthi=1;
      $sp->sp_dongianhap=filter_var($request->sp_dongianhap, FILTER_SANITIZE_NUMBER_INT);
      $sp->sp_tskt=$request->sp_tskt;
      $sp->sp_thongtin=$request->sp_thongtin;
      $sp->sp_mausac= $tagsLinks;
      date_default_timezone_set('Asia/Ho_Chi_Minh');
        $sp->sp_ngaytaomoi = now();
        $sp->sp_ngaycapnhat= now();
          $get_image = $request->file('sp_hinh');
        if($get_image){
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/sanpham',$new_image);
            $sp->sp_hinh = $new_image;
                   
        }
        else{
            $sp->sp_hinh="";
        }
             $sp->save();
      $tag=$request->sp_posttag;
      $tag=explode(",", $tag);
      foreach ($tag as $key => $value) {
         $mau=mau::where('mau_ten',$value)->first();
         $mausanpham=new mausanpham;
         $mausanpham->mausp_ten=$request->sp_ten."(".$mau->mau_ten.")";
         $mausanpham->mausp_soluong=0;
         $mausanpham->sp_id=$sp->sp_id;
         $mausanpham->mau_id=$mau->mau_id;
         $mausanpham->mausp_hienthi=1;
         $mausanpham->save();
      }
 $gia_giatri = $request->gia_giatri;
           $gia_ngayapdung = $request->gia_ngayapdung;
             for($count = 0; $count < count($gia_ngayapdung); $count++)
      {
       
       $data = array(
        'sp_id'=>$sp->sp_id,
        'gia_ngayapdung' => $gia_ngayapdung[$count],
        'gia_giatri'  =>  filter_var($gia_giatri[$count], FILTER_SANITIZE_NUMBER_INT),
        
       );
       $insert_data[] = $data; 
      }
      
      gia::insert($insert_data);
        $kho=sanpham::find($sp->sp_id);
        $ncc=sanpham::find($sp->sp_id);

       $ctptncc=DB::table('sanpham')
      ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
     ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
    ->join('nhacungcap','nhacungcap.ncc_id','=','sanpham.ncc_id')
     ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
     ->where([['sanpham.sp_id',$sp->sp_id],['mausanpham.mausp_hienthi',1]])->get();
      return view('quanly.kho.sanpham.taopnk_sp')->with('ctptncc',$ctptncc)->with('kho',$kho)->with('ncc',$ncc);}
        catch (\Exception $e)  {
     
      return redirect('banhang/danhsach-sp')->with('thongbao','Tạo sản phẩm không thành công');
}
    
        
        
    }
 
   public function getsua_sp($sp_id){
     
      $sp=sanpham::find($sp_id);
      $khohang=khohang::all();
      $th=thuonghieu::all();
      $ncc=nhacungcap::all();
      $xx=xuatxu::all();
     $gia=DB::table('gia')->where('sp_id',$sp_id)->orderby('gia_ngayapdung','ASC')->get();
      return view('quanly.kho.sanpham.sua_sp')->with('sp',$sp)->with('khohang',$khohang)->with('th',$th)->with('ncc',$ncc)->with('xx',$xx)->with('gia',$gia);
    }
   public function postsua_sp(Request $request,$sp_id){
    $this->validate($request,[
               'sp_ten'=> 'required',
                'sp_thongtin'=>'required',
                  'sp_tskt'=>'required',
                  'sp_posttag'=>'required',
                  'kho_id'=>'required',
                'th_id'=>'required',
                'ncc_id'=>'required',
                'xx_id'=>'required',

      ],
      [
                 'sp_ten.required'=>'Bạn chưa nhập tên sản phẩm',
                 'sp_thongtin.required'=>'Bạn chưa nhập thông tin sản phẩm',
                 'sp_tskt.required'=>'Bạn chưa nhập thông số kỹ thuật sản phẩm',
                 'sp_posttag.required'=>'Bạn chưa nhập màu sản phẩm',
                 'kho_id.required'=>'Bạn chưa chọn kho',
                 'th_id.required'=>'Bạn chưa chọn thương hiệu',
                 'ncc_id.required'=>'Bạn chưa chọn nhà cung cấp',
                 'xx_id.required'=>'Bạn chưa chọn xuất xứ',
      ]);
    try{
      //THÊM "" cho tag
       $tagsArray = explode(',',$request->sp_posttag);
    
    foreach($tagsArray as $tag) {

        $tagName = '"'.trim($tag).'"';
        $tagsLinksArray[] = $tagName;
    }

    
    $tagsLinks = implode(',', $tagsLinksArray);
    //
                 
$mausp=DB::table('mausanpham')->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')->join('mau','mau.mau_id','=','mausanpham.mau_id')->where('sanpham.sp_id',$sp_id)->get();
         foreach ($mausp as $key => $valueten) {
             $data1 = array();
             $ten=str_replace($valueten->sp_ten, $request->sp_ten, $valueten->mausp_ten);
             $data1['mausp_ten'] =$ten;
              DB::table('mausanpham')->where('mausp_id',$valueten->mausp_id)->update($data1); 

             
        }
      $sp=sanpham::find($sp_id);
      $sp->sp_ten=$request->sp_ten;
      $sp->sp_nhan =Str::slug($request->sp_ten, '-');
      $sp->th_id=$request->th_id;
      $sp->kho_id=$request->kho_id;
      $sp->ncc_id=$request->ncc_id;
      $sp->xx_id=$request->xx_id;
      $sp->sp_dongianhap=filter_var($request->sp_dongianhap, FILTER_SANITIZE_NUMBER_INT);
      $sp->sp_tskt=$request->sp_tskt;
      $sp->sp_thongtin=$request->sp_thongtin;
      $sp->sp_mausac= $tagsLinks;
      date_default_timezone_set('Asia/Ho_Chi_Minh');
        $sp->sp_ngaycapnhat= now();
          $get_image = $request->file('sp_hinh');
      if($get_image){
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/sanpham',$new_image);
            $sp->sp_hinh = $new_image;
            
        }
            $sp->save();
      $tag=$request->sp_posttag;
      $tag=explode(",", $tag);

      foreach ($tag as $key => $value) {
         $mau=mau::where('mau_ten',$value)->first();
         $mausanpham=DB::table('mausanpham')->where([['sp_id',$sp_id],['mau_id',$mau->mau_id]])->first();
       
         if($mausanpham==null){
         $mausanpham=new mausanpham;
         $mausanpham->mausp_ten=$request->sp_ten."(".$mau->mau_ten.")";
         $mausanpham->mausp_soluong=0;
         $mausanpham->sp_id=$sp->sp_id;
         $mausanpham->mau_id=$mau->mau_id;
         $mausanpham->mausp_hienthi=1;
         $mausanpham->save();}

      }
        $mausanpham=DB::table('mausanpham')->where('sp_id',$sp_id)->get();
       foreach ($mausanpham as $key => $value1) {
         DB::table('mausanpham')->where('sp_id',$sp_id)->update(['mausp_hienthi'=>0]);
        foreach ($tag as $key => $value2) {
               $mau2=mau::where('mau_ten',$value2)->first();
                DB::table('mausanpham')->where([['sp_id',$sp_id],['mau_id',$mau2->mau_id]])->update(['mausp_hienthi'=>1]);

        }

      
       }
 if($request->gia_ngayapdung!=''){
        $gia_giatri = $request->gia_giatri;
           $gia_ngayapdung = $request->gia_ngayapdung;
             for($count = 0; $count < count($gia_ngayapdung); $count++)
      {
       
       $data = array(
        'sp_id'=>$sp->sp_id,
        'gia_ngayapdung' => $gia_ngayapdung[$count],
        'gia_giatri'  =>  filter_var($gia_giatri[$count], FILTER_SANITIZE_NUMBER_INT),
        
       );
       $insert_data[] = $data; 
      }
      
      gia::insert($insert_data);}
            return redirect('banhang/danhsach-sp')->with('thongbao','Sửa thông tin sản phẩm thành công');}
        
 catch (\Exception $e)  {
     
          return redirect('banhang/danhsach-sp')->with('thongbao','Tên sản phẩm đã tồn tại ');
}
  
        

    }
    public function posttaopnksua_sp(Request $request,$sp_id){
        $this->validate($request,[
               'sp_ten'=> 'required',
                'sp_thongtin'=>'required',
                  'sp_tskt'=>'required',
                  'sp_posttag'=>'required',
                  'kho_id'=>'required',
                'th_id'=>'required',
                'ncc_id'=>'required',
                'xx_id'=>'required',

      ],
      [
                 'sp_ten.required'=>'Bạn chưa nhập tên sản phẩm',
                 'sp_thongtin.required'=>'Bạn chưa nhập thông tin sản phẩm',
                 'sp_tskt.required'=>'Bạn chưa nhập thông số kỹ thuật sản phẩm',
                 'sp_posttag.required'=>'Bạn chưa nhập màu sản phẩm',
                 'kho_id.required'=>'Bạn chưa chọn kho',
                 'th_id.required'=>'Bạn chưa chọn thương hiệu',
                 'ncc_id.required'=>'Bạn chưa chọn nhà cung cấp',
                 'xx_id.required'=>'Bạn chưa chọn xuất xứ',
      ]);
      try{
        //THÊM "" cho tag
       $tagsArray = explode(',',$request->sp_posttag);
    foreach($tagsArray as $tag) {

        $tagName = '"'.trim($tag).'"';
        $tagsLinksArray[] = $tagName;
    }

    
    $tagsLinks = implode(',', $tagsLinksArray);
    //
           
$mausp=DB::table('mausanpham')->join('sanpham','sanpham.sp_id','=','mausanpham.sp_id')->join('mau','mau.mau_id','=','mausanpham.mau_id')->where('sanpham.sp_id',$sp_id)->get();
         foreach ($mausp as $key => $valueten) {
             $data1 = array();
             $ten=str_replace($valueten->sp_ten, $request->sp_ten, $valueten->mausp_ten);
             $data1['mausp_ten'] =$ten;
              DB::table('mausanpham')->where('mausp_id',$valueten->mausp_id)->update($data1); 

             
        }
      $sp=sanpham::find($sp_id);
      $sp->sp_ten=$request->sp_ten;
      $sp->sp_nhan =Str::slug($request->sp_ten, '-');
      $sp->th_id=$request->th_id;
      $sp->kho_id=$request->kho_id;
      $sp->ncc_id=$request->ncc_id;
      $sp->xx_id=$request->xx_id;
      $sp->sp_dongianhap=filter_var($request->sp_dongianhap, FILTER_SANITIZE_NUMBER_INT);
      $sp->sp_tskt=$request->sp_tskt;
      $sp->sp_thongtin=$request->sp_thongtin;
      $sp->sp_mausac=  $tagsLinks;
      date_default_timezone_set('Asia/Ho_Chi_Minh');
        $sp->sp_ngaycapnhat= now();
          $get_image = $request->file('sp_hinh');
      if($get_image){
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/sanpham',$new_image);
            $sp->sp_hinh = $new_image;
            
        }
            $sp->save();
      $tag=$request->sp_posttag;
      $tag=explode(",", $tag);

      foreach ($tag as $key => $value) {
         $mau=mau::where('mau_ten',$value)->first();
         $mausanpham=DB::table('mausanpham')->where([['sp_id',$sp_id],['mau_id',$mau->mau_id]])->first();
       
         if($mausanpham==null){
         $mausanpham=new mausanpham;
         $mausanpham->mausp_ten=$request->sp_ten."(".$mau->mau_ten.")";
         $mausanpham->mausp_soluong=0;
         $mausanpham->sp_id=$sp->sp_id;
         $mausanpham->mau_id=$mau->mau_id;
         $mausanpham->mausp_hienthi=1;
         $mausanpham->save();}

      }
        $mausanpham=DB::table('mausanpham')->where('sp_id',$sp_id)->get();
       foreach ($mausanpham as $key => $value1) {
         DB::table('mausanpham')->where('sp_id',$sp_id)->update(['mausp_hienthi'=>0]);
        foreach ($tag as $key => $value2) {
               $mau2=mau::where('mau_ten',$value2)->first();
                DB::table('mausanpham')->where([['sp_id',$sp_id],['mau_id',$mau2->mau_id]])->update(['mausp_hienthi'=>1]);

        }

      
       }
        if($request->gia_ngayapdung!=''){
       $gia_giatri = $request->gia_giatri;
           $gia_ngayapdung = $request->gia_ngayapdung;
             for($count = 0; $count < count($gia_ngayapdung); $count++)
      {
       
       $data = array(
        'sp_id'=>$sp->sp_id,
        'gia_ngayapdung' => $gia_ngayapdung[$count],
        'gia_giatri'  => filter_var($gia_giatri[$count], FILTER_SANITIZE_NUMBER_INT),
        
       );
       $insert_data[] = $data; 
      }
      
      gia::insert($insert_data);}
        
        $kho=sanpham::find($sp_id);
        $ncc=sanpham::find($sp_id);

       $ctptncc=DB::table('sanpham')
      ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
     ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
    ->join('nhacungcap','nhacungcap.ncc_id','=','sanpham.ncc_id')
     ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
     ->where([['sanpham.sp_id',$sp_id],['mausanpham.mausp_hienthi',1]])->get();
      return view('quanly.kho.sanpham.taopnk_sp')->with('ctptncc',$ctptncc)->with('kho',$kho)->with('ncc',$ncc);
        }
        catch (\Exception $e)  {
     
          return redirect('banhang/danhsach-sp')->with('thongbao','Tên sản phẩm đã tồn tại');
}

  
        

    }
     
   public function getxoa_sp($sp_id){
        $sp=sanpham::find($sp_id);
       
       try {
           $sp->delete();
           return redirect('banhang/danhsach-sp')->with('thongbao','Bạn đã xóa sản phẩm thành công');
  
} catch (\Exception $e)  {
     return redirect('banhang/danhsach-sp')->with('thongbao','Bạn đã xóa sản phẩm không thành công (do sản phẩm có ràng buộc dữ liệu)');
}
       
    }
       public function khongkichhoat_sp($sp_id){
        DB::table('sanpham')->where('sp_id',$sp_id)->update(['sp_hienthi'=>1]);
         return redirect('banhang/danhsach-sp')->with('thongbao','Không kích hoạt sản phẩm thành công');

    }
    public function kichhoat_sp($sp_id){
       $sp=DB::table('sanpham')->where('sp_id',$sp_id)->first();
        if($sp->sp_soluong>0){
           DB::table('sanpham')->where('sp_id',$sp_id)->update(['sp_hienthi'=>0]);
           return redirect('banhang/danhsach-sp')->with('thongbao','Kich hoạt  sản phẩm thành công');
      }
        else{
        return redirect('banhang/danhsach-sp')->with('thongbao','Kich hoạt  sản phẩm không thành công');
        }
        
       
   
    }
    public function getmausac(){
        $tags=mau::all()->pluck('mau_ten')->toArray();
    return response($tags);
    }

   public  function inserttaosp(Request $request)
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

    $messages['ctncc_soluong.'.$key.'.required'] = 'Bạn chưa nhập dòng thứ '.$val.' của cột Số lượng nhập.';
   
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
      $ctncc_soluong = $request->ctncc_soluong;
      $ctncc_dongia=$request->ctncc_dongia;
        for($count1 = 0; $count1 < count($mausp_id); $count1++)
      {
        $product= DB::table('mausanpham')->where('mausp_id',$mausp_id[$count1])->get();
           foreach ($product as $key => $value) {
             $value1=$value->mausp_soluong+$ctncc_soluong[$count1];
                $data1 = array();
             $data1['mausp_soluong'] =$value1;
              DB::table('mausanpham')->where('mausp_id',$mausp_id[$count1] )->update($data1); 
                $data2 = array();
              $sp= DB::table('sanpham')->where('sp_id',$value->sp_id)->get();
             foreach ($sp as $key => $value2) {
              $value3=$value2->sp_soluong+$ctncc_soluong[$count1];
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
        'ctpn_soluong'  => $ctncc_soluong[$count],
        'ctpn_dongia'  => $ctncc_dongia[$count]
       );
       $insert_data[] = $data; 
      }
      
      chitietphieunhap::insert($insert_data);
      return response()->json([
       'success'  => 'Phiếu nhập được tạo thành công.'
      ]);
     
  
      }
       
     }


      public function pdf_ton_sp(Request $request){
 
       $current_day = Carbon::now('Asia/Ho_Chi_Minh');
      
       $date=date("Y-m-d", strtotime($current_day));
       $tinhtrang=$request->tinhtrang;
       $search = $request->search_text;
       if($search==''){
           if($tinhtrang==1){
        $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
        ->where('mausanpham.mausp_soluong','>=',10)->orderby('mausp_soluong','asc')->get();}
         elseif ($tinhtrang==2){
          $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
          ->whereBetween('mausanpham.mausp_soluong',[1,9])->orderby('mausp_soluong','asc')->get();}
           elseif ($tinhtrang==3){
          $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
          ->where('mausanpham.mausp_soluong','=',0)->orderby('mausp_soluong','asc')->get();}
           elseif  ($tinhtrang==0){
                $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
        ->orderby('mausp_soluong','asc')
         ->get();}
       }
       else{
          if($tinhtrang==1){
          $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
        ->where([['mausanpham.mausp_soluong','>=',10],['mausp_soluong','<=',$search]])->orderby('mausp_soluong','asc')->get();}
         elseif ($tinhtrang==2){
            $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
          ->whereBetween('mausanpham.mausp_soluong',[1,9])->where('mausp_soluong','<=',$search)->orderby('mausp_soluong','asc')->get();}
           elseif ($tinhtrang==3){
             $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
          ->where([['mausanpham.mausp_soluong','=',0],['mausp_soluong','<=',$search]])->orderby('mausp_soluong','asc')->get();
        }
           elseif  ($tinhtrang==0){
             $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
        ->where('mausp_soluong','<=',$search)
        ->orderby('mausp_soluong','asc')
         ->get();
               }
       }

        $data4 = [
        'date' => $date,
        'tinhtrang'=>$tinhtrang,
        'search'=>$search,
        'data'=>$data,
    ];
  
   
     $pdf = PDF::loadView('quanly.kho.sanpham.pdf_ton_sp',$data4);
 $pdf->setPaper('A4','landscape');
    return $pdf->stream();
    }



     public function excel_ton_sp(Request $request){
 
      $current_day = Carbon::now('Asia/Ho_Chi_Minh');
      
       $date=date("Y-m-d", strtotime($current_day));
   
                $tinhtrang=$request->tinhtrang;
                 $search = $request->search_text;
       if($search==''){
           if($tinhtrang==1){
        $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
        ->where('mausanpham.mausp_soluong','>=',10)->orderby('mausp_soluong','asc')->get();}
         elseif ($tinhtrang==2){
          $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
          ->whereBetween('mausanpham.mausp_soluong',[1,9])->orderby('mausp_soluong','asc')->get();}
           elseif ($tinhtrang==3){
          $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
          ->where('mausanpham.mausp_soluong','=',0)->orderby('mausp_soluong','asc')->get();}
           elseif  ($tinhtrang==0){
                $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
        ->orderby('mausp_soluong','asc')
         ->get();}
       }
       else{
          if($tinhtrang==1){
          $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
        ->where([['mausanpham.mausp_soluong','>=',10],['mausp_soluong','<=',$search]])->orderby('mausp_soluong','asc')->get();}
         elseif ($tinhtrang==2){
            $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
          ->whereBetween('mausanpham.mausp_soluong',[1,9])->where('mausp_soluong','<=',$search)->orderby('mausp_soluong','asc')->get();}
           elseif ($tinhtrang==3){
             $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
          ->where([['mausanpham.mausp_soluong','=',0],['mausp_soluong','<=',$search]])->orderby('mausp_soluong','asc')->get();
        }
           elseif  ($tinhtrang==0){
             $data=DB::table('sanpham')
        ->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')
        ->join('nhacungcap','sanpham.ncc_id','=','nhacungcap.ncc_id')
        ->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')
        ->join('khohang','sanpham.kho_id','=','khohang.kho_id')
        ->where('mausp_soluong','<=',$search)
        ->orderby('mausp_soluong','asc')
         ->get();
               }
       }

        $data4 = [
        'date' => $date,
        'tinhtrang'=>$tinhtrang,
        'search'=>$search,
        'data'=>$data,
    ];
   
   
    return Excel::download(new Dsspton_Export($date,$data,$tinhtrang,$search), 'Danhsach_sanpham_ton.xlsx');
    }

}
