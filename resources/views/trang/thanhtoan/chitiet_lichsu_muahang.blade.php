@extends('layout')
@section('content')
@include('slider')
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
.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;

}

.button:hover span:after {
  opacity: 1;
  right: 0;

}


.button:hover {
  background-color: #fe980fe8;
  color: white;
}

</style>

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
				  <li class="active">Chi tiết đơn hàng</li>
				</ol>
			</div>
				
<?php $total=0;?>			
			<div class="table-responsive cart_info">

		
				
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Hình ảnh</td>
							<td class="description">Tên mẫu sản phẩm</td>
							<td class="price">Giá</td>
							<td class="quantity">Số lượng</td>
							<td class="total">Tổng</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						
							@foreach($cus as $key =>$v_content)
						<tr>
							<td class="cart_product">
								<a href=""><img src="{{URL::to('upload/sanpham/'.$v_content->sp_hinh)}}" width="90" alt="" /></a>
							</td>
							<td class="cart_description">
								<h4><a href="">{{$v_content->mausp_ten}}</a></h4>
								<p>Mã mẫu sản phẩm: MAUSP00{{$v_content->sp_id}}</p>
							</td>
							<td class="cart_price">
								<p>{{number_format($v_content->ctdh_dongia).' '.'VNĐ'}}</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
								
									<input class="cart_quantity_input" type="text" name="cart_quantity" value="{{$v_content->ctdh_soluong}}"  readonly="">
									
								
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">
									
									<?php
									$subtotal = $v_content->ctdh_dongia * $v_content->ctdh_soluong;
									$total+=$subtotal;
									echo number_format($subtotal).' '.'VNĐ';
									?>
								</p>
							</td>
							
						</tr>
						@endforeach

					</tbody>

				</table>
				

			</div>
		</div>
	</section> <!--/#cart_items-->


	<section id="do_action">
		<div class="container">
		
			<div class="row">
			
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
							<li>Tổng giá sản phẩm:<span>{{number_format($total,0,',',',')}} VNĐ</span></li>	
							<li>Phí vận chuyển:<span>{{number_format($ddh->vanchuyen->vc_chiphi,0,',',',')}} VNĐ</span></li>
							<li>Tổng<span>{{number_format($total+$ddh->vanchuyen->vc_chiphi,0,',',',')}} VNĐ</span></li>	
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->

       <a href="{{URL::to('/lichsu-muahang')}}"><button class="button" style="vertical-align:middle; " title="Trở về"><span>Trở về</span></button></a>
                </div>
            </div>
        </div>
    </section>
@endsection