@extends('admin_banhang')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Thông tin thương hiệu
                        </header>
                         @if(count($errors)>0)
                        <span class="text-alert">
                            @foreach($errors->all() as $err)
                                {{$err}}<br>
                                @endforeach
                            </span>
                         @endif
                        
                        <div class="panel-body">

                            <div class="position-center">
                                <form role="form" action="{{URL::to('/banhang/tao-th')}}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                   
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên thương hiệu</label>
                                    <input type="text" name="th_ten" class="form-control" id="exampleInputEmail1" placeholder="Tên thương hiệu">
                                </div>
                               <div class="form-group">
                                    <label for="exampleInputEmail1">Hình ảnh</label>
                                    <input type="file" name="th_hinh" class="form-control" id="exampleInputEmail1" placeholder="Hình thương hiệu" required>
                                </div>
                          
                                 <button type="submit" name="taoth" class="btn btn-info">Lưu</button>
                         
                                <a type="button" name="taopnk" class="btn btn-success" href="{{ URL::to('banhang/danhsach-th') }}">Trở về</a><br>
                               
                                </form>
                         

                        </div>
                    </div>
                    </section>

            </div>
        </div>
@endsection