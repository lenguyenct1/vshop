@extends('admin_banhang')
@section('admin_content')
<style type="text/css">
  .select2 {
width:100%!important;
}
</style>
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Sửa thông tin tin tức
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
                                <form role="form" action="{{URL::to('/banhang/sua-tintuc/'.$tintuc->tintuc_id)}}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                   
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tiêu đề tin tức</label>
                                    <input type="text" name="tintuc_ten" class="form-control" id="exampleInputEmail1" placeholder="Tiêu đề tin tức" value="{{$tintuc->tintuc_ten}}">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Hình ảnh</label>
                                    <input type="file" name="tintuc_hinh" class="form-control" id="exampleInputEmail1" >
                                      <img src="{{URL::to('upload/tintuc/'.$tintuc->tintuc_hinh)}}" height="100px" width="100px">
                                </div>
                               <div class="form-group">
                                    <label for="exampleInputEmail1">Tóm tắt tin tức </label>
                                  <textarea style="resize: none"  data-validation="length" data-validation-length="min5"  data-validation-error-msg="Làm ơn điền ít nhất 5 ký tự" row="8" class="form-control" name="tintuc_tomtat" placeholder="Tóm tắt tin tức"  id="ckeditor">{{$tintuc->tintuc_tomtat}}</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nội dung </label>
                                  <textarea style="resize: none"  data-validation="length" data-validation-length="min5"  data-validation-error-msg="Làm ơn điền ít nhất 5 ký tự" row="8" class="form-control" name="tintuc_noidung" placeholder="Nội dung"  id="ckeditor1">{{$tintuc->tintuc_noidung}}"</textarea>
                                </div>
                                
                                       <div class="form-group">
                                    <label for="exampleInputPassword1">Danh mục tin</label>
                                      <select name="dmt_id" class="form-control input-sm m-bot15 dmt" required>
                                         <option value="">--Chọn danh mục tin--</option>
                                        @foreach($dmt as $key => $dsdmt)
                                            @if($dsdmt->dmt_id==$tintuc->dmt_id)
                                            <option selected value="{{$dsdmt->dmt_id}}">{{$dsdmt->dmt_ten}}</option>
                                            @else
                                            <option value="{{$dsdmt->dmt_id}}">{{$dsdmt->dmt_ten}}</option>
                                            @endif
                                        @endforeach
                                            
                                    </select>
                                </div>
                                 <button type="submit" name="taotintuc" class="btn btn-info">Lưu</button>
                         
                                <a type="button" name="taotintuc" class="btn btn-success" href="{{ URL::to('banhang/danhsach-tintuc') }}">Trở về</a><br>
                               
                                </form>
                         

                        </div>
                    </div>
                    </section>

            </div>
        </div>
        <script type="text/javascript">
  $(document).ready(function(){
    $('.dmt').select2({
           
        });

    });
</script>
@endsection