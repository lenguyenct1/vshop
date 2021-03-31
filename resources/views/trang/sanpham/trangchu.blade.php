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
                                    <h4 class="panel-title"><a href="{{URL::to('/thuonghieu-sanpham/'.$dsth->th_nhan)}}"><img src="{{URL::to('upload/thuonghieu/'.$dsth->th_hinh)}}"  class="girl img-responsive"  ></a></h4>
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
 background-color: #008CBA;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
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
  background-color: #00c0ff;
  color: white;
}
#recommended-item-carousel1 .carousel-inner .item {
    padding-left: 0;
}
</style>
<?php $gia=0; $gia1=0; $tonglap=0; $gia2=0; $tonglap1=0; $gia3=0;?>
<div class="features_items"><!--features_items-->
                        <h2 class="title text-center">Sản phẩm mới nhất</h2>
                        @if(!$sp->isEmpty())
                        @foreach($sp as $key => $dssp)
                      
                         <?php 
                                             $giamgia=($dssp->gia_giatri*$dssp->khuyenmai_giatri)/100;
                                            $gia=$dssp->gia_giatri- $giamgia;
                                       
                                          $danhgia=DB::table('danhgia')->where('sp_id',$dssp->sp_id)->avg('dg_danhgia');
                                            $dgc=DB::table('danhgia')->where('sp_id',$dssp->sp_id)->count();
                                            $danhgia=round($danhgia);
                                      
                                        ?>

                                    <div class="col-sm-4">
                                                 <div class="product-image-wrapper">
                             <a href="{{URL::to('/chi-tiet-san-pham/'.$dssp->sp_nhan)}}">
                                <div class="single-products">
                                        <div class="productinfo text-center">
                                              @if ($danhgia>3)
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
                                                 @elseif($date>=$dssp->khuyenmai_ngaybatdau && $date<=$dssp->khuyenmai_ngayketthuc)
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
                        <div style="font-size: 30px; text-align: center;">Không có sản phẩm</div>
                        @endif
                    </div><!--features_items-->


                    
                        @if(!$spbc->isEmpty())
                          <div class="features_items"><!--features_items-->
                        <h2 class="title text-center">Sản phẩm bán chạy nhất</h2>
                        @foreach($spbc as $key => $dsspbc)
                      
                         <?php 
                                             $giamgia3=($dsspbc->gia_giatri*$dsspbc->khuyenmai_giatri)/100;
                                            $gia3=$dsspbc->gia_giatri- $giamgia3;
                                       
                                          $danhgia3=DB::table('danhgia')->where('sp_id',$dsspbc->sp_id)->avg('dg_danhgia');
                                            $dgc3=DB::table('danhgia')->where('sp_id',$dsspbc->sp_id)->count();
                                            $danhgia3=round($danhgia3);
                                      
                                        ?>

                                    <div class="col-sm-4">
                                                 <div class="product-image-wrapper">
                             <a href="{{URL::to('/chi-tiet-san-pham/'.$dsspbc->sp_nhan)}}">
                                <div class="single-products">
                                        <div class="productinfo text-center">
                                              @if ($danhgia3>3)
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
                                                 @elseif($date>=$dsspbc->khuyenmai_ngaybatdau && $date<=$dsspbc->khuyenmai_ngayketthuc)
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
                                            <img width="100px" height="250px" src="upload/sanpham/{{$dsspbc->sp_hinh}}" alt="" />
                                            @if($date>=$dsspbc->khuyenmai_ngaybatdau && $date<=$dsspbc->khuyenmai_ngayketthuc)
                                            <strong>{{number_format($gia3).' '.'VNĐ'}}</strong>
                                            <span
                                             style="
                                                display: inline-block;
                                                vertical-align: middle;
                                                font-size: 13px;
                                                color: #757575;
                                                text-decoration: line-through;
                                                font-weight: 300;"
                                                >{{number_format($dsspbc->gia_giatri).' '.'VNĐ'}}</span>
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
                                                    text-align: center;">-{{$dsspbc->khuyenmai_giatri}}%</label>
                                            @else
                                            <strong>{{number_format($dsspbc->gia_giatri).' '.'VNĐ'}}</strong>@endif
                                          <p style="height: 30px;">{{$dsspbc->sp_ten}}</p>
                                                <ul class="list-inline rating" title="Average Rating">
                                        @for($count=1;$count<=5;$count++)
                                            @php
                                            if($count<=$danhgia3){
                                            $color='color:#ffcc00;';
                                        }
                                        else{
                                        $color='color:#ccc;';
                                    }
                                            @endphp
                                        
                                        <li title="đánh giá sao"
                                            data-rating="{{$danhgia3}}"
                                            class="rating"
                                            style="cursor: pointer;{{$color}} font-size: 20px;">
                                            &#9733;
                                        </li>
                                        @endfor
                                      
                                    </ul>
                                                <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2>{{number_format($gia3).' '.'VNĐ'}}</h2>
                                                <p>{{$dsspbc->sp_ten}}</p>
                                                <a href="{{URL::to('/chi-tiet-san-pham/'.$dsspbc->sp_nhan)}}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Chọn mua</a>
                                            </div>
                                        </div>
                                            <a href="{{URL::to('/chi-tiet-san-pham/'.$dsspbc->sp_nhan)}}" style="margin-bottom: 200px;"class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Chọn mua</a>
                                        </div>
                                      
                                </div>
                            </a>
                         
                                
                            </div>
                             
                        </div>
                        @endforeach
                          </div><!--features_items-->
                        @else
                      
                        @endif
                  
                    
                     
   @if(!$km->isEmpty()) 
                    <div class="recommended_items"><!--recommended_items-->
                        <h2 class="title text-center">Sản phẩm khuyến mãi</h2>
                        
                        <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner" style="height: 530px;">
                              
                                  @foreach($km as $key => $dskm)
                                  @if($key%3==0)
                                  <div class="item {{$key==0 ? 'active': ''}}">
                                  @endif
                      
                         <?php 
                                         
                                         $tonglap=$tonglap+1;
                                          $giamgia1=($dskm->gia_giatri*$dskm->khuyenmai_giatri)/100;
                                            $gia1=$dskm->gia_giatri- $giamgia1;
                                       
                                          $danhgia1=DB::table('danhgia')->where('sp_id',$dskm->sp_id)->avg('dg_danhgia');
                                            $dgc1=DB::table('danhgia')->where('sp_id',$dskm->sp_id)->count();
                                            $danhgia1=round($danhgia1);
                                      
                                        ?>  
                                    <div class="col-sm-4">
                                        <div class="product-image-wrapper">
                                            <a href="{{URL::to('/chi-tiet-san-pham/'.$dskm->sp_nhan)}}">
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
                                                 @else
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
                                                    <img src="{{URL::to('upload/sanpham/'.$dskm->sp_hinh)}}" alt="" />
                                                        
                                          
                                            <strong >{{number_format($gia1).' '.'VNĐ'}}</strong>
                                            <span
                                             style="
                                                display: inline-block;
                                                vertical-align: middle;
                                                font-size: 15px;
                                                color: #757575;
                                                text-decoration: line-through;
                                                font-weight: 300;"
                                                >{{number_format($dskm->gia_giatri).' '.'VNĐ'}}</span>
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
                                                text-align: center;">-{{$dskm->khuyenmai_giatri}}%</label>
                                            
                                             <p style="height: 30px;">{{$dskm->sp_ten}}</p>
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
                                                <p>{{$dskm->sp_ten}}</p>
                                                <a href="{{URL::to('/chi-tiet-san-pham/'.$dskm->sp_nhan)}}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Chọn mua</a>
                                            </div>
                                        </div>
                                                    <a href="{{URL::to('/chi-tiet-san-pham/'.$dskm->sp_nhan)}}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Chọn mua</a>
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

                    <div>  <a href="{{URL::to('/khuyenmai')}}"><button class="button" style="vertical-align:middle; width: 100%;" title="Xem Thêm"><span>Xem Thêm</span></button></div> 
                             @endif     

                                <br/>
                                <br/>

                             @if(!$nb->isEmpty()) 
                    <div class="recommended_items"><!--recommended_items-->
                        <h2 class="title text-center">Sản phẩm nổi bật</h2>
                        
                        <div id="recommended-item-carousel1" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner"  style="height: 530px;">
                              
                                  @foreach($nb as $key => $dsnb)
                                  @if($key%3==0)
                                  <div class="item {{$key==0 ? 'active': ''}}"  >
                                  @endif
                      
                         <?php 
                                         
                                         $tonglap1=$tonglap1+1;
                                          $giamgia2=($dsnb->gia_giatri*$dsnb->khuyenmai_giatri)/100;
                                            $gia2=$dsnb->gia_giatri- $giamgia2;
                                       
                                          
                                      
                                        ?>  
                                    <div class="col-sm-4" >
                                        <div class="product-image-wrapper">
                                            <a href="{{URL::to('/chi-tiet-san-pham/'.$dsnb->sp_nhan)}}">
                                             <div class="single-products">
                                                <div class="productinfo text-center" style="height: 530px;" >
                                                    
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
                                                
                                              
                                                    <img src="{{URL::to('upload/sanpham/'.$dsnb->sp_hinh)}}" alt="" />
                                                        
                                            @if($date>=$dsnb->khuyenmai_ngaybatdau && $date<=$dsnb->khuyenmai_ngayketthuc)
                                            <strong >{{number_format($gia2).' '.'VNĐ'}}</strong>
                                            <span
                                             style="
                                                display: inline-block;
                                                vertical-align: middle;
                                                font-size: 15px;
                                                color: #757575;
                                                text-decoration: line-through;
                                                font-weight: 300;"
                                                >{{number_format($dsnb->gia_giatri).' '.'VNĐ'}}</span>
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
                                                text-align: center;">-{{$dsnb->khuyenmai_giatri}}%</label>
                                            @else
                                            <strong >{{number_format($dsnb->gia_giatri).' '.'VNĐ'}}</strong>@endif
                                            <p style="height: 30px;">{{$dsnb->sp_ten}}</p>
                                                <ul class="list-inline rating" title="Average Rating">
                                        @for($count=1;$count<=5;$count++)
                                            @php
                                            if($count<=$dsnb->danhgiasp){
                                            $color='color:#ffcc00;';
                                        }
                                        else{
                                        $color='color:#ccc;';
                                    }
                                            @endphp
                                        
                                        <li title="đánh giá sao"
                                            data-rating="{{$dsnb->danhgiasp}}"
                                            class="rating"
                                            style="cursor: pointer;{{$color}} font-size: 20px;">
                                            &#9733;
                                        </li>
                                        @endfor
                                      
                                    </ul>
                                            <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2>{{number_format($gia2).' '.'VNĐ'}}</h2>
                                                <p>{{$dsnb->sp_ten}}</p>
                                                <a href="{{URL::to('/chi-tiet-san-pham/'.$dsnb->sp_nhan)}}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Chọn mua</a>
                                            </div>
                                        </div>
                                                    <a href="{{URL::to('/chi-tiet-san-pham/'.$dsnb->sp_nhan)}}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Chọn mua</a>
                                                </div>
                                              
                                            </div>
                                        </div>
                                    </div>
                                    @if($key%3==2)
                                  </div>
                                  @endif
                                    @endforeach     
                              
                               
                            </div>
                            @if($tonglap1>5)
                             <a class="left recommended-item-control" href="#recommended-item-carousel1" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                              </a>
                              <a class="right recommended-item-control" href="#recommended-item-carousel1" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                              </a>  
                               @endif           
                        </div>

                    </div><!--/recommended_items-->

                    <div>
                    <a href="{{URL::to('/noibat')}}"><button class="button" style="vertical-align:middle; width: 100%;" title="Xem Thêm"><span>Xem Thêm</span></button></a>
                    </div> 
                             @endif        
             
                </div>
            </div>
        </div>
    </section>                     
@endsection