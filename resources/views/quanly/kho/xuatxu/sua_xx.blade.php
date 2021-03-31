@extends('admin_banhang')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Sửa thông tin xuất xứ
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
                                <form role="form" action="{{URL::to('/banhang/sua-xx/'.$xx->xx_id)}}" method="post">
                                    {{ csrf_field() }}
                                   
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên xuất xứ</label>
                                    <input type="text" name="xx_ten" class="form-control" id="exampleInputEmail1" value="{{$xx->xx_ten}}" placeholder="Tên xuất xứ">
                                </div>
                              
                          
                                 <button type="submit" name="suaxx" class="btn btn-info">Lưu</button>
                          <a type="button" name="taoxx" class="btn btn-success" href="{{ URL::to('banhang/danhsach-xx') }}">Trở về</a><br>
                               
                               
                                </form>
                         

                        </div>
                    </div>
                    </section>

            </div>
        </div>
@endsection