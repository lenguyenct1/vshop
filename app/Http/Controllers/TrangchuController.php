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
use App\danhgia;
use App\gia;
use App\binhluan;
use App\phanhoi;
use App\mausanpham;
use App\mau;
use Carbon\Carbon;
use DateTime;
session_start();

class TrangchuController extends Controller
{
    
    public function trangchu(Request $request){
       $meta_desc = "Trang chủ"; 
        $meta_keywords = "trangchu";
        $meta_title = "Trang chủ Vshop";
        $url_canonical = $request->url();
          $current_day = Carbon::now('Asia/Ho_Chi_Minh');
            $date=date("Y-m-d", strtotime($current_day));
     $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->orderby('sanpham.sp_id','desc')->limit(6)->get();
      $km = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->join('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0'],['khuyenmai.khuyenmai_ngayketthuc','>=',$date],['khuyenmai.khuyenmai_ngaybatdau','<=',$date]])->orderby('sanpham.sp_id','desc')->limit(6)->get();
       $nb = DB::table('sanpham')->selectRaw('ROUND(AVG(dg_danhgia)) as danhgiasp')->selectRaw('sanpham.*')->selectRaw('khuyenmai.*')->selectRaw('gia.*')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('danhgia','sanpham.sp_id','=','danhgia.sp_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->groupby('sanpham.sp_id','sanpham.th_id','sanpham.sp_nhan','sanpham.kho_id','sanpham.sp_ten','sanpham.sp_dongianhap','sanpham.sp_hinh','sanpham.sp_soluong','sanpham.sp_thongtin','sanpham.sp_ngaytaomoi','sanpham.sp_ngaycapnhat','sanpham.khuyenmai_id','sanpham.sp_hienthi','sanpham.ncc_id','sanpham.sp_mausac','sanpham.xx_id','khuyenmai.khuyenmai_id','khuyenmai.khuyenmai_ten','khuyenmai.khuyenmai_ngaybatdau','khuyenmai.khuyenmai_ngayketthuc','khuyenmai.khuyenmai_giatri','khuyenmai.id','gia.sp_id','gia.gia_ngayapdung','gia.gia_giatri','sanpham.sp_tskt')->havingRaw("danhgiasp > 3")->orderby('danhgiasp','desc')->limit(6)->get();
       $spbc = DB::table('sanpham')->selectRaw('SUM(chitietdathang.ctdh_soluong) as value')->selectRaw('sanpham.*')->selectRaw('khuyenmai.*')->selectRaw('gia.*')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('mausanpham','sanpham.sp_id','=','mausanpham.sp_id')->join('chitietdathang','chitietdathang.mausp_id','=','mausanpham.mausp_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->groupby('sanpham.sp_id','sanpham.th_id','sanpham.sp_nhan','sanpham.kho_id','sanpham.sp_ten','sanpham.sp_dongianhap','sanpham.sp_hinh','sanpham.sp_soluong','sanpham.sp_thongtin','sanpham.sp_ngaytaomoi','sanpham.sp_ngaycapnhat','sanpham.khuyenmai_id','sanpham.sp_hienthi','sanpham.ncc_id','sanpham.sp_mausac','sanpham.xx_id','khuyenmai.khuyenmai_id','khuyenmai.khuyenmai_ten','khuyenmai.khuyenmai_ngaybatdau','khuyenmai.khuyenmai_ngayketthuc','khuyenmai.khuyenmai_giatri','khuyenmai.id','gia.sp_id','gia.gia_ngayapdung','gia.gia_giatri','sanpham.sp_tskt')->orderby('value','desc')->limit(6)->get();
      return view('trang.sanpham.trangchu')->with('sp',$sp)->with('spbc',$spbc)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('date',$date)->with('km',$km)->with('nb',$nb);
    }
      public function offline(Request $request){
         $meta_desc = "Ngoại tuyến"; 
        $meta_keywords = "Ngoại tuyến";
        $meta_title = "Vshop ngoại tuyến";
        $url_canonical = $request->url();
      return view('vendor.laravelpwa.offline')->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical);
    }
public  function autocomplete(Request $request)
    {
         $current_day = Carbon::now('Asia/Ho_Chi_Minh');
           $date=date("Y-m-d", strtotime($current_day));
      $search=  $request->term;
        
        $posts =   DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_ten','like','%'.$search.'%'],['sanpham.sp_hienthi', '=', '0'],['sp_soluong','>','0']])->get();
          $output = array();
        if(!$posts->isEmpty())
        {
            foreach($posts as $post)
            {
                 $new_row = array();
                $new_row['value']= $post->sp_ten;
              $new_row['label']= '<img src="upload/sanpham/'.$post->sp_hinh.'" width="70" />&nbsp;&nbsp;&nbsp;'.$post->sp_ten.'';
               
                
                $row_set[] = $new_row; //build an array
            }
        }
        else
             {
              $output['value'] = '';
              $output['label'] = 'Không tìm thấy sản phẩm';
             }
        
        echo json_encode($row_set); 
    }


      public function postthem_binhluan(Request $request){
        $sp_id=$request->sp_id;
        $kh_id=$request->kh_id;
        $bl_noidung=$request->bl_noidung;
            $bl = new binhluan();
            date_default_timezone_set('Asia/Ho_Chi_Minh');
            $bl->bl_ngay = now();
            $bl->bl_noidung = $bl_noidung;
            $bl->sp_id = $sp_id;
            $bl->kh_id = $kh_id;
            $bl->bl_trangthai=1;
            $bl->save();
    }
     public function timkiem(Request $request){
      //seo 
        $meta_desc = "Tìm kiếm sản phẩm"; 
        $meta_keywords = "Tìm kiếm sản phẩm";
        $meta_title = "Tìm kiếm sản phẩm";
        $url_canonical = $request->url();
        //--seo
           $min_gia=gia::min('gia_giatri');
         $max_gia=gia::max('gia_giatri');      
         $max=$max_gia+20000000;
          $current_day = Carbon::now('Asia/Ho_Chi_Minh');
           $date=date("Y-m-d", strtotime($current_day));
        $keywords = $request->keywords_submit;
          if(isset($_GET['sort_timkiem'])){
          $sort_timkiem=$_GET['sort_timkiem'];
         if($sort_timkiem=='tang_dan'){
         $timkiem = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_ten','like','%'.$keywords.'%'],['sanpham.sp_hienthi', '=', '0'],['sp_soluong','>','0']])->orderby('gia.gia_giatri','asc')->paginate(6)->appends(request()->query());
         
         }
          elseif($sort_timkiem=='giam_dan'){
          $timkiem = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_ten','like','%'.$keywords.'%'],['sanpham.sp_hienthi', '=', '0'],['sp_soluong','>','0']])->orderby('gia.gia_giatri','desc')->paginate(6)->appends(request()->query());
         
         }
          elseif($sort_timkiem=='kytu_az'){
            $timkiem = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_ten','like','%'.$keywords.'%'],['sanpham.sp_hienthi', '=', '0'],['sp_soluong','>','0']])->orderby('sanpham.sp_ten','asc')->paginate(6)->appends(request()->query());
         
         }
          elseif($sort_timkiem=='kytu_za'){
         $timkiem = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_ten','like','%'.$keywords.'%'],['sanpham.sp_hienthi', '=', '0'],['sp_soluong','>','0']])->orderby('sanpham.sp_ten','desc')->paginate(6)->appends(request()->query());
         
         }
        
       }
         elseif(isset($_GET['giabatdau'])&& $_GET['giaketthuc']){
            $min_price=$_GET['giabatdau'];
            $max_price=$_GET['giaketthuc'];
             $timkiem = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_ten','like','%'.$keywords.'%'],['sanpham.sp_hienthi', '=', '0'],['sp_soluong','>','0']])->whereBetween('gia.gia_giatri',[$min_price,$max_price])->orderby('gia.gia_giatri','asc')->paginate(6)->appends(request()->query());
       
        
         
         }
         else{
           $timkiem = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_ten','like','%'.$keywords.'%'],['sanpham.sp_hienthi', '=', '0'],['sp_soluong','>','0']])->orderby('sanpham.sp_id','desc')->paginate(6);}

       
        return view('trang.sanpham.timkiem')->with('timkiem',$timkiem)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('date',$date)->with('max',$max)->with('max_gia',$max_gia)->with('min_gia',$min_gia);
    }
     public function thuonghieu_sanpham(Request $request,$th_nhan){
         $current_day = Carbon::now('Asia/Ho_Chi_Minh');
          $min_gia=gia::min('gia_giatri');
         $max_gia=gia::max('gia_giatri');
        
         $max=$max_gia+20000000;
           $date=date("Y-m-d", strtotime($current_day));
           if(isset($_GET['sort_thuonghieu'])){
          $sort_thuonghieu=$_GET['sort_thuonghieu'];
         if($sort_thuonghieu=='tang_dan'){
          $th_by_id = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')->where([['thuonghieu.th_nhan',$th_nhan],['sanpham.sp_hienthi', '=', '0'],['sanpham.sp_soluong','>','0']])->orderby('gia.gia_giatri','asc')->paginate(6)->appends(request()->query());
         
         }
          elseif($sort_thuonghieu=='giam_dan'){
          $th_by_id = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')->where([['thuonghieu.th_nhan',$th_nhan],['sanpham.sp_hienthi', '=', '0'],['sanpham.sp_soluong','>','0']])->orderby('gia.gia_giatri','desc')->paginate(6)->appends(request()->query());
         
         }
          elseif($sort_thuonghieu=='kytu_az'){
           $th_by_id = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')->where([['thuonghieu.th_nhan',$th_nhan],['sanpham.sp_hienthi', '=', '0'],['sanpham.sp_soluong','>','0']])->orderby('sanpham.sp_ten','asc')->paginate(6)->appends(request()->query());
         
         }
          elseif($sort_thuonghieu=='kytu_za'){
         $th_by_id = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')->where([['thuonghieu.th_nhan',$th_nhan],['sanpham.sp_hienthi', '=', '0'],['sanpham.sp_soluong','>','0']])->orderby('sanpham.sp_ten','desc')->paginate(6)->appends(request()->query());
         
         }
        
       }
         elseif(isset($_GET['giabatdau'])&& $_GET['giaketthuc']){
            $min_price=$_GET['giabatdau'];
            $max_price=$_GET['giaketthuc'];
             $th_by_id = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')->where([['thuonghieu.th_nhan',$th_nhan],['sanpham.sp_hienthi', '=', '0'],['sanpham.sp_soluong','>','0']])->whereBetween('gia.gia_giatri',[$min_price,$max_price])->orderby('gia.gia_giatri','asc')->paginate(6)->appends(request()->query());
        
         
         }
         else{
           $th_by_id = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')->where([['thuonghieu.th_nhan',$th_nhan],['sanpham.sp_hienthi', '=', '0'],['sanpham.sp_soluong','>','0']])->orderby('sanpham.sp_id','desc')->paginate(6);}


       
        $th_ten = DB::table('thuonghieu')->where('thuonghieu.th_nhan',$th_nhan)->limit(1)->get();
        foreach ($th_ten as $key => $val) {
                $meta_desc = $val->th_ten; 
                $meta_keywords = $val->th_ten;
                $meta_title = $val->th_ten;
                $url_canonical = $request->url();
        }
                
        return view('trang.thuonghieu.thuonghieu_sanpham')->with('th_by_id',$th_by_id)->with('th_ten',$th_ten)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('date',$date)->with('max',$max)->with('max_gia',$max_gia)->with('min_gia',$min_gia);
    }
     public function chitietsanpham(Request $request,$sp_nhan){
         $current_day = Carbon::now('Asia/Ho_Chi_Minh');
          $date=date("Y-m-d", strtotime($current_day));
      $sp_chitiet =  DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')->where([['sanpham.sp_nhan',$sp_nhan],['sanpham.sp_hienthi', '=', '0'],['sp_soluong','>','0']])->get();

        foreach($sp_chitiet as $key => $value){
            $th_id = $value->th_id; 
            $sp_id=$value->sp_id;  
            $th_ten = $value->th_ten; 
            $th_nhan = $value->th_nhan; 
            $sp_ten=$value->sp_ten;
            $sp_nhan=$value->sp_nhan;
              //seo 
                $meta_desc = $value->sp_ten;
                $meta_keywords = $value->sp_ten;
                $meta_title = $value->sp_ten;
                $url_canonical = $request->url();
                $image_og= url('upload/sanpham/'.$value->sp_hinh);
              
                //--seo


              
        }
       
       $mausanpham= DB::table('mausanpham')
        ->join('sanpham','mausanpham.sp_id','=','sanpham.sp_id')
         ->join('mau','mausanpham.mau_id','=','mau.mau_id')
       ->where([['sanpham.sp_id',$sp_id],['mausanpham.mausp_hienthi',1]])->get();
        $mausanpham1= DB::table('mausanpham')
        ->join('sanpham','mausanpham.sp_id','=','sanpham.sp_id')
         ->join('mau','mausanpham.mau_id','=','mau.mau_id')
       ->where([['sanpham.sp_id',$sp_id],['mausanpham.mausp_hienthi',1]])->limit(1)->get();
       foreach ($mausanpham1 as $key => $value1) {
        $mausp_id=$value1->mausp_id;
       }
         $hinhanh=DB::table('hinhanh')->join('mausanpham','mausanpham.mausp_id','=','hinhanh.mausp_id')->where('hinhanh.mausp_id',$mausp_id)->get();
        $splienquan =  DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('thuonghieu','sanpham.th_id','=','thuonghieu.th_id')->where([['thuonghieu.th_id',$th_id],['sanpham.sp_hienthi', '=', '0'],['sp_soluong','>','0']])->whereNotIn('sanpham.sp_nhan',[$sp_nhan])->orderby(DB::raw('RAND()'))->limit(6)->get();


       
       
        $danhgia=danhgia::where('sp_id',$sp_id)->avg('dg_danhgia');
        $dgc=danhgia::where('sp_id',$sp_id)->count();
        $danhgia=round($danhgia);


         $binhluan=DB::table('binhluan')
        ->join('khachhang','binhluan.kh_id','=','khachhang.kh_id')
        ->join('sanpham','sanpham.sp_id','=','binhluan.sp_id')
        ->where('binhluan.sp_id',$sp_id)->where('bl_trangthai',0)->orderby('binhluan.bl_id','desc')->paginate(2);
        $phanhoi=DB::table('phanhoi')
        ->join('nhanvien','phanhoi.id','=','nhanvien.id')->get();

         return view('trang.sanpham.chitietsanpham')->with('sp_chitiet',$sp_chitiet)->with('splienquan',$splienquan)->with('mausanpham',$mausanpham)->with('danhgia',$danhgia)->with('dgc',$dgc)->with('th_ten',$th_ten)->with('th_nhan',$th_nhan)->with('sp_ten',$sp_ten)->with('hinhanh',$hinhanh)->with('binhluan',$binhluan)->with('phanhoi',$phanhoi)->with('mausanpham1',$mausanpham1)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('image_og',$image_og)->with('date',$date);

    }
        public function sanpham(Request $request){

        $meta_desc = "Sản phẩm"; 
        $meta_keywords = "sản phẩm";
        $meta_title = "Sản phẩm Vshop";
        $url_canonical = $request->url();
        $current_day = Carbon::now('Asia/Ho_Chi_Minh');
        $min_gia=gia::min('gia_giatri');
         $max_gia=gia::max('gia_giatri');
         $max=$max_gia+20000000;
        $date=date("Y-m-d", strtotime($current_day));

          if(isset($_GET['sort_sanpham'])){
          $sort_sanpham=$_GET['sort_sanpham'];
         if($sort_sanpham=='tang_dan'){
           $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->orderby('gia.gia_giatri','asc')->paginate(6)->appends(request()->query());
         
         }
          elseif($sort_sanpham=='giam_dan'){
           $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->orderby('gia.gia_giatri','desc')->paginate(6)->appends(request()->query());
         
         }
          elseif($sort_sanpham=='kytu_az'){
           $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->orderby('sanpham.sp_ten','asc')->paginate(6)->appends(request()->query());
         
         }
          elseif($sort_sanpham=='kytu_za'){
           $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->orderby('sanpham.sp_ten','desc')->paginate(6)->appends(request()->query());
         
         }
        
       }
         elseif(isset($_GET['giabatdau'])&& $_GET['giaketthuc']){
            $min_price=$_GET['giabatdau'];
            $max_price=$_GET['giaketthuc'];
           $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->whereBetween('gia.gia_giatri',[$min_price,$max_price])->orderby('gia.gia_giatri','asc')->paginate(6)->appends(request()->query());
         
         }
         else{
           $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->orderby('sanpham.sp_id','desc')->paginate(6);}
         

        return view('trang.sanpham.sanpham')->with('sp',$sp)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('date',$date)->with('max',$max)->with('max_gia',$max_gia)->with('min_gia',$min_gia);
    }

 public function khuyenmai(Request $request){

        $meta_desc = "Khuyến mãi"; 
        $meta_keywords = "Khuyến mãi";
        $meta_title = "Sản phẩm khuyến mãi";
        $url_canonical = $request->url();
        $current_day = Carbon::now('Asia/Ho_Chi_Minh');
        $min_gia=gia::min('gia_giatri');
         $max_gia=gia::max('gia_giatri');
         $max=$max_gia+20000000;
        $date=date("Y-m-d", strtotime($current_day));

          if(isset($_GET['sort_khuyenmai'])){
          $sort_khuyenmai=$_GET['sort_khuyenmai'];
         if($sort_khuyenmai=='tang_dan'){
           $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->join('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0'],['khuyenmai.khuyenmai_ngayketthuc','>=',$date],['khuyenmai.khuyenmai_ngaybatdau','<=',$date]])->orderby('gia.gia_giatri','asc')->paginate(6)->appends(request()->query());
         
         }
          elseif($sort_khuyenmai=='giam_dan'){
           $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->join('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0'],['khuyenmai.khuyenmai_ngayketthuc','>=',$date],['khuyenmai.khuyenmai_ngaybatdau','<=',$date]])->orderby('gia.gia_giatri','desc')->paginate(6)->appends(request()->query());
         
         }
          elseif($sort_khuyenmai=='kytu_az'){
           $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->join('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0'],['khuyenmai.khuyenmai_ngayketthuc','>=',$date],['khuyenmai.khuyenmai_ngaybatdau','<=',$date]])->orderby('sanpham.sp_ten','asc')->paginate(6)->appends(request()->query());
         
         }
          elseif($sort_khuyenmai=='kytu_za'){
           $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->join('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0'],['khuyenmai.khuyenmai_ngayketthuc','>=',$date],['khuyenmai.khuyenmai_ngaybatdau','<=',$date]])->orderby('sanpham.sp_ten','desc')->paginate(6)->appends(request()->query());
         
         }
        
       }
         elseif(isset($_GET['giabatdau'])&& $_GET['giaketthuc']){
            $min_price=$_GET['giabatdau'];
            $max_price=$_GET['giaketthuc'];
           $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->join('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0'],['khuyenmai.khuyenmai_ngayketthuc','>=',$date],['khuyenmai.khuyenmai_ngaybatdau','<=',$date]])->whereBetween('gia.gia_giatri',[$min_price,$max_price])->orderby('gia.gia_giatri','asc')->paginate(6)->appends(request()->query());
         
         }
         else{
           $sp = DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->join('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->where([['sp_hienthi','0'],['sp_soluong','>','0'],['khuyenmai.khuyenmai_ngayketthuc','>=',$date],['khuyenmai.khuyenmai_ngaybatdau','<=',$date]])->orderby('sanpham.sp_id','desc')->paginate(6);}
         

        return view('trang.sanpham.khuyenmai')->with('sp',$sp)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('date',$date)->with('max',$max)->with('max_gia',$max_gia)->with('min_gia',$min_gia);
    }

public function noibat(Request $request){

        $meta_desc = "Nổi bật"; 
        $meta_keywords = "Nổi bật";
        $meta_title = "Sản phẩm nổi bật";
        $url_canonical = $request->url();
        $current_day = Carbon::now('Asia/Ho_Chi_Minh');
        $min_gia=gia::min('gia_giatri');
         $max_gia=gia::max('gia_giatri');
         $max=$max_gia+20000000;
        $date=date("Y-m-d", strtotime($current_day));

          if(isset($_GET['sort_noibat'])){
          $sort_noibat=$_GET['sort_noibat'];
         if($sort_noibat=='tang_dan'){
         $sp = DB::table('sanpham')->selectRaw('ROUND(AVG(dg_danhgia)) as danhgiasp')->selectRaw('sanpham.sp_id,sanpham.sp_ten,sanpham.sp_nhan,sanpham.sp_hinh,sanpham.sp_hienthi')->selectRaw('khuyenmai.*')->selectRaw('gia.gia_ngayapdung,gia.gia_giatri')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('danhgia','sanpham.sp_id','=','danhgia.sp_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->groupby('sanpham.sp_id','sanpham.sp_nhan','sanpham.sp_ten','sanpham.sp_hinh','sanpham.sp_hienthi','khuyenmai.khuyenmai_id','khuyenmai.khuyenmai_ten','khuyenmai.khuyenmai_ngaybatdau','khuyenmai.khuyenmai_ngayketthuc','khuyenmai.khuyenmai_giatri','khuyenmai.id','gia.sp_id','gia.gia_ngayapdung','gia.gia_giatri','sanpham.sp_tskt')->havingRaw("danhgiasp > 3")->orderby('gia_giatri','asc')->paginate(6)->appends(request()->query());

         
         }
          elseif($sort_noibat=='giam_dan'){
             $sp = DB::table('sanpham')->selectRaw('ROUND(AVG(dg_danhgia)) as danhgiasp')->selectRaw('sanpham.sp_id,sanpham.sp_ten,sanpham.sp_nhan,sanpham.sp_hinh,sanpham.sp_hienthi')->selectRaw('khuyenmai.*')->selectRaw('gia.gia_ngayapdung,gia.gia_giatri')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('danhgia','sanpham.sp_id','=','danhgia.sp_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->groupby('sanpham.sp_id','sanpham.sp_nhan','sanpham.sp_ten','sanpham.sp_hinh','sanpham.sp_hienthi','khuyenmai.khuyenmai_id','khuyenmai.khuyenmai_ten','khuyenmai.khuyenmai_ngaybatdau','khuyenmai.khuyenmai_ngayketthuc','khuyenmai.khuyenmai_giatri','khuyenmai.id','gia.sp_id','gia.gia_ngayapdung','gia.gia_giatri','sanpham.sp_tskt')->havingRaw("danhgiasp > 3")->orderby('gia.gia_giatri','desc')->paginate(6)->appends(request()->query());

         
         }
          elseif($sort_noibat=='kytu_az'){
           $sp = DB::table('sanpham')->selectRaw('ROUND(AVG(dg_danhgia)) as danhgiasp')->selectRaw('sanpham.sp_id,sanpham.sp_ten,sanpham.sp_nhan,sanpham.sp_hinh,sanpham.sp_hienthi')->selectRaw('khuyenmai.*')->selectRaw('gia.gia_ngayapdung,gia.gia_giatri')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('danhgia','sanpham.sp_id','=','danhgia.sp_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->groupby('sanpham.sp_id','sanpham.sp_nhan','sanpham.sp_ten','sanpham.sp_hinh','sanpham.sp_hienthi','khuyenmai.khuyenmai_id','khuyenmai.khuyenmai_ten','khuyenmai.khuyenmai_ngaybatdau','khuyenmai.khuyenmai_ngayketthuc','khuyenmai.khuyenmai_giatri','khuyenmai.id','gia.sp_id','gia.gia_ngayapdung','gia.gia_giatri','sanpham.sp_tskt')->havingRaw("danhgiasp > 3")->orderby('sanpham.sp_ten','asc')->paginate(6)->appends(request()->query());

         
         }
          elseif($sort_noibat=='kytu_za'){
              $sp = DB::table('sanpham')->selectRaw('ROUND(AVG(dg_danhgia)) as danhgiasp')->selectRaw('sanpham.sp_id,sanpham.sp_ten,sanpham.sp_nhan,sanpham.sp_hinh,sanpham.sp_hienthi')->selectRaw('khuyenmai.*')->selectRaw('gia.gia_ngayapdung,gia.gia_giatri')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('danhgia','sanpham.sp_id','=','danhgia.sp_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->groupby('sanpham.sp_id','sanpham.sp_nhan','sanpham.sp_ten','sanpham.sp_hinh','sanpham.sp_hienthi','khuyenmai.khuyenmai_id','khuyenmai.khuyenmai_ten','khuyenmai.khuyenmai_ngaybatdau','khuyenmai.khuyenmai_ngayketthuc','khuyenmai.khuyenmai_giatri','khuyenmai.id','gia.sp_id','gia.gia_ngayapdung','gia.gia_giatri','sanpham.sp_tskt')->havingRaw("danhgiasp > 3")->orderby('sanpham.sp_ten','desc')->paginate(6)->appends(request()->query());

        
         
         }
        
       }
         elseif(isset($_GET['giabatdau'])&& $_GET['giaketthuc']){
            $min_price=$_GET['giabatdau'];
            $max_price=$_GET['giaketthuc'];
             $sp = DB::table('sanpham')->selectRaw('ROUND(AVG(dg_danhgia)) as danhgiasp')->selectRaw('sanpham.sp_id,sanpham.sp_ten,sanpham.sp_nhan,sanpham.sp_hinh,sanpham.sp_hienthi')->selectRaw('khuyenmai.*')->selectRaw('gia.gia_ngayapdung,gia.gia_giatri')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('danhgia','sanpham.sp_id','=','danhgia.sp_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->groupby('sanpham.sp_id','sanpham.sp_nhan','sanpham.sp_ten','sanpham.sp_hinh','sanpham.sp_hienthi','khuyenmai.khuyenmai_id','khuyenmai.khuyenmai_ten','khuyenmai.khuyenmai_ngaybatdau','khuyenmai.khuyenmai_ngayketthuc','khuyenmai.khuyenmai_giatri','khuyenmai.id','gia.sp_id','gia.gia_ngayapdung','gia.gia_giatri','sanpham.sp_tskt')->whereBetween('gia.gia_giatri',[$min_price,$max_price])->havingRaw("danhgiasp > 3")->orderby('gia.gia_giatri','asc')->paginate(6)->appends(request()->query());


           
         
         
         }
         else{
           $sp = DB::table('sanpham')->selectRaw('ROUND(AVG(dg_danhgia)) as danhgiasp')->selectRaw('sanpham.sp_id,sanpham.sp_ten,sanpham.sp_nhan,sanpham.sp_hinh,sanpham.sp_hienthi')->selectRaw('khuyenmai.*')->selectRaw('gia.gia_ngayapdung,gia.gia_giatri')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('danhgia','sanpham.sp_id','=','danhgia.sp_id')->where([['sp_hienthi','0'],['sp_soluong','>','0']])->groupby('sanpham.sp_id','sanpham.sp_nhan','sanpham.sp_ten','sanpham.sp_hinh','sanpham.sp_hienthi','khuyenmai.khuyenmai_id','khuyenmai.khuyenmai_ten','khuyenmai.khuyenmai_ngaybatdau','khuyenmai.khuyenmai_ngayketthuc','khuyenmai.khuyenmai_giatri','khuyenmai.id','gia.sp_id','gia.gia_ngayapdung','gia.gia_giatri','sanpham.sp_tskt')->havingRaw("danhgiasp > 3")->orderby('danhgiasp','desc')->paginate(6);}
         

        return view('trang.sanpham.noibat')->with('sp',$sp)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('date',$date)->with('max',$max)->with('max_gia',$max_gia)->with('min_gia',$min_gia);
    }

     public function hinhanh_mausp(Request $request){
        $mausanphamload= DB::table('mausanpham')
        ->join('sanpham','mausanpham.sp_id','=','sanpham.sp_id')
         ->join('mau','mausanpham.mau_id','=','mau.mau_id')
       ->where([['sanpham.sp_id',$request->sp_id],['mausanpham.mausp_hienthi',1]])->get();
      
          $hinhanh=DB::table('hinhanh')->join('mausanpham','mausanpham.mausp_id','=','hinhanh.mausp_id')->where('hinhanh.mausp_id',$request->mausp_id)->get();
            $mausanpham=DB::table('mausanpham')->where('mausanpham.mausp_id',$request->mausp_id)->get();
            $hinhanh_dem=DB::table('hinhanh')->join('mausanpham','mausanpham.mausp_id','=','hinhanh.mausp_id')->where('hinhanh.mausp_id',$request->mausp_id)->count();
            if($hinhanh_dem>0){
          foreach ($hinhanh as $key => $dshinhanh1) {
           $soluong=$dshinhanh1->mausp_soluong;
           $mausp_id=$dshinhanh1->mausp_id;
          }
             $output='
               <input type="hidden" value="'.$soluong.'" id="slm"/>
                 <input type="hidden" value="'.$mausp_id.'" id="mauspid1"/>
             <ul id="imageGallery">

             ';
             foreach($hinhanh as $key => $dshinhanh){
            $output.='  
                  <li data-thumb="'.url('upload/hinhanh/'.$dshinhanh->hinhanh_hinh).'" data-src="'.url('upload/hinhanh/'.$dshinhanh->hinhanh_hinh).'">
                    <img style="width:100%;" alt="'.$dshinhanh->hinhanh_ten.'"  src="'.url('upload/hinhanh/'.$dshinhanh->hinhanh_hinh).'"/>
                  </li>
                 ';}
                  $output.='</ul>';
                    $output.=' <div class="slider">';
               foreach($mausanphamload as $key => $dsmausp){
              $output.='  <div>
                   <button class="mau_id" value="'.$dsmausp->mausp_id.'" style="background-color: '.$dsmausp->mau_giatri.';"></button>
                </div>';
                 }
               $output.='<div>
                <button style="background: white; padding: inherit;"><img  style=" width: 100px; height: 100px;" src="'.url('frontend/images/360image.png').'"   id="360image"></button>
              </div>
              
                
              </div>';
        return $output;
      }
      else{
          foreach ($mausanpham as $key => $value) {
            $soluong=$value->mausp_soluong;
           $mausp_id=$value->mausp_id;
          }
           $output='';
             $output.='<input type="hidden" value="'.$soluong.'" id="slm"/>
                 <input type="hidden" value="'.$mausp_id.'" id="mauspid1"/>';
                   echo "<h3 style='color:red;'>Mẫu sản phẩm chưa có hình ảnh</h3>";
                  return $output;
      }
    }

     public function hinhanh_xoay(Request $request){
        $mausanphamload= DB::table('mausanpham')
        ->join('sanpham','mausanpham.sp_id','=','sanpham.sp_id')
         ->join('mau','mausanpham.mau_id','=','mau.mau_id')
       ->where([['sanpham.sp_id',$request->sp_id],['mausanpham.mausp_hienthi',1]])->get();
      
          $hinhanh=DB::table('hinhanh')->where([['hinhanh.sp_id',$request->sp_id],['hinhanh.mausp_id',null]])->get();
          if(!$hinhanh->isEmpty()){
          foreach ($hinhanh as $key => $value) {
           $hinhanh_ten=$value->hinhanh_ten;
          }
         $hinhanh_ten1=strrpos( $hinhanh_ten, "-" );
       $hinhanh_ten2=substr($hinhanh_ten,0,$hinhanh_ten1+1);
        $output='';
         $output.="    <style>             .cloudimage-360 .cloudimage-360-prev, .cloudimage-360 .cloudimage-360-next {
  padding: 8px;
  background: rgba(255, 255, 255, 0.5);
  border: none;
  border-radius: 4px;
}
.cloudimage-360 .cloudimage-360-prev:focus, .cloudimage-360 .cloudimage-360-next:focus {
  outline: none;
}
.cloudimage-360 .cloudimage-360-prev {
  display: none;
  position: absolute;
  z-index: 100;
  top: calc(50% - 15px);
  left: 20px;
}
.cloudimage-360 .cloudimage-360-next {
  display: none;
  position: absolute;
  z-index: 100;
  top: calc(50% - 15px);
  right: 20px;
}
.cloudimage-360 .cloudimage-360-prev:before, .cloudimage-360 .cloudimage-360-next:before {
  content: '';
  display: block;
  width: 30px;
  height: 30px;
  background: 50% 50% / cover no-repeat;
}
.cloudimage-360 .cloudimage-360-prev:before {
  background-image: url('https://cdn.scaleflex.it/plugins/js-cloudimage-360-view/assets/img/arrow-left.svg');
}
.cloudimage-360 .cloudimage-360-next:before {
  background-image: url('https://cdn.scaleflex.it/plugins/js-cloudimage-360-view/assets/img/arrow-right.svg');
}
.cloudimage-360 .cloudimage-360-prev.not-active, .cloudimage-360 .cloudimage-360-next.not-active {
  opacity: 0.4;
  cursor: default;
}</style>";
         $output.='<div  
                           class="cloudimage-360"
                           data-folder="upload/hinhanh/"
                           data-filename="'.$hinhanh_ten2.'{index}.jpg"
                           data-amount="36"
                           data-box-shadow="inset 0 0 100px #222"
                           data-bottom-circle="true"
                           data-autoplay="true"
                           data-magnifier="2"
                          data-full-screen ="true"
                        >     <button class="cloudimage-360-prev"></button>
  <button class="cloudimage-360-next"></button></div>
                       ';
                        $output.=' <div class="slider">';
                        foreach($mausanphamload as $key => $dsmausp){
              $output.='  <div>
                   <button class="mau_id" value="'.$dsmausp->mausp_id.'" style="background-color: '.$dsmausp->mau_giatri.';"></button>
                </div>';
                 }
               $output.='<div>
                <button style="background: white; padding: inherit;"><img  style=" width: 100px; height: 100px;" src="'.url('frontend/images/360image.png').'"   id="360image"></button>
              </div>
              
                
              </div>';
            echo $output;}
            else {
              echo "<h3 style='color:red;'>Sản phẩm chưa có ảnh 360</h3>";
            }
             
            
    }
     public function postthem_danhgia(Request $request){

          $data=$request->all();
          $danhgia =  new danhgia();
          $danhgia->sp_id=$data['sp_id'];
          $danhgia->dg_danhgia=$data['index'];
          $danhgia->save();
          echo 'done';
    }
            }

