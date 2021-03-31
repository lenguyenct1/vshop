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
<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="{{URL::to('/')}}">Trang chủ</a></li>
				  <li class="active">Thanh toán giỏ hàng</li>
				</ol>
			</div>
	@if(Session::get('kh_id'))
 <?php
                                   $kh_id = Session::get('kh_id');
                                   if($kh_id!=NULL){ 
                                    $kh_ten=DB::table('khachhang')->where('kh_id',$kh_id)->limit(1)->get();
                                    foreach ($kh_ten as $key => $value) {
                                    	$khachhang=$value->kh_id;
                                        $name=$value->kh_ten;
                                        $email=$value->kh_email;
                                        $phone=$value->kh_sdt;
                                        $address=$value->kh_diachi;
                                    }
}

                                 ?> @endif


                                 <?php
				$content = Cart::content();
				$total1=0;
				$total=0;
				foreach ($content as $key => $value) {
					$qty=$value->qty;
					$price=$value->price;
				
				$subtotal1=$qty*$price;
				$total1+=$subtotal1;}
				?>
<style type="text/css">
	label{
color: #696763d1;
    font-family: 'Roboto', sans-serif;
}
p{
  color: #696763d1;
    font-family: 'Roboto', sans-serif;
}
</style>
			<div class="shopper-informations">
				<div class="row">
					
					<div class="col-sm-12 clearfix">
						<div class="bill-to">
							<p>Điền thông tin giao hàng</p>
							<p style="font-size: 14px;">(Bạn có thể sửa địa chỉ giao hàng và số điện thoại liên hệ)</p>
							<div class="form-one">
								<form method="POST">
									@csrf
									 <label>Email</label>
									<input type="email" id="shipping_email" name="shipping_email" class="shipping_email" value="{{$email}}" placeholder="Điền email" readonly="">
									 <label>Họ tên</label>
									<input type="text" id="shipping_name"  name="shipping_name" class="shipping_name" value="{{$name}}" placeholder="Họ và tên" readonly="">
									 <label>Địa chỉ giao hàng</label>
									<input type="text" id="shipping_address" name="shipping_address" class="shipping_address" value="{{$address}}" placeholder="Địa chỉ giao hàng">
									<div id="address"></div>
									 <label>Số điện thoại liên hệ</label>
									<input type="text" id="shipping_phone" name="shipping_phone"  maxlength="10"  class="shipping_phone" value="{{$phone}}" placeholder="Số điện thoại liên hệ">
									<div id="phone"></div><div id="phonecheck"></div>
									<input type="hidden" value="{{$khachhang}}" name="khachhang"  class="khachhang">
									    <div class="form-group">
		                                    <label for="exampleInputPassword1">Chọn hình thức vận chuyển</label>
		                                      <select name="vc_id"  class="form-control input-sm m-bot15 vc_id" id="vcid">
		                                      		  <option value="">--Chọn hình thức vận chuyển--</option>
                                        @foreach($vc as $key => $dsvc)
                                            <option value="{{$dsvc->vc_id}}" data-vc_chiphi="{{$dsvc->vc_chiphi}}">{{$dsvc->vc_ten}}</option>
                                        @endforeach
		                                           
		                                    </select>
		                                </div>
		                                <div id="checkvc"></div>
		                             
										  <div class="form-group">
		                                    <label for="exampleInputPassword1">Chọn hình thức thanh toán</label>
		                                      <select name="payment_select"  class="form-control input-sm m-bot15 payment_select" id="payment_select">
		                                      		
		                                      		 <option value="1">Tiền mặt</option>   
		                                            <option value="2">Qua chuyển khoản</option>
		                                           
		                                    </select>
		                                </div>
		                              
								<input type="hidden" value="{{$total1}}" name="shipping_total" class="shipping_total" id="shipping_total">
									<div id="vnpay"></div>
									<input type="button" value="Xác nhận đơn hàng" name="send_order" class="btn btn-primary btn-sm send_order">
								</form>
							

							</div>
							
						</div>
					</div>
					<div class="col-sm-12 clearfix">
						  @if(session()->has('message'))
			                    <div class="alert alert-success">
			                        {{ session()->get('message') }}
			                    </div>
			                @elseif(session()->has('error'))
			                     <div class="alert alert-danger">
			                        {{ session()->get('error') }}
			                    </div>
			                @endif
						<div class="table-responsive cart_info">

				<?php
				$content = Cart::content();
				$total=0;
				
				?>
				
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Hình ảnh</td>
							<td class="description">Tên sp</td>
							<td class="price">Giá</td>
							<td class="quantity">Số lượng</td>
							<td class="total">Tổng</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						@if(Session::get('cart')==true)
						@foreach($content as $v_content)
						<tr>
							<td class="cart_product">
								<a href=""><img src="{{URL::to('upload/sanpham/'.$v_content->options->image)}}" width="80" alt="" /></a>
							</td>
							<td class="cart_description">
								<h4><a href="">{{$v_content->name}}</a></h4>
								<p>Mã mẫu sản phẩm: MAUSP{{$v_content->id}}</p>
							</td>
							<td class="cart_price">
								<p>{{number_format($v_content->price).' '.'VNĐ'}}</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<form action="{{URL::to('/capnhat-soluong')}}" method="POST">
									{{ csrf_field() }}
									<input class="cart_quantity_input" type="text" name="cart_quantity" value="{{$v_content->qty}}"  readonly="">
									<input type="hidden" value="{{$v_content->rowId}}" name="rowId_cart" class="form-control">
									
									
									</form>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">
									
									<?php
									$subtotal = $v_content->price * $v_content->qty;
									$total+=$subtotal;
									echo number_format($subtotal).' '.'vnđ';
									?>
								</p>
							</td>
							
						</tr>
						@endforeach
					
										
				
				@else 
						<tr>
							<td colspan="5"><center>
							@php 
							echo 'Làm ơn thêm sản phẩm vào giỏ hàng';
							@endphp
							</center></td>
						</tr>
				@endif

					</tbody>

				</table>
				

			</div>
			<section id="do_action">
		<div class="container">
		
			<div class="row">
			
				<div class="col-sm-6">
					<div class="total_area">

						<ul>
							<div id="vccp"></div>
								
							
							
							
							
						</ul>
						{{-- 	<a class="btn btn-default update" href="">Update</a> --}}
							 
                                
							

					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->
					</div>
									
				</div>
			</div>
		

			
			
		</div>
	</section> <!--/#cart_items-->
      
                </div>
            </div>
        </div>
    </section>
@endsection