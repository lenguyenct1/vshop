@extends('layout')
@section('content')
@include('slider')
  <section>
        <div class="container">
            <div class="row">
              <div class="col-sm-3">
                    <div class="left-sidebar">
                        <h2>Thương hiệu sản phẩm </h2>
                        <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                       
                           <?php 
                       $th= DB::table('thuonghieu')->where('th_hienthi','0')->orderby('th_id','desc')->get(); 
                           ?>
                           @if(!$th->isEmpty())
                             @foreach($th as $key => $dsth)
                           
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a href="{{URL::to('/thuonghieu-sanpham/'.$dsth->th_nhan)}}"><img src="{{URL::to('upload/thuonghieu/'.$dsth->th_hinh)}}"  class="girl img-responsive" ></a></h4>
                                </div>
                            </div>
                        @endforeach
                           @else
                       <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a>Không có thương hiệu</a></h4>
                                </div>
                            </div>
                        @endif
                        </div><!--/category-products-->
                    
                     
                        
                     
                    
                    </div>
                </div>
                
                <div class="col-sm-9 padding-right">
                  <style type="text/css">
    



.button {
 background-color: #FE980F;
  border: none;
  color: white;
  padding: 1px 6px;
  width: 120px;
  height: 30px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  cursor: pointer;
}



.button:hover {
  background-color: #F0F0E9;
  color: #696763;
}

</style>
<style type="text/css">
    
label{
  display: inline-block;
    vertical-align: middle;
    font-size: 12px;
    color: #fff;
    font-weight: 600;
    border-radius: 3px;
    background: #de2000;
    width: 32px;
    height: 20px;
    line-height: 20px;
    text-align: center;
}
strong {
    display: inline-block;
    vertical-align: middle;
    font-size: 20px;
    color: #b10e0e;
    font-weight: bold;
    font-weight: normal;
}
</style>

<div class="features_items"><!--features_items-->
                        
                       

                        
                        <h2 class="title text-center">Đơn hàng của {{$ls->kh_ten}}</h2>
                        
                      
                    <?php 
                       $pt=DB::table('dondathang')
                             ->join('khachhang','dondathang.kh_id','=','khachhang.kh_id') 
                            ->join('thanhtoan','dondathang.tt_id','=','thanhtoan.tt_id') 
                             ->where('khachhang.kh_id',$ls->kh_id)        
                             ->orderby('dondathang.ddh_id','desc')
                             ->paginate(6);
                    ?>
                       @if(!$pt->isEmpty()) 
                      @foreach($pt as $key => $product)
                        <a href="{{URL::to('/chi-tiet-lich-su-mua-hang/'.$product->ddh_id)}}">
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">

                                <div class="single-products" style="height: 580px;">
                                        <div class="productinfo text-center">
                                            <img src="{{('frontend/images/order.jpg')}}"  alt="" />
                                          
                                             <?php 
            $nl=date("d-m-Y H:i:s", strtotime($product->ddh_ngaylap));
             $nxn=date("d-m-Y H:i:s", strtotime($product->ddh_ngayxacnhan));
         
          ?>
                                            
                                            <strong>Mã đơn hàng : DDH00{{$product->ddh_id}}</strong>
                                          
                                            @if($product->ddh_trangthai==1)
                                            <p style="height: 20px;">Trạng thái: Đang xử lý </p>
                                             @elseif($product->ddh_trangthai==2)
                                            <p style="height: 20px;">Trạng thái: Đã xác nhận</p>
                                            @elseif($product->ddh_trangthai==3)
                                            <p style="height: 20px;">Trạng thái: Đã giao hàng</p>
                                            @else
                                             <p style="height: 20px;">Trạng thái: Hủy đơn hàng</p>
                                             @endif
                                                <p style="height: 20px;">Hình thức thanh toán: {{$product->tt_ten}} </p>
                                             <p style="height: 20px;">Thời gian đặt hàng: {{$nl}}</p>
                                             @if($product->ddh_trangthai ==3)
                                            <p style="height: 20px;">Thời gian xác nhận: {{$nxn}}</p>
                                          @endif

                                          <a href="{{URL::to('/chi-tiet-lich-su-mua-hang/'.$product->ddh_id)}}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Xem chi tiết đơn hàng</a>
                                          @if($product->ddh_trangthai==1)
                                                        <form method="POST">
                                                          @csrf
                             
                                 
                              
                               <input type="hidden" name="order_code" class="order_code" value="{{$product->ddh_id}}">
                              
                              <input type="button"   style="vertical-align:middle; " title="Hủy đơn hàng" name="cancel_order" class="button cancel_order" value="Hủy đơn hàng">
                        
                                                           </form>
                                                           @endif
                                        </div>
                                      
                                </div>
                                
                                
                            </div>
                        </div>
                      </a>
                       @endforeach
                @else
                  <div style="font-size: 30px; text-align: center;">Bạn chưa đặt hàng</div>
                @endif
                    </div><!--features_items-->
        <!--/recommended_items-->

          {!!$pt->links()!!}
                
                </div>
            </div>
        </div>
    </section>
@endsection