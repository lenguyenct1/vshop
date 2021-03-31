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
                              @if(count($errors)>0)
                        <div class="alert alert-danger">
                            @foreach($errors->all() as $err)
                                {{$err}}<br>
                                @endforeach
                            </div>
                         @endif
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Đăng nhập tài khoản</h2>
						<form action="{{URL::to('/dangnhap-khachhang')}}" method="POST">
							{{csrf_field()}}
							<input type="email" name="kh_email"  placeholder="Địa chỉ email" />
							<input type="password" name="kh_matkhau"  placeholder="Password" />
							
							<button type="submit" class="btn btn-default">Đăng nhập</button>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">Hoặc</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>Đăng ký</h2>
						<form action="{{URL::to('/them-khachhang')}}" method="POST">
							{{ csrf_field() }}
							<input type="text" name="kh_ten"  placeholder="Họ và tên"/>
							<input type="email" name="kh_email"  placeholder="Địa chỉ email"/>
							<input type="text" name="kh_diachi" placeholder="Địa chỉ "/>
							<input type="password" name="kh_matkhau" placeholder="Mật khẩu"/>
							<input type="text" name="kh_sdt"  placeholder="Phone"/>
							<button type="submit" class="btn btn-default">Đăng ký</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
      
                </div>
            </div>
        </div>
    </section>
@endsection