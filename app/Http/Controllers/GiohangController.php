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
use Cart;
use App\dondathang;
use App\mausanpham;
use App\mau;
use App\hinhanh;
use App\khachhang;
use App\phieuxuatkho;
use Carbon\Carbon;
use DateTime;
session_start();

class GiohangController extends Controller
{
     public function xem_giohang(Request $request){
      //seo 
        $meta_desc = "Giỏ hàng"; 
        $meta_keywords = "Giỏ hàng";
        $meta_title = "Giỏ hàng";
        $url_canonical = $request->url();
        //--seo 
        return view('trang.giohang.xem_giohang')->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical);
    }
   public function them_giohang(Request $request,$sp_nhan){
    	   $productId = $request->productid_hidden;
        $quantity = $request->qty;
          $current_day = Carbon::now('Asia/Ho_Chi_Minh');
         $date=date("Y-m-d", strtotime($current_day));
         $content = Cart::content();
         $check=0;
         $product_info1 =   DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('mausanpham','mausanpham.sp_id','=','sanpham.sp_id')->where('mausanpham.mausp_id',$productId)->first();
         foreach ($content as $key => $value) {
             if($value->id==$productId && $value->qty+$quantity>$product_info1->mausp_soluong){
                $check=1;
             }

         }
         if($check==0){
        
        $product_info =   DB::table('sanpham')->join('gia', function ($join) use ($date) {
            $join->on('sanpham.sp_id', '=', 'gia.sp_id')
          ->where('gia_ngayapdung', '=', DB::raw("(select gia_ngayapdung from gia WHERE gia.sp_id = sanpham.sp_id and gia.gia_ngayapdung<= '".$date."' ORDER by gia.gia_ngayapdung desc limit 1)"));
          
            ;
        })->leftjoin('khuyenmai','sanpham.khuyenmai_id','=','khuyenmai.khuyenmai_id')->join('mausanpham','mausanpham.sp_id','=','sanpham.sp_id')->where('mausanpham.mausp_id',$productId)->first();
        if($quantity<=$product_info->mausp_soluong){

        $price=0;
       
       
         $product_promotion=($product_info->gia_giatri*$product_info->khuyenmai_giatri)/100;
         $price=$product_info->gia_giatri-$product_promotion;
    
        // Cart::add('293ad', 'Product 1', 1, 9.99, 550);
        // Cart::destroy();
        $data['id'] = $product_info->mausp_id;
        $data['qty'] = $quantity;
        $data['name'] = $product_info->mausp_ten;
        //Lấy ngày hiện tại ra so sánh với ngày khuyến mãi
       
       $date1=date("Y-m-d", strtotime($product_info->khuyenmai_ngaybatdau));
        $date2=date("Y-m-d", strtotime($product_info->khuyenmai_ngayketthuc));
        if($date>=$date1 && $date<=$date2){
             $data['price']=$price;
        }
        else{
        $data['price'] = $product_info->gia_giatri;

        }
        $data['weight'] = $product_info->gia_giatri;
        $data['options']['image'] = $product_info->sp_hinh;
        Cart::add($data);
        // Cart::destroy();
        return Redirect::to('/xem-giohang');}
        else{
        Session::put('message','Bạn đã nhập vượt qua số lượng mẫu sản phẩm');
        return Redirect::to('/chi-tiet-san-pham/'.$sp_nhan);
        }
    }
     else{
        Session::put('message','Bạn đã thêm sản phẩm vào giỏ hàng và nhập vượt qua số lượng mẫu sản phẩm');
        return Redirect::to('/chi-tiet-san-pham/'.$sp_nhan);
        }
       
       
    }
     public function xoa_giohang(){
        $cart = Session::get('cart');
        if($cart==true){
            // Session::destroy();
            Session::forget('cart');
            return redirect()->back()->with('message','Xóa hết giỏ thành công');
        }
    }
      public function xoa_sanpham($rowId){
        Cart::update($rowId,0);
        return Redirect::to('/xem-giohang');
    }
        public function capnhat_soluong(Request $request){
        $rowId = $request->rowId_cart;
        $qty = $request->cart_quantity;
        $productId=$request->Id_cart;
       
        $product_info = DB::table('sanpham')->join('mausanpham','mausanpham.sp_id','=','sanpham.sp_id')->where('mausanpham.mausp_id',$productId)->first(); 

        if($qty<=$product_info->mausp_soluong){
     Session::put('message','Bạn đã cập nhật số lượng mẫu sản phẩm thành công');
        Cart::update($rowId,$qty);
        return Redirect::to('/xem-giohang');}
        else{
        Session::put('error','Bạn đã nhập vượt qua số lượng mẫu sản phẩm');
            return Redirect::to('/xem-giohang');
        }

     }
      
}
