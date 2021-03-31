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
<?php $gia=0; $tonglap=0;?>
<div class="product-details"><!--product-details-->
	<?php
                            $message = Session::get('message');
                            if($message){
                                echo '<div class="alert alert-danger">'.$message.'</div>';
                                Session::put('message',null);
                            }
                            ?>
                            <style type="text/css">
                            	.lSSlideOuter .lSPager.lSGallery img {
										    display: block;
										    height: 140px;
										    max-width: 100%;
										}
										li.active {
										    border: 2px solid #FE980F;
										}
                            </style>
                            <style type="text/css">
                            	.style_comment{
                            		border:1px solid #ddd;
                            		border-radius: 10px;
                            		background: #F0F0E9;
                            	}
                            	.slider {
    
    margin: 0 auto;
}


	.mau_id {
 /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  width: 100px;
  height: 100px;
}
strong {
    display: inline-block;
    vertical-align: middle;
    font-size: 15px;
    color: #b10e0e;
    font-weight: bold;
    font-weight: normal;
}
                            </style>
										<nav aria-label="breadcrumb">
								  <ol class="breadcrumb" style="background: none;">
								    <li class="breadcrumb-item"><a href="{{URL::to('/')}}">Trang chủ</a></li>
								    <li class="breadcrumb-item"><a href="{{URL::to('/thuonghieu-sanpham/'.$th_nhan)}}">{{$th_ten}}</a></li>
								    <li class="breadcrumb-item " >{{$sp_ten}}</li>
								  </ol>
								</nav>
						<div class="col-sm-5" id="image">
								
								  @if($hinhanh->isEmpty()) 
                           <h3 style='color:red;'>Mẫu sản phẩm chưa có hình ảnh</h3>
                             @endif
							<ul id="imageGallery">
								@foreach($hinhanh as $key => $dshinhanh)
								  <li data-thumb="{{asset('upload/hinhanh/'.$dshinhanh->hinhanh_hinh)}}" data-src="{{asset('upload/hinhanh/'.$dshinhanh->hinhanh_hinh)}}">
								    <img width="100%" alt="{{$dshinhanh->hinhanh_ten}}" src="{{asset('upload/hinhanh/'.$dshinhanh->hinhanh_hinh)}}"/>
								  </li>
								  @endforeach
								
								 
								</ul>
							
								@foreach($hinhanh as $key => $dshinhanh1)
								 @if(!$hinhanh->isEmpty()) 
								<?php  $soluong=$dshinhanh1->mausp_soluong;
										$mausp_id=$dshinhanh1->mausp_id;?>
										@endif
								@endforeach
								@foreach($mausanpham1 as $key => $value1)
								<?php  $soluong=$value1->mausp_soluong;
										$mausp_id=$value1->mausp_id;?>
								@endforeach

						<div class="slider">
							 @foreach($mausanpham as $key => $dsmausp)
							  <div>
							     <button class="mau_id" value="{{$dsmausp->mausp_id}}" style="background-color: {{$dsmausp->mau_giatri}};"></button>
							  </div>
							  	@endforeach
							 <div>
							 	<button style="background: white; padding: inherit;"><img  style=" width: 100px; height: 100px;"  src="{{('frontend/images/360image.png')}}"  id="360image"></button>
							</div>
							
							  
							</div>

						</div>
						@foreach($sp_chitiet as $key => $value)
						
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
						<!-- 		<img src="images/product-details/new.jpg" class="newarrival" alt="" /> -->
								<h2>{{$value->sp_ten}}</h2>
								<p>Mã sản phẩm: SP00{{$value->sp_id}}</p>
							<!-- 	<img src="images/product-details/rating.png" alt="" /> -->
							 @if ($danhgia>3)
                                            <label style=" display: inline-block;
                                                vertical-align: middle;
                                                font-size: 15px;
                                                color: #fff;
                                                font-weight: 600;
                                                border-radius: 3px;
                                                background: #0d14f7c7;
                                                width: 80px;
                                                height: 20px;
                                                line-height: 20px;
                                                text-align: center;
                                                margin-right: 400px;
                                                 position: absolute;
											    top: 0;
											    left: 0;">Best</label>
                                                 @elseif($date>=$value->khuyenmai_ngaybatdau && $date<=$value->khuyenmai_ngayketthuc)
                                            <label style=" display: inline-block;
                                                vertical-align: middle;
                                                font-size: 15px;
                                                color: #fff;
                                                font-weight: 600;
                                                border-radius: 3px;
                                                background: #15b119;
                                                width: 80px;
                                                height: 20px;
                                                line-height: 20px;
                                                text-align: center;
                                                margin-right: 400px;
                                                position: absolute;
											    top: 0;
											    left: 0;">Sale</label>
                                                @else
                                                <label style=" display: inline-block;
                                                vertical-align: middle;
                                                font-size: 12px;
                                                font-weight: 600;
                                                border-radius: 3px;
                                                width: 32px;
                                                height: 20px;
                                                line-height: 20px;
                                                text-align: center;
                                                margin-right: 400px;
                                                position: absolute;
											    top: 0;
											    left: 0;"></label>
                                                @endif
						
							<ul class="list-inline rating" title="Average Rating">
										@for($count=1;$count<=5;$count++)
											@php
											if($count<=$danhgia){
											$color='color:#ffcc00;';
										}
										else{
										$color='color:#ccc;';
									}
											@endphp
										
										<li title="đánh giá sao"
											
											data-rating="{{$danhgia}}"
											class="rating"
											style="cursor: pointer;{{$color}} font-size: 25px;">
											&#9733;
										</li>
										@endfor
									</ul>
								<?php 
								 
                                             $giamgia=($value->gia_giatri*$value->khuyenmai_giatri)/100;
                                            $gia=$value->gia_giatri-$giamgia;
                                            ?>
								<form action="{{URL::to('/them-giohang/'.$value->sp_nhan)}}" method="POST">
									{{ csrf_field() }}
									                                     
                                  

                                            @if($date>=$value->khuyenmai_ngaybatdau && $date<=$value->khuyenmai_ngayketthuc)
								<span>
									<span style="font-size: 25px;  color: #FE980F;">{{number_format($gia).' VNĐ'}}</span>
									<span style="text-decoration: line-through;font-size: 15px;  color: #757575;">{{number_format($value->gia_giatri).' VNĐ'}}</span>
									<span>
										<label style=" display: inline-block;
											    vertical-align: middle;
											    font-size: 12px;
											    color: #fff;
											    font-weight: 600;
											    border-radius: 3px;
											    background: #de2000;
											    width: 32px;
											    height: 20px;
											    line-height: 20px;
											    text-align: center;">-{{$value->khuyenmai_giatri}}%</label>
									</span>	
								</span>
								@else
								<span>
								<span style="font-size: 25px">{{number_format($value->gia_giatri).' VNĐ'}}</span></span>@endif
								<span>
									<label>Số lượng:</label>
									<input name="qty" type="number" min="1"  value="1" />
									
									<input name="productid_hidden" type="hidden"  value="{{$mausp_id}}" id="mauspid2"/>
									<input name="360" type="hidden"  value="{{$value->sp_id}}" id="hinh360"/>
								<button type="submit" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Thêm giỏ hàng
									</button>
									
										</span>
								</form>
								<br/>
								@if($value->sp_soluong>=10)
								<p><b>Tình trạng hàng:</b> Còn hàng</p>
								@elseif ($value->sp_soluong>0 && $value->sp_soluong<10)
								<p><b>Tình trạng hàng:</b> Sắp hết hàng</p>
								@else
								<p><b>Tình trạng hàng:</b> Hết hàng</p>
								@endif
								<p><b>Thương hiệu:</b> {{$value->th_ten}}</p>
								<p><b>Kho còn:</b> {{$value->sp_soluong}}</p>
									
								 
                         
                                 <div id="sl"><p><b>Số lượng mẫu:</b> {{$soluong}}</p></div>
                           
                                 
                              	
                              	 <p><b>FACEBOOK: </b></p>
                              	 <div id="fb-root"></div>
                            
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0&appId=840076133401851&autoLogAppEvents=1" nonce="6bBKKOrP"></script>
<div class="fb-like" data-href="{{$url_canonical}}" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="true"></div>

                              	 	
								<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
							</div><!--/product-information-->
						</div>
</div><!--/product-details-->
<style>
#tskt {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#tskt  td, #tskt  th {
  border: 1px solid #ddd;
  padding: 8px;
}

#tskt  tr:nth-child(even){background-color: #f2f2f2;}

#tskt  tr:hover {background-color: #ddd;}

#tskt  th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
					<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li ><a href="#ts" data-toggle="tab">Thông số kỹ thuật</a></li>
								<li ><a href="#details" data-toggle="tab">Mô tả</a></li>
								<li class="active"><a href="#reviews" data-toggle="tab">Đánh giá</a></li>
								<li ><a href="#commentfacebook" data-toggle="tab">Bình luận</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade" id="ts">
								<p>{!!$value->sp_tskt!!}</p>
								
							</div>
							<div class="tab-pane fade" id="details" >
								<p>{!!$value->sp_thongtin!!}</p>
								
							</div>
										<div class="tab-pane fade" id="commentfacebook" >
										<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0&appId=840076133401851&autoLogAppEvents=1" nonce="AxvfREPr"></script>
			<div class="fb-comments" data-href="{{$url_canonical}}" data-numposts="10" data-width=""></div>
							</div>
							<div class="tab-pane fade  active in" id="reviews" >
								<div class="col-sm-12">
									<ul>
								
           							<?php 
										$dateTime = new DateTime('now', new DateTimeZone('Asia/Ho_Chi_Minh')); 
								
										?>
										<li><a href=""><i class="fa fa-user"></i>VSHOP</a></li>
										<li><a href=""><i class="fa fa-clock-o"></i>{{$dateTime->format("H:i A")}}</a></li>
										<li><a href=""><i class="fa fa-calendar-o"></i>{{$dateTime->format("d-m-Y")}}</a></li>
									</ul>
									<p><h3>Đánh giá sản phẩm</h3></p>
									<ul class="list-inline rating" title="Average Rating">
										@for($count=1;$count<=5;$count++)
											@php
											if($count<=$danhgia){
											$color='color:#ffcc00;';
										}
										else{
										$color='color:#ccc;';
									}
											@endphp
										
										<li title="đánh giá sao"
											id="{{$value->sp_id}}-{{$count}}"
											data-index="{{$count}}"
											data-sp_id="{{$value->sp_id}}"
											data-rating="{{$danhgia}}"
											class="rating"
											style="cursor: pointer;{{$color}} font-size: 30px;">
											&#9733;
										</li>
										@endfor
										<h4>{{$danhgia}} Sao ({{$dgc}} lượt đánh giá)</h4>
									</ul>
									<hr/>
										<input type="hidden" name="comment_product_id" class="comment_product_id" value="{{$value->sp_id}}">
									  @if(!$binhluan->isEmpty())
									<p><h3>Hỏi đáp sản phẩm</h3></p>
									<form>
										@csrf
										@foreach($binhluan as $key => $dsbl)
										<?php  $ngay=date("d-m-Y H:i:s", strtotime($dsbl->bl_ngay)); ?>
									<div class="row style_comment">
					                    <div class="col-md-2">
					                      
					                      <img width="100%" src="{{URL::to('frontend/images/images.png')}}" class="img img-responsive img-thumbnail">
					                    </div>
					                    <div class="col-md-10">
					                      <p style="color: green;">{{$dsbl->kh_ten}}</p>
					                      <p style="color: #000;">{{$ngay}}</p>
					                      <p>{{$dsbl->bl_noidung}}</p>
					                    </div>
					                  </div>
					                  <p></p>
									  @foreach ($phanhoi as $key => $dsph)
									   @if($dsph->bl_id==$dsbl->bl_id)
					                  <?php  $ngayph=date("d-m-Y H:i:s", strtotime($dsph->ph_ngay));?>
					                   <div class="row style_comment" style="margin:5px 40px; background:aquamarine;">
					                    <div class="col-md-2">
					                      
					                      <img width="80%" src="{{URL::to('frontend/images/admin.png')}}" class="img img-responsive img-thumbnail">
					                    </div>
					                    <div class="col-md-10">
					                      <p style="color: blue;">{{$dsph->name}}</p>
					                      <p style="color: #000;">{{$ngayph}}</p>
					                      <p>{{$dsph->ph_noidung}}</p>
					                    </div>
					                  </div>
					                  <p></p>
					                  @endif
									  @endforeach
									@endforeach
									  {!!$binhluan->links()!!}
									</form>
									@endif
									 <?php
                                   $kh_id = Session::get('kh_id');
                                   if($kh_id!=NULL){ 
                                    $kh_ten=DB::table('khachhang')->where('kh_id',$kh_id)->limit(1)->get();
                                    foreach ($kh_ten as $key => $value1) {
                                        $name=$value1->kh_ten;
                                    }
                                ?>
                                <hr/>
									<h3>Viết đánh giá của bạn</h3>
										<form action="#" >
											@csrf
												<input type="hidden" name="kh_id" id="kh_id" value="{{$kh_id}}">
										<textarea name="comment" class="comment_content" placeholder="Nội dung bình luận" ></textarea>
										
										<button type="button" class="btn btn-default pull-right send-comment">
											Gửi bình luận
										</button>
										<div id="notify_comment"></div>
									</form>
									<?php
								}
									 ?>
									
									
									
								
								</div>
							</div>
							
						</div>
					</div><!--/category-tab-->
	@endforeach
					  @if(!$splienquan->isEmpty()) 
					<div class="recommended_items"><!--recommended_items-->
						<h2 class="title text-center">Sản phẩm liên quan</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner" style="height: 530px;">
									@foreach($splienquan as $key => $lienquan)
							 <?php $gia1=0;
							 $tonglap=$tonglap+1;
							     $giamgia1=($lienquan->gia_giatri*$lienquan->khuyenmai_giatri)/100;
                                            $gia1=$lienquan->gia_giatri- $giamgia1;
                                         $danhgia1=DB::table('danhgia')->where('sp_id',$lienquan->sp_id)->avg('dg_danhgia');
                                            $dgc1=DB::table('danhgia')->where('sp_id',$lienquan->sp_id)->count();
                                            $danhgia1=round($danhgia1);
                                            ?>
								  @if($key%3==0)
                                  <div class="item {{$key==0 ? 'active': ''}}">
                                  @endif
						
        					
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<a href="{{URL::to('/chi-tiet-san-pham/'.$lienquan->sp_nhan)}}">
											 <div class="single-products">
		                                        <div class="productinfo text-center" style="height: 530px;">
		                                        	@if ($danhgia1>3)
                                            <div style=" 
    width: 0;
    height: 0;
    position: absolute;
    top: 0;
    right: 0;
    margin: 0 auto;
    border-style: solid;
    border-width: 0 45px 45px 0;
    border-color: transparent #063eea transparent transparent;
    text-align: center;
"><p style="color: white; margin-left: 15px;">Best</p></div>
                                                 @elseif($date>=$lienquan->khuyenmai_ngaybatdau && $date<=$lienquan->khuyenmai_ngayketthuc)
                                           <div style=" 
    width: 0;
    height: 0;
    position: absolute;
    top: 0;
    right: 0;
    margin: 0 auto;
    border-style: solid;
    border-width: 0 45px 45px 0;
    border-color: transparent #3fe11b transparent transparent;
    text-align: center;
"><p style="color: white; margin-left: 15px;">Sale</p></div>
                                               
                                                @endif
		                                            <img src="{{URL::to('upload/sanpham/'.$lienquan->sp_hinh)}}" alt="" />
		                                                 
                                            @if($date>=$lienquan->khuyenmai_ngaybatdau && $date<=$lienquan->khuyenmai_ngayketthuc)
                                            <strong >{{number_format($gia1).' '.'VNĐ'}}</strong>
                                            <span
                                             style="
                                                display: inline-block;
                                                vertical-align: middle;
                                                font-size: 15px;
                                                color: #757575;
                                                text-decoration: line-through;
                                                font-weight: 300;"
                                                >{{number_format($lienquan->gia_giatri).' '.'VNĐ'}}</span>
                                            <label style="display: inline-block;
											    vertical-align: middle;
											    font-size: 12px;
											    color: #fff;
											    font-weight: 600;
											    border-radius: 3px;
											    background: #de2000;
											    width: 32px;
											    height: 20px;
											    line-height: 20px;
											    text-align: center;">-{{$lienquan->khuyenmai_giatri}}%</label>
                                            @else
                                            <strong >{{number_format($lienquan->gia_giatri).' '.'VNĐ'}}</strong>@endif
                                            <p style="height: 30px;">{{$lienquan->sp_ten}}</p>
                                             <ul class="list-inline rating" title="Average Rating">
                                        @for($count=1;$count<=5;$count++)
                                            @php
                                            if($count<=$danhgia1){
                                            $color='color:#ffcc00;';
                                        }
                                        else{
                                        $color='color:#ccc;';
                                    }
                                            @endphp
                                        
                                        <li title="đánh giá sao"
                                            data-rating="{{$danhgia1}}"
                                            class="rating"
                                            style="cursor: pointer;{{$color}} font-size: 20px;">
                                            &#9733;
                                        </li>
                                        @endfor
                                      
                                    </ul>
                                            <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2>{{number_format($gia1).' '.'VNĐ'}}</h2>
                                                <p>{{$lienquan->sp_ten}}</p>
                                                <a href="{{URL::to('/chi-tiet-san-pham/'.$lienquan->sp_nhan)}}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Chọn mua</a>
                                            </div>
                                        </div>
		                                            <a href="{{URL::to('/chi-tiet-san-pham/'.$lienquan->sp_nhan)}}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Chọn mua</a>
		                                        </div>
		                                      
                                			</div>
										</div>
									</div>
						  @if($key%3==2)
                                  </div>
                                  @endif
							@endforeach		

								
									
							</div>
								@if($tonglap>5)
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>
							  @endif			
						</div>
					</div><!--/recommended_items-->
							@endif
							      
                </div>
            </div>
        </div>
    </section>
@endsection
