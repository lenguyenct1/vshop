@extends('admin_banhang')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Thông tin vận chuyển
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
                                <form role="form" action="{{URL::to('/banhang/tao-vc')}}" method="post">
                                    {{ csrf_field() }}
                                   
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên hình thức vận chuyển </label>
                                    <input type="text" name="vc_ten" class="form-control" id="exampleInputEmail1" placeholder="Tên vận chuyển" data-validation="length" data-validation-length="min5"  data-validation-error-msg="Làm ơn điền ít nhất 5 ký tự">
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Chi phí</label>
                                    <input type="text"  name="vc_chiphi" class="form-control money" id="vcchiphi" placeholder="Chi phí vận chuyển"  >
                                    <div id="chiphi"></div>
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Thông tin </label>
                                    <input type="text" name="vc_thongtin" class="form-control" id="exampleInputEmail1" placeholder="Thông tin" data-validation="length" data-validation-length="min5"  data-validation-error-msg="Làm ơn điền ít nhất 5 ký tự">
                                </div>
                               
                          
                                 <button type="submit" name="taovc" class="btn btn-info">Lưu</button>
                         
                                <a type="button" name="taovc" class="btn btn-success" href="{{ URL::to('banhang/danhsach-vc') }}">Trở về</a><br>
                               
                                </form>
                         

                        </div>
                    </div>
                    </section>

            </div>
        </div>
         <script type="text/javascript">
          $(document).ready(function(){
          $('.money').simpleMoneyFormat();
});


        </script>
    <script type="text/javascript">

       $(document).on('change', '#vcchiphi', function(){
     
            if(parseInt($(this).val().replace( /,/g, ''))<parseInt(10000)&&parseInt($(this).val())>parseInt(0)){
            
         $('#chiphi').html('<p  style="color:#a94442;font-family:"Roboto",sans-serif; font-size: 100%; font-size:"16px";">Chi phí vận chuyển bạn nhập phải lớn hơn hoặc bằng 10,000. Trừ trường hợp chi phí bằng 0 (miễn phí).</p>');}
         else{
           $('#chiphi').html('');
         }

           if( $('#vcchiphi').val()==''){
                $('#chiphi').html('<p  style="color:#a94442;font-family:"Roboto",sans-serif; font-size: 100%; font-size:"16px";">Làm ơn nhập chi phí vận chuyển</p>');
            }
 });
    </script>
@endsection