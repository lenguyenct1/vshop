@extends('layout')
@section('content')
@include('slider')
<style type="text/css">
  .baiviet ul li{
    padding: 2px;
    font-size: 16px;
  }
  .baiviet ul li a{
    color: #000;
  }
    .baiviet ul li a:hover{
    color: #FE980F;
  }
    .baiviet ul li {
   list-style-type: decimal-leading-zero;
  }
  .mucluc h1{
    font-size: 20px;
    color: brown;
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


<div  class="blog-post-area"><!--features_items-->
                        <h2 class="title text-center" style="margin: 0;position: inherit;font-size: 22px;"> {{$meta_title}} </h2>
                       
                          <div class="single-blog-post" style="border: none;">
                            @foreach($tintuc as $key=> $dstintuc)
                             <div class="single-products" style="margin: 10px;padding: 2px;">
                                <div style=" position: relative;">
                             <p> {!!$dstintuc->tintuc_noidung!!}</p>
                             </div>
                             </div>
                            @endforeach
                            <div class="clearfix"></div>
                          </div>
                           
                            
                 
                    </div><!--features_items--> 
        <!--/recommended_items-->
     <!--    <ul class="pagination pagination-sm m-t-none m-b-none">
           
        </ul>
      -->
      <div class="blog-post-area"><!--features_items-->
                        <h2 class="title text-center">Bình luận tin tức</h2>
                       
                          <div class="single-blog-post"  style="border: none;">

                            <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0&appId=840076133401851&autoLogAppEvents=1" nonce="AxvfREPr"></script>
      <div class="fb-comments" data-href="{{$url_canonical}}" data-numposts="10" data-width=""></div>

                          </div>
                            <div class="blog-post-area"><!--features_items-->
                        <h2 class="title text-center">Chia sẻ</h2>
                       
                          <div class="single-blog-post"  style="border: none; ">
                            
                             <div id="fb-root"></div>
                            
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0&appId=840076133401851&autoLogAppEvents=1" nonce="6bBKKOrP"></script>
<div class="fb-like" data-href="{{$url_canonical}}" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="true"></div>

                          </div>
                           
                            
                 
                    </div><!--features_items--> 
<div class="features_items"><!--features_items-->
                        <h2 class="title text-center">Tin tức liên quan</h2>
                       
                          <div class="product-image-wrapper" style="border: none;">
                            @foreach($tinlienquan as $key=> $dstinlienquan)
                             <div class="single-products" style="margin: 10px;padding: 2px;">
                                <div>
                                    <img style="float: left; width: 30%; padding: 5px;" src="{{asset('upload/tintuc/'.$dstinlienquan->tintuc_hinh)}}" alt="{{$dstinlienquan->tintuc_nhan}}">
                                    <h4 style="color: #000;padding: 5px; text-align: center;">{{$dstinlienquan->tintuc_ten}}</h4>
                                    <p >{!!$dstinlienquan->tintuc_tomtat!!}</p>
                                </div>
                                <div class="text-right">
                                   
                                     <a href="{{URL::to('/tintuc/'.$dstinlienquan->tintuc_nhan)}}"><button class="button" style="vertical-align:middle; " title="Xem bài viết"><span>Xem bài viết</span></button></a>
                                </div>
                                 
                             </div>
                             <div class="clearfix"></div>
                            @endforeach

                          </div>
                           
                            
                 
                    </div><!--features_items--> 

      
                </div>
            </div>
        </div>
    </section>
@endsection 
    