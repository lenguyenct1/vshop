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
use App\khachhang;
use App\chitietdathang;
use App\chitietphieuxuat;
use App\phieuxuatkho;
use App\vanchuyen;
session_start();

class ThanhtoanController extends Controller
{

 public function xacnhan_dathang(Request $request){
         $data = $request->all();
if($data!=''){
            //don dat hang
            $ddh = new dondathang();
            $ddh->kh_id= $data['khachhang'];
            date_default_timezone_set('Asia/Ho_Chi_Minh');
            $ddh->ddh_ngaylap = now();
            $ddh->ddh_trangthai = 1;
            $ddh->vc_id = $data['vc_id'];
            $ddh->ddh_sdt = $data['shipping_phone'];
            $ddh->ddh_diachi = $data['shipping_address'];
            $ddh->tt_id =  $data['shipping_method'];
            $ddh->ddh_tong =  $data['shipping_total'];
            $ddh->save();
           

             $content = Cart::content();
             $content1 = Cart::content();
           
             
             // Cap nhat so luong hang
             foreach ($content1 as $key => $v_content1) {
   
            $id1=$v_content1->id;
            $qty1=$v_content1->qty;
            $product=  DB::table('sanpham')->join('mausanpham','mausanpham.sp_id','=','sanpham.sp_id')->where('mausanpham.mausp_id',$id1)->get();
            
             foreach ($product as $key => $value) {
                 $value1=$value->mausp_soluong-$qty1;           
             $data = array();
             $data['mausp_soluong'] =$value1;      
            DB::table('mausanpham')->where('mausp_id', $id1 )->update($data); 
              $value2=$value->sp_soluong-$qty1;           
             $data2 = array();
             $data2['sp_soluong'] =$value2;    
             
             if($value2==0){
                 $data2['sp_hienthi']=1;
             }
             
            DB::table('sanpham')->where('sp_id', $value->sp_id )->update($data2); 
            
             }
         
        }
               foreach ($content as $key => $v_content) {
               $data1 = array();
               $data1['mausp_id'] = $v_content->id;
               $data1['ddh_id'] = $ddh->ddh_id ;
               $data1['ctdh_soluong'] = $v_content->qty;
               $data1['ctdh_dongia'] = $v_content->price;
               DB::table('chitietdathang')->insert($data1);
               }
           
        
          Session::forget('cart');}
         

       
    }
  public function thanhtoan_online($id){

        if($id==2){

              $output='';
            $output.='
            <div class="form-group">
                        <label for="bank_code">Ng??n h??ng</label>
                        <select name="bank_code" id="bank_code" class="form-control">
                            <option value="">Kh??ng ch???n</option>
                            <option value="NCB"> Ng??n h??ng NCB</option>
                            <option value="AGRIBANK"> Ng??n h??ng Agribank</option>
                            <option value="SCB"> Ng??n h??ng SCB</option>
                            <option value="SACOMBANK">Ng??n h??ng SacomBank</option>
                            <option value="EXIMBANK"> Ng??n h??ng EximBank</option>
                            <option value="MSBANK"> Ng??n h??ng MSBANK</option>
                            <option value="NAMABANK"> Ng??n h??ng NamABank</option>
                            <option value="VNMART"> V?? ??i???n t??? VnMart</option>
                            <option value="VIETINBANK">Ng??n h??ng Vietinbank</option>
                            <option value="VIETCOMBANK"> Ng??n h??ng VCB</option>
                            <option value="HDBANK">Ng??n h??ng HDBank</option>
                            <option value="DONGABANK"> Ngan h??ng ????ng ??</option>
                            <option value="TPBANK"> Ng??n h??ng TPBank</option>
                            <option value="OJB"> Ng??n h??ng OceanBank</option>
                            <option value="BIDV"> Ng??n h??ng BIDV</option>
                            <option value="TECHCOMBANK"> Ng??n h??ng Techcombank</option>
                            <option value="VPBANK"> Ng??n h??ng VPBank</option>
                            <option value="MBBANK"> Ng??n h??ng MBBank</option>
                            <option value="ACB"> Ng??n h??ng ACB</option>
                            <option value="OCB"> Ng??n h??ng OCB</option>
                            <option value="IVB"> Ng??n h??ng IVB</option>
                            <option value="VISA"> Thanh to??n qua VISA/MASTER</option>
                        </select>
                    </div>
                    <input style="width: -webkit-fill-available;height: 38px;" type="submit" value="Thanh to??n online" name="send_online" class="btn btn-primary btn-sm send_online" formaction="'.url('/create').'"/>';
        }
       
        else{
              
               $output='';
            $output.='';
        }
             echo $output;
        
    }
    public function create(Request $request)
    {
          
         session(["vc_id"=>$request->input('vc_id')]);
         session(["shipping_phone"=>$request->input('shipping_phone')]);
         session(["shipping_address"=>$request->input('shipping_address')]);
         session(["shipping_total"=>$request->input('shipping_total')]);
        session(['url_prev' => url()->previous()]);
        $vnp_TmnCode = "P9J6HQLE"; //M?? website t???i VNPAY 
        $vnp_HashSecret = "NHXIDTGYXFWIFILOBWHNONZZTBZJOEHE"; //Chu???i b?? m???t
        $vnp_Url = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
        $vnp_Returnurl = url('return');
        $vnp_TxnRef = date("YmdHis"); //M?? ????n h??ng. Trong th???c t??? Merchant c???n insert ????n h??ng v??o DB v?? g???i m?? n??y sang VNPAY
        $vnp_OrderInfo = "Thanh to??n h??a ????n ph?? dich v???";
        $vnp_OrderType = 'billpayment';
        $vnp_Amount = $request->input('shipping_total') * 100;
        $vnp_Locale = 'vn';
        $vnp_BankCode = $request->bank_code;
        $vnp_IpAddr = request()->ip();
       
        $inputData = array(
            "vnp_Version" => "2.0.0",
            "vnp_TmnCode" => $vnp_TmnCode,
            "vnp_Amount" => $vnp_Amount,
            "vnp_Command" => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode" => "VND",
            "vnp_IpAddr" => $vnp_IpAddr,
            "vnp_Locale" => $vnp_Locale,
            "vnp_OrderInfo" => $vnp_OrderInfo,
            "vnp_OrderType" => $vnp_OrderType,
            "vnp_ReturnUrl" => $vnp_Returnurl,
            "vnp_TxnRef" => $vnp_TxnRef,
            
        );

        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }
        ksort($inputData);
        $query = "";
        $i = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . $key . "=" . $value;
            } else {
                $hashdata .= $key . "=" . $value;
                $i = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }

        $vnp_Url = $vnp_Url . "?" . $query;
        if (isset($vnp_HashSecret)) {
           // $vnpSecureHash = md5($vnp_HashSecret . $hashdata);
            $vnpSecureHash = hash('sha256', $vnp_HashSecret . $hashdata);
            $vnp_Url .= 'vnp_SecureHashType=SHA256&vnp_SecureHash=' . $vnpSecureHash;
        }
         
        return redirect($vnp_Url);
    }
    public function return(Request $request)
{
     if(Session::get('kh_id')){
        $kh_id=Session::get('kh_id');}
    $url =  url('cam-on');
    if($request->vnp_ResponseCode == "00") {
             //don dat hang
            $ddh = new dondathang();
            $ddh->kh_id= $kh_id;
            date_default_timezone_set('Asia/Ho_Chi_Minh');
            $ddh->ddh_ngaylap = now();
            $ddh->vc_id =  session('vc_id');
            $ddh->ddh_sdt = session('shipping_phone');
            $ddh->ddh_diachi =session('shipping_address');
            $ddh->ddh_tong =session('shipping_total');
            $ddh->ddh_trangthai = 2;
            $ddh->tt_id =  2;
            $ddh->save();
           

             $content = Cart::content();
             $content1 = Cart::content();
           
             
             // Cap nhat so luong hang
             foreach ($content1 as $key => $v_content1) {
   
            $id1=$v_content1->id;
            $qty1=$v_content1->qty;
            $product=  DB::table('sanpham')->join('mausanpham','mausanpham.sp_id','=','sanpham.sp_id')->where('mausanpham.mausp_id',$id1)->get();
            
             foreach ($product as $key => $value) {
                 $value1=$value->mausp_soluong-$qty1;           
             $data = array();
             $data['mausp_soluong'] =$value1;      
            DB::table('mausanpham')->where('mausp_id', $id1 )->update($data); 
              $value2=$value->sp_soluong-$qty1;           
             $data2 = array();
             $data2['sp_soluong'] =$value2; 
             if($value2==0){
                 $data2['sp_hienthi']=1;
             }     
            DB::table('sanpham')->where('sp_id', $value->sp_id )->update($data2); 
            
             }
         
        }
               foreach ($content as $key => $v_content) {
               $data1 = array();
               $data1['mausp_id'] = $v_content->id;
               $data1['ddh_id'] = $ddh->ddh_id ;
               $data1['ctdh_soluong'] = $v_content->qty;
               $data1['ctdh_dongia'] = $v_content->price;
               DB::table('chitietdathang')->insert($data1);
               }
           
        
          Session::forget('cart');
        return redirect($url)->with('message' ,'???? thanh to??n ph?? d???ch v???');
    }
    session()->forget('url_prev');
    session()->forget('vc_id');
    session()->forget('shipping_address');
    session()->forget('shipping_phone');
    session()->forget('shipping_total');
    return redirect($url)->with('error' ,'L???i trong qu?? tr??nh thanh to??n ph?? d???ch v???');
}
     public function dangnhap_thanhtoan(Request $request){

    	//seo 
        $meta_desc = "????ng nh???p thanh to??n"; 
        $meta_keywords = "????ng nh???p thanh to??n";
        $meta_title = "????ng nh???p thanh to??n";
        $url_canonical = $request->url();
        //--seo 
             
    	return view('trang.thanhtoan.dangnhap_thanhtoan')->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical);
    }
    public function them_khachhang(Request $request){
         $this->validate($request,[
                'kh_ten'=> 'required|min:1|max:100',
                'kh_diachi'=>'required',
                'kh_sdt'=> 'required|min:10|max:10',
                'kh_email'=>'required|unique:khachhang,kh_email',
                'kh_matkhau'=>'required|min:3|max:32',

        ],
        [
                'kh_ten.required'=>'B???n ch??a nh???p t??n',
                'kh_ten.min'=>'T??n ph???i c?? ????? d??i t??? 1 cho ?????n 100 k?? t???',
                'kh_ten.max'=>'T??n ph???i c?? ????? d??i t??? 1 cho ?????n 100 k?? t???',
                'kh_diachi.required'=>'B???n ch??a nh???p ?????a ch???',
                'kh_sdt.required'=>'B???n ch??a nh???p s??? ??i???n tho???i',
                'kh_sdt.min'=>'S??? ??i???n tho???i ph???i c?? ????? d??i 10 s???',
                'kh_sdt.max'=>'S??? ??i???n tho???i ph???i c?? ????? d??i 10 s???',
                'kh_email.required'=>'B???n ch??a nh???p email',
                'kh_email.unique'=>'Email kh??ch h??ng ???? t???n t???i',
                'kh_matkhau.required'=>'B???n ch??a nh???p m???t kh???u',
                'kh_matkhau.min'=>'M???t kh???u ph???i c?? ??t nh???t 3 k?? t???',
                'kh_matkhau.max'=>'M???t kh???u ch??? ???????c t???i ??a 32 k?? t???',      
                
        ]);
    	$data = array();
    	$data['kh_ten'] = $request->kh_ten;
    	$data['kh_sdt'] = $request->kh_sdt;
    	$data['kh_email'] = $request->kh_email;
    	$data['kh_diachi'] = $request->kh_diachi;
    	$data['kh_matkhau'] = md5($request->kh_matkhau);
      
    	$kh_id = DB::table('khachhang')->insertGetId($data);

    	Session::put('kh_id',$kh_id);
    	Session::put('kh_ten',$request->kh_ten);
    	return Redirect::to('/');
    
   


    }
    public function xem_thanhtoan(Request $request){
       if(Session::get('kh_id')){
          //seo 
        $meta_desc = "Thanh to??n"; 
        $meta_keywords =  "Thanh to??n"; 
        $meta_title = "Thanh to??n"; 
        $url_canonical = $request->url();
        //--seo 
        $vc=DB::table('vanchuyen')->where('vc_hienthi',0)->get();
    	return view('trang.thanhtoan.thanhtoan')->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('vc',$vc);
    }
        else{
             Session::put('message','M???i b???n ????ng nh???p ????? ti???n h??nh thanh to??n');
            return Redirect::to('/dangnhap-thanhtoan');
        }

    }
   
    public function dangxuat_thanhtoan(){
    	Session::flush();
    	return Redirect::to('/dangnhap-thanhtoan');
    }
    public function dangnhap_khachhang(Request $request){
            $this->validate($request,[
            
                'kh_email'=>'required',
                'kh_matkhau'=>'required|min:3|max:32',
                
        ],
        [
                'kh_email.required'=>'B???n ch??a nh???p email',
                'kh_matkhau.required'=>'B???n ch??a nh???p m???t kh???u',
                'kh_matkhau.min'=>'M???t kh???u ph???i c?? ??t nh???t 3 k?? t???',
                'kh_matkhau.max'=>'M???t kh???u ch??? ???????c t???i ??a 32 k?? t???',      
        ]);
    	$email = $request->kh_email;
    	$password = md5($request->kh_matkhau);
    	$result = DB::table('khachhang')->where('kh_email',$email)->where('kh_matkhau',$password)->first();
    	
    	
    	if($result){
    		Session::put('kh_id',$result->kh_id);
    		return Redirect::to('/');
    	}else{
             Session::put('error','B???n nh???p kh??ng ????ng email ho???c m???t kh???u');
    		return Redirect::to('/dangnhap-thanhtoan');
    	}
 
    }
       public function cam_on(Request $request){
       //seo 
        $meta_desc = "C??m ??n"; 
        $meta_keywords =  "C??m ??n"; 
        $meta_title = "C??m ??n"; 
        $url_canonical = $request->url();
        //--seo 
            return view('trang.thanhtoan.cam_on')->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical);  
    }
       public function lichsu_muahang(Request $request){
        //seo 
        $meta_desc = "L???ch s??? mua h??ng"; 
        $meta_keywords =  "L???ch s??? mua h??ng"; 
        $meta_title = "L???ch s??? mua h??ng"; 
        $url_canonical = $request->url();
        //--seo 
       if(Session::get('kh_id')){
        $kh_id=Session::get('kh_id');
     
        $ls=DB::table('khachhang')
         ->where('khachhang.kh_id',$kh_id)
         ->first();
         return view('trang.thanhtoan.lichsu_muahang')->with('ls',$ls)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical);
     }
     else{

     
    Session::put('message','M???i b???n ????ng nh???p ????? xem l???ch s??? mua h??ng');
    return Redirect::to('/dangnhap-thanhtoan');}
     }

      public function chitiet_lichsu_muahang(Request $request,$ddh_id){
        //seo 
        $meta_desc = "Chi ti???t l???ch s??? mua h??ng"; 
        $meta_keywords =  "Chi ti???t l???ch s??? mua h??ng"; 
        $meta_title = "Chi ti???t l???ch s??? mua h??ng"; 
        $url_canonical = $request->url();
        //--seo 
        if(Session::get('kh_id')){
        $customer_id=Session::get('kh_id');
        $ddh=dondathang::find($ddh_id);
        $cus=DB::table('chitietdathang')
         ->join('mausanpham','mausanpham.mausp_id','=','chitietdathang.mausp_id')
         ->join('sanpham','mausanpham.sp_id','=','sanpham.sp_id')
         ->join('dondathang','dondathang.ddh_id','=','chitietdathang.ddh_id')
         ->where('dondathang.ddh_id',$ddh_id)
         ->get();
        
        
     
         return view('trang.thanhtoan.chitiet_lichsu_muahang')->with('ddh',$ddh)->with('cus',$cus)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical);
     }
       
        else{
            return Redirect::to('/dangnhap-thanhtoan');
        }
     }

        public function huydonhang(Request $request){
      $data = $request->all();
     $ddh_id=$request->order_code;
         $chitietdathang=DB::table('chitietdathang')->where('ddh_id',$ddh_id)->get();
         foreach ( $chitietdathang as $key => $value) {
            $o_dq= $value->ctdh_soluong;
            $o_pi=$value->mausp_id;
         
          $product=  DB::table('sanpham')->join('mausanpham','mausanpham.sp_id','=','sanpham.sp_id')->where('mausanpham.mausp_id',$o_pi)->get();
            
             foreach ($product as $key => $value1) {
                 $p_new=$value1->mausp_soluong+$o_dq;
             
              $data2 = array();
                  $data2['mausp_soluong'] =$p_new;
               
               DB::table('mausanpham')->where('mausp_id',$o_pi)->update($data2); 
                $p_new1=$value1->sp_soluong+$o_dq;
                $data3 = array();
                  $data3['sp_soluong'] =$p_new1;
               
               DB::table('sanpham')->where('sp_id',$value1->sp_id)->update($data3); 

                }}
                 $data1 = array();
                 $data1['ddh_trangthai'] = 4;
                 DB::table('dondathang')->where('ddh_id',$ddh_id)->update($data1);
     }



        public function taikhoan(Request $request){

        //seo 
        $meta_desc = "T??i kho???n"; 
        $meta_keywords = "T??i kho???n";
        $meta_title = "T??i kho???n";
        $url_canonical = $request->url();
        //--seo 
             
           if(Session::get('kh_id')){
        $kh_id=Session::get('kh_id');
     
        $tk=DB::table('khachhang')
         ->where('khachhang.kh_id',$kh_id)
         ->first();
         return view('trang.thanhtoan.taikhoan')->with('tk',$tk)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical);
     }
     else{

     
    Session::put('message','M???i b???n ????ng nh???p ????? xem th??ng tin t??i kho???n');
    return Redirect::to('/dangnhap-thanhtoan');}
    }


      public function capnhat_taikhoan(Request $request){
            $this->validate($request,[
               'kh_ten'=> 'required|min:1|max:100',
                'kh_diachi'=>'required',
                'kh_sdt'=> 'required|min:10|max:10',
                

        ],
        [
                'kh_ten.required'=>'B???n ch??a nh???p t??n',
                'kh_ten.min'=>'T??n ph???i c?? ????? d??i t??? 1 cho ?????n 100 k?? t???',
                'kh_ten.max'=>'T??n ph???i c?? ????? d??i t??? 1 cho ?????n 100 k?? t???',
                'kh_diachi.required'=>'B???n ch??a nh???p ?????a ch???',
                'kh_sdt.required'=>'B???n ch??a nh???p s??? ??i???n tho???i',
                'kh_sdt.min'=>'S??? ??i???n tho???i ph???i c?? ????? d??i 10 s???',
                'kh_sdt.max'=>'S??? ??i???n tho???i ph???i c?? ????? d??i 10 s???',
             
        ]);
       $khachhang=khachhang::find($request->kh_id);
        $khachhang->kh_ten=$request->kh_ten;
        $khachhang->kh_sdt=$request->kh_sdt;
        $khachhang->kh_diachi=$request->kh_diachi; 
        $khachhang->save();
    Session::put('message','C???p nh???t th??ng tin t??i kho???n th??nh c??ng');
    return Redirect::to('/taikhoan');
    }

      public function doimatkhau(Request $request){
           $this->validate($request,[
                'kh_matkhau'=>'required|min:3|max:32',
                'kh_matkhaunl'=>'required|same:kh_matkhau',

        ],
        [
                'kh_matkhau.required'=>'B???n ch??a nh???p m???t kh???u',
                'kh_matkhau.min'=>'M???t kh???u ph???i c?? ??t nh???t 3 k?? t???',
                'kh_matkhau.max'=>'M???t kh???u ch??? ???????c t???i ??a 32 k?? t???',
                'kh_matkhaunl.required'=>'B???n ch??a nh???p l???i m???t kh???u',
                'kh_matkhaunl.same'=>'M???t kh???u nh???p l???i ch??a kh???p',
        ]);
       $khachhang=khachhang::find($request->kh_idmk);
       $khachhang->kh_matkhau= md5($request->kh_matkhau);
        $khachhang->save();
    Session::put('message','?????i m???t kh???u th??nh c??ng');
    return Redirect::to('/taikhoan');
    }
}
