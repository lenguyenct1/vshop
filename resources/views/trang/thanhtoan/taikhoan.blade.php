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
                <div class="features_items"><!--features_items-->
                        
                       

                        
                      <h2 class="title text-center">Thông tin tài khoản của {{$tk->kh_ten}}</h2></div>
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
     <style type="text/css">
              .button {
 background-color: #FE980F;
  border: none;
  color: white;
  padding-top: 6px;
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

label{
color: #696763d1;
    font-family: 'Roboto', sans-serif;
}
p{
  color: #696763d1;
    font-family: 'Roboto', sans-serif;
}
            </style>
            
  <section id="form"><!--form-->
    <div class="container">
      <div class="row">
        <div class="col-sm-3 col-sm-offset-1">
          <div class="login-form"><!--login form-->
            <h2>Tùy chọn</h2>
            <form>
             
              <a  class="button" style="width: 164px;" onclick='show(1);'  >Cập nhật thông tin</a>
                <a   class="button" style="width: 164px;" onclick='show(2);'  >Đổi mật khẩu</a>
            </form>
          </div><!--/login form-->
        </div>
        <div class="col-sm-1">
         
        </div>
        <div class="col-sm-5">
          <div class="signup-form" id="table1"><!--sign up form-->
            <h2>Cập nhật thông tin tài khoản</h2>
            <p style="font-size: 14px;">(Email được dùng để đăng nhập nên chỉ cho phép xem)</p>
            <form action="{{URL::to('/capnhat-taikhoan')}}" method="POST">
              {{ csrf_field() }}
              <label>Email</label>
              <input type="email" name="kh_email"  placeholder="Địa chỉ email" value="{{$tk->kh_email}}" readonly />
              <label>Họ tên</label>
              <input type="text" name="kh_ten"  placeholder="Họ và tên" value="{{$tk->kh_ten}}" />
               <label>Địa chỉ</label>
              <input type="text" name="kh_diachi" placeholder="Địa chỉ" value="{{$tk->kh_diachi}}" />
               <label>Số điện thoại</label>
              <input type="text" name="kh_sdt"  placeholder="Số điện thoại" value="{{$tk->kh_sdt}}" />
               <input type="hidden" name="kh_id"  placeholder="kh_id" value="{{$tk->kh_id}}" />
              <button type="submit" class="btn btn-default">Cập nhật</button>
            </form>
          </div><!--/sign up form-->
           <div class="signup-form" id="table2"><!--sign up form-->
            <h2>Đổi mật khẩu</h2>
            <form action="{{URL::to('/doimatkhau')}}" method="POST">
              {{ csrf_field() }}
               <label>Nhập mật khẩu</label>
            <input type="password" name="kh_matkhau" placeholder="Nhập mật khẩu"/>
               <label>Nhập lại mật khẩu</label>
              <input type="password" name="kh_matkhaunl" placeholder="Nhập lại mật khẩu"/>
                <input type="hidden" name="kh_idmk"  placeholder="kh_idmk" value="{{$tk->kh_id}}" />
              <button type="submit" class="btn btn-default">Xác nhận</button>
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
         <script>
         
    document.getElementById("table1").style.display="block";
    document.getElementById("table2").style.display="none";
function show(nr) {
    document.getElementById("table1").style.display="none";
    document.getElementById("table2").style.display="none";
    document.getElementById("table"+nr).style.display="block";
}

 </script>
@endsection