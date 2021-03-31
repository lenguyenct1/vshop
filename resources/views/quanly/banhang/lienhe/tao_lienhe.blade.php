@extends('admin_banhang')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Thông tin liên hệ website
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
                                <form role="form" action="{{URL::to('/banhang/sua-lienhe/'.$lienhe->lienhe_id)}}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                   
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Thông tin liên hệ </label>
                                  <textarea style="resize: none"  data-validation="length" data-validation-length="min5"  data-validation-error-msg="Làm ơn điền ít nhất 5 ký tự" row="8" class="form-control" name="lienhe_thongtin" placeholder="Thông tin liên hệ"  id="ckeditor">{{$lienhe->lienhe_thongtin}}</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Bản đồ </label>
                                  <textarea style="resize: none"  data-validation="length" data-validation-length="min5"  data-validation-error-msg="Làm ơn điền ít nhất 5 ký tự" row="8" class="form-control" name="lienhe_bando" placeholder="Thông tin bản đồ" >{{$lienhe->lienhe_bando}}</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Fanpage</label>
                                  <textarea style="resize: none"  data-validation="length" data-validation-length="min5"  data-validation-error-msg="Làm ơn điền ít nhất 5 ký tự" row="8" class="form-control" name="lienhe_fanpage" placeholder="Thông tin fanpage" >{{$lienhe->lienhe_fanpage}}</textarea>
                                </div>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Hình ảnh liên hệ</label>
                                    <input type="file" name="lienhe_hinh" class="form-control" id="exampleInputEmail1" >
                                        <img src="{{URL::to('upload/lienhe/'.$lienhe->lienhe_hinh)}}" height="100px" width="100px">
                                </div>
                                
                               
                          
                                 <button type="submit" name="tao_lienhe" class="btn btn-info">Lưu</button>
                         
                             
                               
                                </form>
                         

                        </div>
                    </div>
                    </section>

            </div>
        </div>
     
@endsection