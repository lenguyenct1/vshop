<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!---------Seo--------->
    <meta name="description" content="{{$meta_desc}}">
    <meta name="keywords" content="{{$meta_keywords}}"/>
    <meta name="robots" content="INDEX,FOLLOW"/>
    <link  rel="canonical" href="{{$url_canonical}}" />
    <meta name="author" content="">
    <link  rel="icon" type="image/x-icon" href="" />
    
     
      @if(isset($image_og))
    <meta property="og:image" content="{{$image_og}}" />
        @endif
      <meta property="og:site_name" content="{{$url_canonical}}" />
      <meta property="og:description" content="{{$meta_desc}}" />
      <meta property="og:title" content="{{$meta_title}}" />
      <meta property="og:url" content="{{$url_canonical}}" />
      <meta property="og:type" content="website" /> 
    <!--//-------Seo--------->
    <title>{{$meta_title}}</title>
  
    <title>Home | Trang web kinh doanh điện thoại di dộng VSHOP</title>
    <link href="{{asset('frontend/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/prettyPhoto.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/price-range.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/animate.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/main.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/responsive.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/sweetalert.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/lightslider.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/prettify.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/jquery-ui.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/lightgallery.min.css')}}" rel="stylesheet">
     <link href="{{asset('frontend/css/slick.css')}}" rel="stylesheet">
    
   
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="{{('frontend/images/favicon.ico')}}">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    @laravelPWA
    <base href="{{asset('')}}">
</head><!--/head-->

<body>

    <header id="header"><!--header-->
        <div class="header_top"><!--header_top-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="contactinfo">
                            <ul class="nav nav-pills">
                                <li><a href="#"><i class="fa fa-phone"></i> +0901234566</a></li>
                                <li><a href="#"><i class="fa fa-envelope"></i> Vshop@gmai.com</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="social-icons pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header_top-->
        
        <div class="header-middle"><!--header-middle-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="logo pull-left">
                           <img width="50%" height="50%" src="{{('frontend/images/vshop.png')}}" alt="" onClick="document.location.reload(true)"/>
                        </div>
                        <div class="btn-group pull-right">
                            
                            
                            
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="shop-menu pull-right">
                              <ul class="nav navbar-nav">
                               <li><a href="{{URL::to('/taikhoan')}}"><i class="fa fa-user"></i>Tài khoản</a></li>
                             <li><a href="{{URL::to('/lichsu-muahang')}}"><i class="fa fa-star"></i>Lịch sử</a></li>

                                
                                  <li><a href="{{URL::to('/thanhtoan')}}"><i class="fa fa-crosshairs"></i> Thanh toán</a></li>
                                
                               
                                

                                <li><a href="{{URL::to('/xem-giohang')}}"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
                                <?php
                                   $kh_id = Session::get('kh_id');
                                   if($kh_id!=NULL){ 
                                    $kh_ten=DB::table('khachhang')->where('kh_id',$kh_id)->limit(1)->get();
                                    foreach ($kh_ten as $key => $value) {
                                        $name=$value->kh_ten;
                                    }

                                 ?>
                                  <li><a href="{{URL::to('/dangxuat-thanhtoan')}}"><i class="fa fa-lock"></i> Đăng xuất</a></li>
                                  <br/>
                                  <br/>
                                  <li style="float:right; color: red; font-size: 18px;"><b>Chào bạn {{$name}} </b><li>
                                
                                <?php
                            }else{
                                 ?>
                                 <li><a href="{{URL::to('/dangnhap-thanhtoan')}}"><i class="fa fa-lock"></i> Đăng nhập</a></li>
                                 <?php 
                             }
                                 ?>
                               
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header-middle-->
   <style type="text/css">
 

#search-form {
  width: 100%;
  margin: 0 auto;
  position: relative;
}

#search-form button {
  position: absolute;
  top: 0;
  right:0;
  bottom: 0;
  left: 260px;
  background-color: transparent;
  outline: none;
  border: none;
  width: 3rem;
  text-align: center;
  font-size: 1.75rem;
  cursor: pointer;
  color: #333;
}
.info {

 
  
  font-size: 1.5rem;
}


</style>
<style type="text/css">
      .ui-autocomplete-row
      {
        padding:8px;
        background-color: #f4f4f4;
        border-bottom:1px solid #ccc;
        font-weight:bold;
        width: 300px;
      

      }
      .ui-autocomplete-row:hover
      {
        background-color: #ddd;
      }
    </style> 
        <div class="header-bottom"><!--header-bottom-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-7">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="mainmenu pull-left" style="width: 800px;">
                            <ul class="nav navbar-nav collapse navbar-collapse">
                                <li><a  href="{{URL::to('/')}}" class="active">Trang chủ</a></li>
                                <li  class="dropdown" ><a href="{{URL::to('/sanpham')}}">Sản phẩm</a> 
                                <ul role="menu" class="sub-menu">
                                       
                                    <li><a href="{{URL::to('/khuyenmai')}}">Sản phẩm khuyến mãi</a></li> 
                                    <li><a href="{{URL::to('/noibat')}}">Sản phẩm nổi bật</a></li> 
                                    </ul> 
                                    </li> 
                                       <?php 
                       $dmt= DB::table('danhmuctin')->where('dmt_hienthi','0')->orderby('dmt_id','desc')->get(); 
                           ?>        
                           @if(!$dmt->isEmpty())
                            
                                <li><a >Tin tức</a>

                                   <ul role="menu" class="sub-menu">
                                        @foreach($dmt as $key => $dsdmt)  
                                    <li><a href="{{URL::to('/danhmuc-tintuc/'.$dsdmt->dmt_nhan)}}">{{$dsdmt->dmt_ten}}</a></li> 
                                       @endforeach
                                    </ul>
                                </li>
                               
                                  @endif
                                <li><a  href="{{URL::to('/lien-he')}}">Liên hệ</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- <div class="col-sm-5">
                        <form action="{{URL::to('/timkiem')}}" method="POST">
                            {{csrf_field()}}
                        <div class="search_box pull-right">
                            <input type="text" name="keywords_submit" placeholder="Tìm kiếm sản phẩm"/>
                            <input type="submit" style="margin-top:0;color:#fffffa;font-size:100%" name="search_items" class="btn btn-primary btn-sm" value="Tìm kiếm">
                        </div>
                        </form>
                    </div> -->
                    <div class="col-sm-5">
                          <form action="{{URL::to('/timkiem')}}" method="GET" id="search-form">
                          
                            <input  style="width: 300px; border: 1px solid white; background: gainsboro;" name="keywords_submit" id="search" class="search" type="text" placeholder="Tìm kiếm sản phẩm..." autocomplete="off" autofocus>
                         
                           <!--  <input type="submit" style="margin-top:0;color:#fffffa;font-size:100%" name="search_items" class="btn btn-primary btn-sm" value="Tìm kiếm"    > -->
                             
                          </form>
                       <!--    <p class="info"></p> -->
                        </div>
                </div>
            </div>
        </div><!--/header-bottom-->
    </header><!--/header-->
    

    
    


                   @yield('content')
              
    
    <footer id="footer"><!--Footer-->
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-sm-2">
                        <div class="companyinfo">
                            <h2><span>V</span>-shop</h2>
                            <p>Hân hạnh phục vụ quý khách</p>
                        </div>
                    </div>
                <div class="col-sm-7">
                        <div class="col-sm-3">
                            <div class="video-gallery text-center">
                                <a href="#">
                                    <div class="iframe-img">
                                        <img src="{{('frontend/images/samsung-galaxy-note-10-plus-silver-new-org.jpg')}}" alt="" />
                                    </div>
                                    <div class="overlay-icon">
                                        <i class="fa fa-play-circle-o"></i>
                                    </div>
                                </a>
                              
                            </div>
                        </div>
                        
                        <div class="col-sm-3">
                            <div class="video-gallery text-center">
                                <a href="#">
                                    <div class="iframe-img">
                                         <img src="{{('frontend/images/samsung-galaxy-m51-white-600x600-400x400.jpg')}}" alt="" />
                                    </div>
                                    <div class="overlay-icon">
                                        <i class="fa fa-play-circle-o"></i>
                                    </div>
                                </a>
                             
                            </div>
                        </div>
                        
                        <div class="col-sm-3">
                            <div class="video-gallery text-center">
                                <a href="#">
                                    <div class="iframe-img">
                                         <img src="{{('frontend/images/iphone-12-pro-max-195420-015420-400x400.jpg')}}" alt="" />
                                    </div>
                                    <div class="overlay-icon">
                                        <i class="fa fa-play-circle-o"></i>
                                    </div>
                                </a>
                               
                            </div>
                        </div>
                        
                        <div class="col-sm-3">
                            <div class="video-gallery text-center">
                                <a href="#">
                                    <div class="iframe-img">
                                         <img src="{{('frontend/images/oppo-a31-2020-128gb-den-600x600-1-400x400.jpg')}}" alt="" />
                                    </div>
                                    <div class="overlay-icon">
                                        <i class="fa fa-play-circle-o"></i>
                                    </div>
                                </a>
                              
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
        
        <div class="footer-widget">
            <div class="container">
                <div class="row">
                    <div class="col-sm-2">
                        <div class="single-widget">
                            <h2>DỊCH VỤ</h2>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">Trợ giúp trực tuyến</a></li>
                                <li><a href="#">Liên hệ chúng tôi</a></li>
                                <li><a href="#">Tình trạng đặt hàng</a></li>
                                <li><a href="#">Thay đổi địa điểm</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                      <?php 
                       $th= DB::table('thuonghieu')->where('th_hienthi','0')->orderby('th_id','desc')->limit(5)->get(); 
                           ?>

                    <div class="col-sm-2">
                        <div class="single-widget">
                            <h2>MUA HÀNG NHANH</h2>
                            <ul class="nav nav-pills nav-stacked">
                                 @if(!$th->isEmpty())
                             @foreach($th as $key => $dsth)
                                <li><a href="{{URL::to('/thuonghieu-sanpham/'.$dsth->th_nhan)}}">{{$dsth->th_ten}}</a></li>
                                  @endforeach
                                  @endif
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="single-widget">
                            <h2>CHÍNH SÁCH</h2>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">Điều khoản sử dụng</a></li>
                                <li><a href="#">Chính sách đặc quyền</a></li>
                                <li><a href="#">Chính sách hoàn tiền</a></li>
                                <li><a href="#">Hệ thống thanh toán</a></li>
                                <li><a href="#">Chính sách đổi trả</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="single-widget">
                            <h2>GIỚI THIỆU VỀ TRANG WEB</h2>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">Thông tin trang web</a></li>
                                <li><a href="#">Tuyển dụng</a></li>
                                <li><a href="#">Vị trí</a></li>
                                <li><a href="#">Bản quyền</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3 col-sm-offset-1">
                        <div class="single-widget">
                            <h2>Thông tin trang web</h2>
                            <form action="#" class="searchform">
                                <input type="text" placeholder="Nhập địa chỉ email của bạn" />
                                <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                              
                            </form>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <p class="pull-left">V-Shop</p>
                    <p class="pull-right">Trang web thân thiện</a></span></p>
                </div>
            </div>
        </div>
        
    </footer><!--/Footer-->
    

  
    <script src="{{asset('frontend/js/jquery.js')}}"></script>
    <script src="{{asset('frontend/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('frontend/js/jquery.scrollUp.min.js')}}"></script>
    <script src="{{asset('frontend/js/price-range.js')}}"></script>
    <script src="{{asset('frontend/js/jquery.prettyPhoto.js')}}"></script>
    <script src="{{asset('frontend/js/main.js')}}"></script>
    <script src="{{asset('frontend/js/sweetalert.min.js')}}"></script>
    <script src="{{asset('frontend/js/lightslider.js')}}"></script>
    <script src="{{asset('frontend/js/prettify.js')}}"></script>
    <script src="{{asset('frontend/js/lightgallery-all.min.js')}}"></script>
    <script src="{{asset('frontend/js/jquery-ui.js')}}"></script>
    <script src="{{asset('frontend/js/js-cloudimage-360-view.min.js')}}"></script>
    <script src="{{asset('frontend/js/slick.min.js')}}"></script>

       <script type="text/javascript">
    $(document).ready(function(){
        
    
     $('.send-comment').click(function(){
       var sp_id=$('.comment_product_id').val();
       var _token = $('input[name="_token"]').val();
       var bl_noidung=$('.comment_content').val();
       var kh_id=$('#kh_id').val();
         $.ajax({
                            url: '{{url('/them-binhluan')}}',
                            method: 'POST',
                            data:{sp_id:sp_id,_token:_token,bl_noidung:bl_noidung,kh_id:kh_id},
                            success:function(data){
                            
                               $('#notify_comment').html('<p class="text text-success" style="color:red;"><b>Thêm bình luận thành công, bình luận đang chờ duyệt</b></p>');
                                $('#notify_comment').fadeOut(5000);
                                $('.comment_content').val('');
                                
                                  
                            }
                        });
     });

    });
</script>
      <script type="text/javascript">
    function remove_background(sp_id) {
        for (var count=1;count<=5;count++) {
            $('#'+sp_id+'-'+count).css('color','#ccc');
        }
    }
    
    $(document).on('mouseenter','.rating',function(){
            var index=$(this).data('index');
            var sp_id=$(this).data('sp_id');
            remove_background(sp_id);
            for (var count=1;count<=index;count++) {
            $('#'+sp_id+'-'+count).css('color','#ffcc00');
        }

    });
    
    $(document).on('mouseleave','.rating',function(){
            var index=$(this).data('index');
            var sp_id=$(this).data('sp_id');
            var rating=$(this).data('rating');
            remove_background(sp_id);
            for (var count=1;count<=rating;count++) {
            $('#'+sp_id+'-'+count).css('color','#ffcc00');
        }

    });
    $(document).on('click','.rating',function(){
            var index=$(this).data('index');
            var sp_id=$(this).data('sp_id');
            var _token = $('input[name="_token"]').val();
             $.ajax({
                            url: '{{url('/them-danhgia')}}',
                            method: 'POST',
                            data:{index:index,_token:_token,sp_id:sp_id},
                            success:function(data){
                                if(data=='done'){
                                    
                                     alert("Bạn đã đánh giá "+index+" trên 5");
                                     location.reload();
                                    
                                }
                                else{
                                    alert('Lỗi đánh giá');
                                }
                            
                              
                                
                                  
                            }
                        });
    });
</script>
       <!-- Load Facebook SDK for JavaScript -->
      <div id="fb-root"></div>
      <script>
        window.fbAsyncInit = function() {
          FB.init({
            xfbml            : true,
            version          : 'v8.0'
          });
        };

        (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>

      <!-- Your Chat Plugin code -->
      <div class="fb-customerchat"
        attribution=setup_tool
        page_id="110623450796225"
  theme_color="#ff7e29"
  logged_in_greeting="Hi! Chào mừng bạn đến với Vshop"
  logged_out_greeting="Hi! Chào mừng bạn đến với Vshop">
      </div>
      
<script type="text/javascript">
   $(document).ready(function() {
    $('#imageGallery').lightSlider({
        gallery:true,
        item:1,
        loop:true,
        thumbItem:3,
        slideMargin:0,
        enableDrag: false,
        currentPagerPosition:'left',
        onSliderLoad: function(el) {
            el.lightGallery({
                selector: '#imageGallery .lslide'
            });
        }   
    });  
  });
   </script>
   <script type="text/javascript">

          $(document).ready(function(){
            $('.send_order').click(function(){
                swal({
                  title: "Xác nhận đơn hàng",
                  text: "Đơn hàng sẽ không được hoàn trả khi đặt, bạn có muốn đặt không?",
                  type: "warning",
                  showCancelButton: true,
                  confirmButtonClass: "btn-danger",
                  confirmButtonText: "Cảm ơn, Mua hàng",

                    cancelButtonText: "Đóng,chưa mua",
                    closeOnConfirm: false,
                    closeOnCancel: false
                },
                function(isConfirm){
                     if (isConfirm) {
                        var shipping_email = $('.shipping_email').val();
                        var vc_id = $('.vc_id').val();
                        var shipping_name = $('.shipping_name').val();
                        var shipping_address = $('.shipping_address').val();
                        var shipping_phone = $('.shipping_phone').val();
                        var shipping_method = $('.payment_select').val();
                        var shipping_total=$('.shipping_total').val();
                        var khachhang=$('.khachhang').val();
                        var _token = $('input[name="_token"]').val();
                  //   console.log(shipping_email);

                        $.ajax({
                            url: '{{url('/xacnhan-dathang')}}',
                            method: 'POST',
                            data:{shipping_email:shipping_email,vc_id:vc_id,shipping_name:shipping_name,shipping_address:shipping_address,shipping_phone:shipping_phone,shipping_total:shipping_total,_token:_token,shipping_method:shipping_method,khachhang:khachhang},
                            success:function(){
                               swal("Đơn hàng", "Đơn hàng của bạn đã được gửi thành công", "success");
                              
                                window.location.href = "{{url('/cam-on')}}";
                                  
                            }
                        });

                        window.setTimeout(function(){ 
                            location.reload();
                        } ,3000);

                      } else {
                        swal("Đóng", "Đơn hàng chưa được gửi, làm ơn hoàn tất đơn hàng", "error");

                      }
              
                });

               
            });
        });
    

    </script>
    <script type="text/javascript">

          $(document).ready(function(){
            $('.cancel_order').click(function(){
                swal({
                  title: "Xác nhận hủy đơn hàng",
                  text: "Bạn muốn hủy đơn hàng?",
                  type: "warning",
                  showCancelButton: true,
                  confirmButtonClass: "btn-danger",
                  confirmButtonText: "Hủy đơn hàng",

                    cancelButtonText: "Đóng,chưa hủy",
                    closeOnConfirm: false,
                    closeOnCancel: false
                },
                function(isConfirm){
                    if (isConfirm) {
                        
                        var order_code = $('.order_code').val();
                        var _token = $('input[name="_token"]').val();

                   
                               $.ajax({
                            url: '{{url('/huydonhang')}}',
                            method: 'POST',
                            data:{_token:_token,order_code:order_code},
                            success:function(){
                               swal("Đơn hàng", "Đơn hàng của bạn đã được gửi thành công", "success");
                              
                               
                                  
                            }
                        });

                        window.setTimeout(function(){ 
                            location.reload();
                        } ,3000);

                       

                      } else {
                        swal("Đóng", "Đơn hàng chưa được hủy", "error");

                      }
              
                });

               
            });
        });
    

    </script>
    <script type="text/javascript">
          $(document).on('click','.mau_id',function () {
      var mausp_id=$(this).val();
      var sp_id=$('#hinh360').val();
    
   
   $.ajax({

        type:'get',
        url:'{!!URL::to('hinhanh-mausp')!!}',
        data:{'mausp_id':mausp_id,'sp_id':sp_id},
      
        success:function(data){
         console.log(data);
             $('#image').html(data);
            var sl=$('#slm').val();
            $('#sl').html('<p><b>Số lượng mẫu:</b> '+sl+'</p>');
           var mauspid1= $('#mauspid1').val();
           $('#mauspid2').val(mauspid1);
             if (!slider.lightSlider) {
                   $('#imageGallery').lightSlider({
        gallery:true,
        item:1,
        loop:true,
        thumbItem:3,
        slideMargin:0,
        enableDrag: false,
        currentPagerPosition:'left',
        onSliderLoad: function(el) {
            el.lightGallery({
                selector: '#imageGallery .lslide'
            });
        }   
    }); 

             }


             $('.slider').slick({
    slidesToShow: 3,
    slidesToScroll: 3,
    dots: true,
    infinite: true,
    cssEase: 'linear'
});
  
        },
        error:function(){

        }
      });
    });
    </script>
     <script type="text/javascript">
          $(document).on('click','#360image',function () {
      var sp_id=$('#hinh360').val();
     
   
   $.ajax({

        type:'get',
        url:'{!!URL::to('hinhanh-xoay')!!}',
        data:{'sp_id':sp_id},
      
        success:function(data){
      
             $('#image').html(data);
          window.CI360.init();
           $('.slider').slick({
    slidesToShow: 3,
    slidesToScroll: 3,
    dots: true,
    infinite: true,
    cssEase: 'linear'
});
        
  
        },
        error:function(){

        }
      });
    });
    </script>
<script>
const searchForm = document.querySelector("#search-form");
const searchFormInput = searchForm.querySelector("input"); // <=> document.querySelector("#search-form input");
const info = document.querySelector(".info");

// The speech recognition interface lives on the browser’s window object
const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition; // if none exists -> undefined

if(SpeechRecognition) {
  console.log("Your Browser supports speech Recognition");
  
  const recognition = new SpeechRecognition();
  recognition.continuous = true;
  // recognition.lang = "en-US";

  searchForm.insertAdjacentHTML("beforeend", '<button type="button"><i class="fa fa-microphone"></i></button>');
  searchFormInput.style.paddingRight = "50px";

  const micBtn = searchForm.querySelector("button");
  const micIcon = micBtn.firstElementChild;

  micBtn.addEventListener("click", micBtnClick);
  function micBtnClick() {
    if(micIcon.classList.contains("fa-microphone")) { // Start Voice Recognition
      recognition.start(); // First time you have to allow access to mic!
    }
    else {
      recognition.stop();
    }
  }

  recognition.addEventListener("start", startSpeechRecognition); // <=> recognition.onstart = function() {...}
  function startSpeechRecognition() {
    micIcon.classList.remove("fa-microphone");
    micIcon.classList.add("fa-microphone-slash");
    searchFormInput.focus();
    console.log("Voice activated, SPEAK");
  }

  recognition.addEventListener("end", endSpeechRecognition); // <=> recognition.onend = function() {...}
  function endSpeechRecognition() {
    micIcon.classList.remove("fa-microphone-slash");
    micIcon.classList.add("fa-microphone");
    searchFormInput.focus();
    console.log("Speech recognition service disconnected");
  }

  recognition.addEventListener("result", resultOfSpeechRecognition); // <=> recognition.onresult = function(event) {...} - Fires when you stop talking
  function resultOfSpeechRecognition(event) {
    const current = event.resultIndex;
    const transcript = event.results[current][0].transcript;
    
    if(transcript.toLowerCase().trim()==="stop recording") {
      recognition.stop();
    }
    else if(!searchFormInput.value) {
      searchFormInput.value = transcript;
    }
    else {
      if(transcript.toLowerCase().trim()==="go") {
        searchForm.submit();
      }
      else if(transcript.toLowerCase().trim()==="reset input") {
        searchFormInput.value = "";
      }
      else {
        searchFormInput.value = transcript;
      }
    }
     searchFormInput.value = transcript;
     searchFormInput.focus();
     setTimeout(() => {
      searchForm.submit();
    }, 500);
  }
  
//  info.textContent = 'Voice Commands: "stop recording", "reset input", "go"';
  
}
else {
  console.log("Your Browser does not support speech Recognition");
  info.textContent = "Your Browser does not support Speech Recognition";
}
</script>
 
<script>
  $(document).ready(function(){
      
    $('#search').autocomplete({
      source: '{{url('/autocomplete')}}',
      minLength: 1,
      select: function(event, ui)
      {
        console.log(ui.item.value);
        $('#search').val(ui.item.value);
      }
    }).data('ui-autocomplete')._renderItem = function(ul, item){
      return $("<li class='ui-autocomplete-row'></li>")
        .data("item.autocomplete", item)
        .append(item.label)
        .appendTo(ul);
    };

  });
</script>
 <script type="text/javascript">
   
  $(document).on('change','#payment_select',function () {
      var id=$(this).val();
        $.get("thanhtoan-online/"+id,function(data){
    
        $("#vnpay").html(data);
       if(data!=''){
       $(".send_order").hide();}
       else{
        $(".send_order").show();
       }
    });
    });
</script>
<script>
  $(document).ready(function() {
   if($('#vcid').val()==''){
       $('#checkvc').html('<p class="text text-success" style="color:red; font-size:15px;">Bạn hãy chọn hình thức vận chuyển</p>');
    }
     var total=$('#shipping_total').val();
      $('#vccp').html("<li>Tổng giá sản phẩm <span>"+formatNumber(total, '.', ',')+" VNĐ</span></li>");
    $('#vcid').change(function(){
     
      if($('#vcid').val()==''){
       $('#checkvc').html('<p class="text text-success" style="color:red; font-size:15px;">Bạn hãy chọn hình thức vận chuyển</p>');
        var total=$('#shipping_total').val();
      $('#vccp').html("<li>Tổng giá sản phẩm <span>"+formatNumber(total, '.', ',')+" VNĐ</span></li>");
    }
    else{
        $('#checkvc').html('');
         var vccp=$(this).find('option:selected').attr('data-vc_chiphi');
    var total=$('#shipping_total').val();
    var giaddh= parseInt(total)+parseInt(vccp);
            html='';
            html+="<li>Chi phí vận chuyển:<span>"+formatNumber(vccp, '.', ',')+" VNĐ</span></li>";
          html+=" <li>Tổng giá sản phẩm <span>"+formatNumber(total, '.', ',')+" VNĐ</span></li>";
           html+=" <li>Tổng  <span>"+formatNumber(giaddh, '.', ',')+" VNĐ</span></li>";
           $('#vccp').html(html);
           $('#shipping_total').val(giaddh);
    }
   
    });
     //address
     $('#shipping_address').change(function(){
      var address=$(this).val();
       var address1=$(this).val().length;
      if(address=='')
     $('#address').html('<p class="text text-success" style="color:red; font-size:15px;">Bạn chưa điền địa chỉ giao hàng</p>');
    else  if(address1<10)
     $('#address').html('<p class="text text-success" style="color:red; font-size:15px;">Địa chỉ giao hàng phải có ít nhất 10 ký tự</p>');
   else
     $('#address').html('');
     });
    // phone
     $('#shipping_phone').change(function(){
      var phone=$(this).val();
       var phone1=$(this).val().length;
      if(phone=='')
     $('#phone').html('<p class="text text-success" style="color:red; font-size:15px;">Bạn chưa điền số điện thoại</p>');
      else  if(phone1<10)
     $('#phone').html('<p class="text text-success" style="color:red; font-size:15px;">Số điện thoại liên hệ phải có 10 chữ số</p>');
   else
     $('#phone').html('');
    if(!$.isNumeric(phone))
     $('#phonecheck').html('<p class="text text-success" style="color:red; font-size:15px;">Số điện thoại liên hệ phải là chữ số</p>');
   else
     $('#phonecheck').html('');
     });
      
      
  });
</script>
<script type="text/javascript">
   function formatNumber(nStr, decSeperate, groupSeperate) {
            nStr += '';
            x = nStr.split(decSeperate);
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + groupSeperate + '$2');
            }
            return x1 + x2;
        }
</script>
<script>

$('.slider').slick({
    slidesToShow: 3,
    slidesToScroll: 3,
    dots: true,
    infinite: true,
    cssEase: 'linear'
});

</script>
<script type="text/javascript">
    $(document).on('change','#sort',function () {
      var url=$(this).val();
       if(url){
        window.location=url
       }
       return false;
    
       
    });
</script>
   @if(isset($max)&&isset($min_gia)&&isset($max_gia))
<script>
   $(document).ready(function() {
    $( "#slider-range" ).slider({
      orientation: "horizontal",
      range: true,
      min: {{$min_gia}},
      max: {{$max}},
      values: [{{$min_gia}}, {{$max_gia}} ],
      step:1000000, 
      slide: function( event, ui ) {
        $( "#amount" ).val( formatNumber( ui.values[ 0 ], '.', ',') +" vnđ"+ " - " +formatNumber( ui.values[ 1 ], '.', ',') +" vnđ"  );
        $("#giabatdau").val(ui.values[ 0 ]);
        $("#giaketthuc").val(ui.values[ 1 ]);
      }
    });
    $( "#amount" ).val(formatNumber( $( "#slider-range" ).slider( "values", 0 ), '.', ',')+" vnđ"+" - "
      +formatNumber( $( "#slider-range" ).slider( "values", 1 ), '.', ',')+" vnđ" );
  });
  </script>
  @endif
</body>
</html>