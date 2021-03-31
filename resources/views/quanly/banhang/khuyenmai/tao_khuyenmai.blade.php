@extends('admin_banhang')
@section('admin_content')
  
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>

<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                          Thông tin khuyến mãi
                        </header>
                         @if(count($errors)>0)
                        <span class="text-alert">
                            @foreach($errors->all() as $err)
                                {{$err}}<br>
                                @endforeach
                            </span>
                         @endif
                        
                        <div class="panel-body">
                             <form method="post" id="dynamic_form">
                                  
                        <div class="form-group">
                           <label for="exampleInputEmail1">Tên Nhân viên:</label>
                            @if(isset(Auth::user()->name))
                             <input type="text"  class="form-control" value="{{Auth::user()->name}}" readonly="" >
                               <input type="hidden" id="nv_id" name="nv_id" value="{{Auth::user()->id}}" >
                              @endif
                        </div> 
                        <div class="form-group">
                                    <label for="exampleInputEmail1">Chương trình khuyến mãi</label>
                                    <input type="text" data-validation="length" data-validation-length="min3"  data-validation-error-msg="Làm ơn điền ít nhất 3 ký tự" name="khuyenmai_ten" class="form-control" id="exampleInputEmail1" placeholder="Chương trình khuyến mãi" >
                                </div>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Giá trị khuyến mãi(%)</label>
                                    <input type="text" data-validation="number" data-validation-error-msg="Làm ơn điền giá trị giảm giá" name="khuyenmai_giatri" class="form-control" id="giatri_km" placeholder="Giá trị khuyến mãi" >
                                </div>
                                <div id="giakm"></div>
                       <div class="form-group">
                            <div class="row">
                            <div class="col-sm-6">
                                 <label>Từ ngày: </label>    
                                    <div class="input-group date">
                                        <input type="text" class="date form-control" name="tungay" id="tungay"/>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    </div>
                                    </div>
                                <div class="col-sm-6">
                                 <label>Đến ngày</label> 
                                      <div class="input-group date">
                                        <input type="text" class="date form-control" name="denngay" id="denngay"/>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                      </div>
                                    </div>
                            </div>              
                        </div>
                                
               
                 <table class="table table-bordered table-striped" id="user_table">

               <thead>
                <tr>
                
                    <th >Tên sản phẩm</th>
                     
                    <th >Hành động</th>
                </tr>
               </thead>
               <tbody>

               </tbody>
               <tfoot>
               

               
                                
              

              
               
               </tfoot>
           </table>
               @csrf
                 <span id="result"></span>
                  <input type="submit" name="save" id="save" class="btn btn-primary" value="Lưu và tạo mới" />
                 <a type="button" name="taopnk" class="btn btn-success" href="{{ URL::to('banhang/danhsach-khuyenmai') }}">Trở về</a><br>
                </form>
               
                            <div class="position-center">
                             

                        </div>
                    </div>
                    </section>

            </div>
        </div>

<script>
 
$(document).ready(function(){
   
 var count = 1;

 dynamic_field(count);

 function dynamic_field(number)
 {

  html = '<tr>';
     html += '<td><select name="sp_id[]" class="form-control sp_id" id="sp_id'+count+'" data-sub_sp_id="'+count+'" required>   <option value="">--Chọn sản phẩm--</option> @foreach($sp as $key => $dssp)  <option value="{{$dssp->sp_id}}">{{$dssp->sp_ten}}</option>  @endforeach</select>   </td>';
    
        if(number > 1)
        {
            html += '<td><button type="button" name="remove" id="" class="btn btn-danger remove">Giảm</button></td></tr>';
            $('tbody').append(html);
             

         
        }
        else
        {   
            html += '<td><button type="button" name="add" id="add" class="btn btn-success">Thêm</button></td></tr>';
            $('tbody').html(html);
               $('#sp_id1').select2({
            placeholder: '--Chọn sản phẩm--',
              
        });
            
       }
 }

 $(document).on('click', '#add', function(){
  count++;
  dynamic_field(count);
      $('.sp_id').select2({
            placeholder: '--Chọn sản phẩm--',
           
        });
 });

 $(document).on('click', '.remove', function(){
  count--;
  $(this).closest("tr").remove();
 });

  $('#dynamic_form').on('submit', function(event){
        event.preventDefault();
       var a= $(this).serialize();
       console.log(a);
         
        $.ajax({
            url: '{{ route("dynamic-field.insertkm") }}',
            method:'post',
            data:$(this).serialize(),

            dataType:'json',
            beforeSend:function(){
                $('#save').attr('disabled','disabled');
            },
            success:function(data)
            {
                if(data.error)
                {
                    var error_html = '';
                    for(var count = 0; count < data.error.length; count++)
                    {
                        error_html += '<p>'+data.error[count]+'</p>';
                    }
                    $('#result').html('<div class="alert alert-danger">'+error_html+'</div>');
                }
                else
                {
                   
                    $('#result').html('<div class="alert alert-success">'+data.success+'</div>');
                      window.location.href="{!!URL::to('banhang/tao-khuyenmai')!!}"
                }
                $('#save').attr('disabled', false);
            }
        })
 });

});

 
 
</script>
<script type="text/javascript">
  $(document).on('change','#giatri_km',function () {
       if(parseInt($(this).val())>parseInt(100)){
            
         $('#giakm').html('<p  style="color:#a94442;font-family:"Roboto",sans-serif; font-size: 100%; font-size:"16px";">Giá trị khuyến mãi(%) phải nhỏ hơn 100</p>');
           
       }
         else{
           $('#giakm').html('');
         }
  });
</script>
 <script type="text/javascript">
        $('.date').datepicker({  
            format: 'dd-mm-yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
            orientation: 'bottom'
        });  
    </script>
@endsection