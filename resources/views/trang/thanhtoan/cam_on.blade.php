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
			<?php
                           $message = Session::get('message');
                            $error = Session::get('error');
                            if($message){
                                echo '<div class="alert alert-success">'.$message.'</div>';
                                Session::put('message',null);
                            }
                            elseif($error){
                            	echo '<div  class="alert alert-danger">'.$error.'</div>';
                                Session::put('error',null);
                            }
                            ?>
			
			<div class="review-payment">
				<h2>Cảm ơn bạn đã đặt hàng ở chỗ chúng tôi,chúng tôi sẽ liên hệ với bạn sớm nhất</h2>
				<a href="{{URL::to('/')}}" ><h3>Quay về trang chủ</h3></a>
			</div>
			
			
			
		</div>
	</section> <!--/#cart_items-->
      
                </div>
            </div>
        </div>
    </section>
@endsection