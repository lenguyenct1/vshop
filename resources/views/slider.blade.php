 <section id="slider"><!--slider-->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#slider-carousel" data-slide-to="1"></li>
                            <li data-target="#slider-carousel" data-slide-to="2"></li>
                        </ol>
                        
                        <div class="carousel-inner">
                            <?php
                            $i=0;
                            $slider=DB::table('slider')->where('slider_hienthi','0')->orderby('slider_id','desc')->take(4)->get();
                            ?>
                            @foreach($slider as $key =>$slider)
                            @php
                            $i++;
                            @endphp
                            <div class="item {{ $i==1 ? 'active' :''}}">
                               
                                <div class="col-sm-12">
                                    
                                         <img  src="{{URL::to('upload/slider/'.$slider->slider_hinh)}}"  class="girl img-responsive" alt="{{$slider->slider_ten}}">
                                </div>
                                   
                                   
                                </div>
                                 @endforeach
                            </div>
                           
                          
                            
                        </div>
                        
                        <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
                    
                </div>
            </div>
        </div>
    </section><!--/slider-->