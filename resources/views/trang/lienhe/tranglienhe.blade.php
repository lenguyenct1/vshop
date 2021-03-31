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
    

strong {
    display: inline-block;
    vertical-align: middle;
    font-size: 15px;
    color: #b10e0e;
    font-weight: bold;
    font-weight: normal;
}
</style>


<div class="blog-post-area"><!--features_items-->
                        <h2 class="title text-center">Liên hệ</h2>
                        <div class="row" >
                          <div class="col-md-12">
                               <img width="50%" height="50%" src="upload/lienhe/{{$lienhe->lienhe_hinh}}" alt="" />
                          </div>
                      <div class="col-md-12">
                         <h4>Thông tin liên hệ</h4>
                       {!!$lienhe->lienhe_thongtin!!}
                       {!!$lienhe->lienhe_fanpage!!}
                      </div>
                      <div class="col-md-12">
                          <h4>Bản đồ</h4>
                      {!!$lienhe->lienhe_bando!!}
                      </div>

                </div>
            </div>
        </div>
    </section>
@endsection 
    