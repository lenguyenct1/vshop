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


<div class="features_items"><!--features_items-->
                        <h2 class="title text-center">Danh mục {{$dmt_ten}} </h2>
                       
                          <div class="product-image-wrapper" style="border: none;">
                            @foreach($tintuc as $key=> $dstintuc)
                             <div class="single-products" style="margin: 10px;padding: 2px;">
                                <div>
                                    <img style="float: left; width: 30%; padding: 5px;" src="{{asset('upload/tintuc/'.$dstintuc->tintuc_hinh)}}" alt="{{$dstintuc->tintuc_nhan}}">
                                    <h4 style="color: #000;padding: 5px; text-align: center;">{{$dstintuc->tintuc_ten}}</h4>
                                    <p >{!!$dstintuc->tintuc_tomtat!!}</p>
                                </div>
                                <div class="text-right">
                                   
                                     <a href="{{URL::to('/tintuc/'.$dstintuc->tintuc_nhan)}}"><button class="button" style="vertical-align:middle; " title="Xem bài viết"><span>Xem bài viết</span></button></a>
                                </div>
                                 
                             </div>
                             <div class="clearfix"></div>
                            @endforeach

                          </div>
                           
                            
                 
                    </div><!--features_items--> 
        <!--/recommended_items-->
        <ul class="pagination pagination-sm m-t-none m-b-none">
           {!!$tintuc->links()!!}
        </ul>
     


      
                </div>
            </div>
        </div>
    </section>
@endsection 
    