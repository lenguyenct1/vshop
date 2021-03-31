<!DOCTYPE html>
<head>
<title>Tổng quan</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="{{asset('backend/css/bootstrap.min.css')}}" >
<link rel="stylesheet" href="{{asset('backend/css/bootstrap-tagsinput.css')}}" >
<link rel="stylesheet" href="{{asset('backend/css/typeaheadjs.css')}}" >
<meta name="csrf-token" content="{{csrf_token()}}"/>
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="{{asset('backend/css/style.css')}}" rel='stylesheet' type='text/css' />
<link href="{{asset('backend/css/style-responsive.css')}}" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="{{asset('backend/css/font.css')}}" type="text/css"/>
<link href="{{asset('backend/css/font-awesome.css')}}" rel="stylesheet"> 
<link rel="stylesheet" href="{{asset('backend/css/morris.css')}}" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="{{asset('backend/css/monthly.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('backend/DataTables/datatables.min.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('backend/css/datatables.min.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('backend/css/select2.min.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('backend/css/bootstrap-datepicker.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('backend/css/jquery-ui.css')}}">
 


<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="{{asset('backend/js/jquery2.0.3.min.js')}}"></script>
<script src="{{asset('backend/js/raphael-min.js')}}"></script>
<!-- <script src="{{asset('backend/js/morris.js')}}"></script> -->
<script src="{{asset('backend/js/numeral.min.js')}}"></script>
<script src="{{asset('backend/js/bootstrap-datepicker.js')}}"></script>
  @laravelPWA
<base href="{{asset('')}}">
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="{{URL::to('banhang/tongquanbanhang')}}" class="logo">
        QUẢN LÝ
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <li>
           <!--  <input type="text" class="form-control search" placeholder=" Search"> -->
        </li>
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="{{('backend/images/admin.png')}}">
                    @if(isset(Auth::user()->name))
                <span class="username">
                	
                    {{Auth::user()->name}}
                </span>
                @endif
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
         
                <li><a href="{{URL::to('/dangxuat')}}"><i class="fa fa-key"></i>Đăng xuất</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
            <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="{{URL::to('banhang/tongquanbanhang')}}">
                        <i class="fa fa-dashboard"></i>
                        <span>Tổng quan</span>
                    </a>
                </li>
                 @if(Auth::user()->quyen==1||Auth::user()->quyen==4||Auth::user()->quyen==6||Auth::user()->quyen==9)
                       <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa  fa-archive"></i>
                        <span>Quản lý kho</span>
                    </a>
                    <ul class="sub">
                      <li><a href="{{URL::to('banhang/danhsach-kho')}}">Danh mục kho xuất hàng</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-ncc')}}">Danh mục nhà cung cấp</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-th')}}">Danh mục thương hiệu</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-mau')}}">Danh mục màu sắc</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-xx')}}">Danh mục xuất xứ</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-sp')}}">Danh mục sản phẩm</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-pnk')}}">Phiếu nhập kho</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-ptncc')}}">Phiếu trả nhà cung cấp</a></li>
                        <li><a href="{{URL::to('banhang/ton-sp')}}">Mẫu sản phẩm còn tồn kho</a></li>
                        <li><a href="{{URL::to('banhang/tao-bcncc')}}">Báo cáo nhập-xuất-tồn theo nhà cung cấp</a></li>
                        <li><a href="{{URL::to('banhang/tao-bctk')}}">Báo cáo tồn kho tức thời</a></li>
                     
                     
                      
                    </ul>
                </li>
                 @endif
                    @if(Auth::user()->quyen==3||Auth::user()->quyen==4||Auth::user()->quyen==8||Auth::user()->quyen==9)
                  <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-shopping-cart"></i>
                        <span>Quản lý bán hàng</span>
                    </a>
                      <ul class="sub">
                        <li><a href="{{URL::to('banhang/danhsach-kh')}}">Khách hàng</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-ddh')}}">Đơn đặt hàng</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-khuyenmai')}}">Khuyến mãi</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-binhluan')}}">Bình luận</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-vc')}}">Vận chuyển</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-slider')}}">Slider</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-dmt')}}">Danh mục tin</a></li>
                        <li><a href="{{URL::to('banhang/danhsach-tintuc')}}">Tin tức</a></li>
                        <li><a href="{{URL::to('banhang/tao-lienhe')}}">Thông tin liên hệ</a></li>
                       
                   
                        
                      
                    </ul>
                 
                </li>
                   @endif
                    @if(Auth::user()->quyen==5||Auth::user()->quyen==6||Auth::user()->quyen==8||Auth::user()->quyen==9)
                      <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-users"></i>
                        <span>Quản lý nhân viên</span>
                    </a>
                    <ul class="sub">
                        <li><a href="{{URL::to('banhang/danhsach-nv')}}">Nhân viên</a></li>      
                    </ul>
                </li>
                @endif
                    
                
                  
             
  </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
        @yield('admin_content')
    </section>
 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>PHẦN MỀM QUẢN LÝ BÁN HÀNG</p>
			</div>
		  </div>
  <!-- / footer -->
</section>
<!--main content end-->
</section>
<script src="{{asset('backend/js/bootstrap.js')}}"></script>
<script src="{{asset('backend/js/jquery.dcjqaccordion.2.7.js')}}"></script>
<script src="{{asset('backend/js/scripts.js')}}"></script>
<script src="{{asset('backend/js/jquery.slimscroll.js')}}"></script>
<script src="{{asset('backend/js/jquery.nicescroll.js')}}"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="{{asset('backend/js/jquery.scrollTo.js')}}"></script>
<script src="{{asset('backend/ckeditor/ckeditor.js')}}"></script>
<script src="{{asset('backend/DataTables/datatables.min.js')}}"></script>
<script src="{{asset('backend/js/pdfmake.min.js')}}"></script>
<script src="{{asset('backend/js/vfs_fonts.js')}}"></script>
<script src="{{asset('backend/js/jquery.form-validator.min.js')}}"></script>
<script src="{{asset('backend/js/bootstrap-tagsinput.min.js')}}"></script>
<script src="{{asset('backend/js/typeahead.bundle.js')}}"></script>
<script src="{{asset('backend/js/select2.js')}}"></script>
<script src="{{asset('backend/js/simple.money.format.js')}}"></script>
<script src="{{asset('backend/js/Chart.min.js')}}"></script>
<script src="{{asset('backend/js/jquery-ui.js')}}"></script>




<script>
                        var url = 'http://localhost/laravelshop/public/backend';
                            // Thay thế <textarea id="post_content"> với CKEditor
                            CKEDITOR.replace( 'ckeditor',{
                            
                                filebrowserBrowseUrl: url+'/ckfinder/ckfinder.html',
                                filebrowserImageBrowseUrl: url+'/ckfinder/ckfinder.html?type=Images',
                                filebrowserUploadUrl: url+'/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
                                filebrowserImageUploadUrl: url+'/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'
                            
                                
                            } );// tham số là biến name của textarea
//                             CKEDITOR.on('dialogDefinition', function (ev) {

//        var dialogName = ev.data.name,
//            dialogDefinition = ev.data.definition;

//        if (dialogName == 'image') {
//            var onOk = dialogDefinition.onOk;

//            dialogDefinition.onOk = function (e) {
//                var width = this.getContentElement('info', 'txtWidth');
//                width.setValue('100');//Set Default Width

//                var height = this.getContentElement('info', 'txtHeight');
//                height.setValue('100');//Set Default height

//                onOk && onOk.apply(this, e);
//            };
//        }
// });
                        </script>
<script>
                        var url = 'http://localhost/laravelshop/public/backend';
                            // Thay thế <textarea id="post_content"> với CKEditor
                            CKEDITOR.replace( 'ckeditor1',{
                            
                                filebrowserBrowseUrl: url+'/ckfinder/ckfinder.html',
                                filebrowserImageBrowseUrl: url+'/ckfinder/ckfinder.html?type=Images',
                                filebrowserUploadUrl: url+'/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
                                filebrowserImageUploadUrl: url+'/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'
                            
                                
                            } );// tham số là biến name của textarea
//                             CKEDITOR.on('dialogDefinition', function (ev) {

//        var dialogName = ev.data.name,
//            dialogDefinition = ev.data.definition;

//        if (dialogName == 'image') {
//            var onOk = dialogDefinition.onOk;

//            dialogDefinition.onOk = function (e) {
//                var width = this.getContentElement('info', 'txtWidth');
//                width.setValue('100');//Set Default Width

//                var height = this.getContentElement('info', 'txtHeight');
//                height.setValue('100');//Set Default height

//                onOk && onOk.apply(this, e);
//            };
//        }
// });
                        </script>
<script type="text/javascript">
        $(document).ready(function(){
            $('.choose').on('change',function(){
            var action = $(this).attr('id');
            var ma_id = $(this).val();
            var _token = $('input[name="_token"]').val();
            var result = '';
           
            if(action=='cate_id'){
                result = 'product_cate';
            }
            $.ajax({
                url : '{{url('/get-category')}}',
                method: 'POST',
                data:{action:action,ma_id:ma_id,_token:_token},
                success:function(data){
                   $('#'+result).html(data);     
                }
            });
        });
        });
          
    </script>

<script type="text/javascript">
	$.validate({

	});
</script>
<!-- <script>
	CKEDITOR.replace('ckeditor');
</script> -->
<!-- morris JavaScript -->	
<!-- <script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
	   
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
		
		graphArea2 = Morris.Area({
			element: 'hero-area',
			padding: 10,
        behaveLikeLine: true,
        gridEnabled: false,
        gridLineColor: '#dddddd',
        axes: true,
        resize: true,
        smooth:true,
        pointSize: 0,
        lineWidth: 0,
        fillOpacity:0.85,
			data: [
				{period: '2015 Q1', iphone: 2668, ipad: null, itouch: 2649},
				{period: '2015 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
				{period: '2015 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
				{period: '2015 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
				{period: '2016 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
				{period: '2016 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
				{period: '2016 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
				{period: '2016 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
				{period: '2017 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
			
			],
			lineColors:['#eb6f6f','#926383','#eb6f6f'],
			xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
			pointSize: 2,
			hideHover: 'auto',
			resize: true
		});
		
	   
	});
	</script> -->
<!-- calendar -->
	<script type="text/javascript" src="{{asset('backend/js/monthly.js')}}"></script>
    <script type="text/javascript" src="{{asset('backend/js/canvasjs.min.js')}}"></script>
	<script type="text/javascript">
		$(window).load( function() {

			$('#mycalendar').monthly({
				mode: 'event',
				
			});

			$('#mycalendar2').monthly({
				mode: 'picker',
				target: '#mytarget',
				setWidth: '250px',
				startHidden: true,
				showTrigger: '#mytarget',
				stylePast: true,
				disablePast: true
			});

		switch(window.location.protocol) {
		case 'http:':
		case 'https:':
		// running on a server, should be good.
		break;
		case 'file:':
		alert('Just a heads-up, events will not work when run locally.');
		}

		});
	</script>
	<!-- //calendar -->
    
</body>
</html>
