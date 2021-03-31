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
<?php $gia=0; ?>

<div class="features_items"><!--features_items-->
                        <h2 class="title text-center">Sản phẩm nổi bật </h2>
                        <div class="row" >
                            <div class="col-md-4">
                                <label for="amount"> Sắp xếp theo</label>
                                <form>
                                    @csrf
                                    <select name="sort" id="sort" class="form-control">
                                        <option value="{{Request::url()}}?sort_noibat=none">--Lọc theo--</option>
                                        <option value="{{Request::url()}}?sort_noibat=tang_dan">--Giá tăng dần--</option>
                                        <option value="{{Request::url()}}?sort_noibat=giam_dan">--Giá giảm dần--</option>
                                        <option value="{{Request::url()}}?sort_noibat=kytu_az">--Lọc theo tên A đến Z--</option>
                                        <option value="{{Request::url()}}?sort_noibat=kytu_za">--Lọc theo tên Z đến A--</option>
                                
                                    </select>
                                </form>
                            </div>
                             <form>
                            <div class="col-md-2"></div>
                             <div class="col-md-4">
                                <label for="amount"> Lọc theo giá </label>
                                <div class="row">
                               
                                   <div id="slider-range"></div>
                                    <input  type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;margin-left: 20px; width: 280px;">
                                    <input type="hidden" name="giabatdau" id="giabatdau">
                                    <input type="hidden" name="giaketthuc" id="giaketthuc">
                                   
                                    
                                </div>
                            </div>
                             <div class="col-md-1"><input style="margin-top: 10px;" type="submit" name="loc_gia" value="Lọc giá" class="btn btn-default"></div>
                        </div>
                        
                           
                            
                     </form>
                        <br/>

                          @if(!$sp->isEmpty())
                       @foreach($sp as $key => $dssp)
                       <?php 
                                             $giamgia=($dssp->gia_giatri*$dssp->khuyenmai_giatri)/100;
                                            $gia=$dssp->gia_giatri- $giamgia;
                                       
                                         
                                      
                                        ?>


                        <div class="col-sm-4">
                            
                            <div class="product-image-wrapper">
                             <a href="{{URL::to('/chi-tiet-san-pham/'.$dssp->sp_nhan)}}">
                                  <div class="single-products">

                                        <div class="productinfo text-center">
                                           
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
                                              
                                                 
                                            <img width="100px" height="250px" src="upload/sanpham/{{$dssp->sp_hinh}}" alt="" />
                                            
                                             
                                            @if($date>=$dssp->khuyenmai_ngaybatdau && $date<=$dssp->khuyenmai_ngayketthuc)
                                            <strong>{{number_format($gia).' '.'VNĐ'}}</strong>
                                            <span
                                             style="
                                                display: inline-block;
                                                vertical-align: middle;
                                                font-size: 13px;
                                                color: #757575;
                                                text-decoration: line-through;
                                                font-weight: 300;"
                                                >{{number_format($dssp->gia_giatri).' '.'VNĐ'}}</span>
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
                                                text-align: center;">-{{$dssp->khuyenmai_giatri}}%</label>

                                            @else
                                            <strong>{{number_format($dssp->gia_giatri).' '.'VNĐ'}}</strong>@endif
                                          <p style="height: 30px;">{{$dssp->sp_ten}}</p>
                                                <ul class="list-inline rating" title="Average Rating">
                                        @for($count=1;$count<=5;$count++)
                                            @php
                                            if($count<=$dssp->danhgiasp){
                                            $color='color:#ffcc00;';
                                        }
                                        else{
                                        $color='color:#ccc;';
                                    }
                                            @endphp
                                        
                                        <li title="đánh giá sao"
                                            data-rating="{{$dssp->danhgiasp}}"
                                            class="rating"
                                            style="cursor: pointer;{{$color}} font-size: 20px;">
                                            &#9733;
                                        </li>
                                        @endfor
                                      
                                    </ul>
                                            <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2>{{number_format($gia).' '.'VNĐ'}}</h2>
                                                <p>{{$dssp->sp_ten}}</p>
                                             
                                                <a href="{{URL::to('/chi-tiet-san-pham/'.$dssp->sp_nhan)}}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Chọn mua</a>
                                            </div>
                                        </div>
                                            <a href="{{URL::to('/chi-tiet-san-pham/'.$dssp->sp_nhan)}}" style="margin-bottom: 200px;"class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Chọn mua</a>
                                        </div>
                                      
                                </div>
                            </a>
                               
                            </div>
                        </div>
                        
                         
                        @endforeach
                         @else
                             <div style="font-size: 30px; text-align: center;">Không có sản phẩm nổi bật</div>
                             @endif   
                    </div><!--features_items--> 
        <!--/recommended_items-->
      {!!$sp->links()!!}


      
                </div>
            </div>
        </div>
    </section>
@endsection 
    