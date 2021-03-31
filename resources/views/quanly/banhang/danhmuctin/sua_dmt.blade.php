@extends('admin_banhang')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Sửa thông tin danh mục tin
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
                                <form role="form" action="{{URL::to('/banhang/sua-dmt/'.$dmt->dmt_id)}}" method="post">
                                    {{ csrf_field() }}
                                   
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên danh mục tin</label>
                                    <input type="text" name="dmt_ten" class="form-control" id="exampleInputEmail1" value="{{$dmt->dmt_ten}}" placeholder="Tên danh mục tin">
                                </div>
                              
                          
                                 <button type="submit" name="suath" class="btn btn-info">Lưu</button>
                          <a type="button" name="taopnk" class="btn btn-success" href="{{ URL::to('banhang/danhsach-dmt') }}">Trở về</a><br>
                               
                               
                                </form>
                         

                        </div>
                    </div>
                    </section>

            </div>
        </div>
@endsection