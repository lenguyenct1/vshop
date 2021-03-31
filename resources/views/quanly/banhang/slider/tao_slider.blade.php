@extends('admin_banhang')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Thông tin slider 
                        </header>
                         @if(count($errors)>0)
                        <span class="text-alert">
                            @foreach($errors->all() as $err)
                                {{$err}}<br>
                                @endforeach
                            </span>
                         @endif
                           @if(session('thongbao'))
                            <span class="text-alert">
                                {{session('thongbao')}}
                            </span>
                        @endif
                        <div class="panel-body">

                            <div class="position-center">
                                <form role="form" action="{{URL::to('/banhang/tao-slider')}}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên slider</label>
                                    <input type="text" name="slider_ten" class="form-control" id="exampleInputEmail1" placeholder="Tên slider" data-validation="length" data-validation-length="min3"  data-validation-error-msg="Làm ơn điền ít nhất 3 ký tự" >
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Hình ảnh</label>
                                    <input type="file" name="slider_hinh" class="form-control" id="exampleInputEmail1" placeholder="Slider" required>
                                </div>
                                
                               
                                
                               
                            
                                 <button type="submit" name="tao_slider" class="btn btn-info">Lưu</button>
                                        <a type="button" name="tro_ve" class="btn btn-success" href="{{ URL::to('banhang/danhsach-slider') }}">Trở về</a><br>
                                </form>
                            </div>

                        </div>
                    </section>

            </div>
@endsection