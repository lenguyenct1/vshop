@extends('admin_banhang')
@section('admin_content')

<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                          Thông tin phiếu nhập kho
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
                                    <label for="exampleInputPassword1">Kho nhập hàng</label>
                                      <select name="kho_id" class="form-control input-sm m-bot15" id="kho_id" required>
                                         <option value="">--Chọn kho--</option>
                                        @foreach($kho as $key => $dskho)
                                            <option value="{{$dskho->kho_id}}">{{$dskho->kho_ten}}</option>
                                        @endforeach
                                            
                                    </select>
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputPassword1">Nhà cung cấp</label>
                                      <select name="ncc_id" class="form-control input-sm m-bot15" id="ncc_id" required>
                                         <option value="">--Chọn nhà cung cấp--</option>
                                        @foreach($ncc_id as $key => $dsncc)
                                            <option value="{{$dsncc->ncc_id}}">{{$dsncc->ncc_ten}}</option>
                                        @endforeach
                                            
                                    </select>
                                </div>
               
                 <table class="table table-bordered table-striped" id="user_table">

               <thead>
                <tr>
                
                    <th width="25%">Tên sản phẩm</th>
                       <th width="35%">Tên mẫu sản phẩm</th>
                    <th width="10%">Số lượng</th>
                      <th width="15%">Đơn giá</th>
                       <th width="15%">Thành tiền</th>
                    <th width="5%">Hành động</th>
                </tr>
               </thead>
               <tbody>

               </tbody>
               <tfoot>
                 <tr>
                <td colspan="4" class="text-right" >  <strong>Tính tổng:</strong> </td>
                <td colspan="2" ><input type="text" name="sum" id="sum" class="form-control sum" readonly="" value="0">
                   <input type="hidden" name="sumpnk" id="sumpnk" class="form-control" readonly="" value="0">
                </td>
                 
              </tr>

               
                                
              

              
               
               </tfoot>
           </table>
               @csrf
                 <span id="result"></span>
                  <input type="submit" name="save" id="save" class="btn btn-primary" value="Lưu và tạo mới" />
                 <a type="button" name="taopnk" class="btn btn-success" href="{{ URL::to('banhang/danhsach-pnk') }}">Trở về</a><br>
                </form>
               
                            <div class="position-center">
                             

                        </div>
                    </div>
                    </section>

            </div>
        </div>
<script type="text/javascript">
  $(document).ready(function(){
    $('#ncc_id').select2({
           
        });
     
         $('#kho_id').select2({
           
        });
       
    });
</script>
<script>
 function formatNumber(nStr, decSeperate, groupSeperate) {
            nStr += '';
            x = nStr.split(decSeperate);
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + groupSeperate + '$2');
            }
            return x1 + x2;
        }
$(document).ready(function(){
   
 var count = 1;

 dynamic_field(count);

 function dynamic_field(number)
 {

  html = '<tr>';
     html += '<td><select name="sp_id[]" class="form-control sp_id" id="sp_id'+count+'" data-sub_sp_id="'+count+'" required>   <option value="">--Chọn sản phẩm--</option></select></td>';
        html += '<td><select name="mausp_id[]" class="form-control mausp_id" id="mausp_id'+count+'" data-sub_mausp_id="'+count+'" required><option value="" >--Chọn mẫu sản phẩm--</option></select></td>';
        html += '<td><input type="number" name="ctpn_soluong[]" class="form-control ctpn_soluong" id="ctpn_soluong'+count+'"  placeholder="nhập số lượng" min="0"></td>';
        html += '<input type="hidden"  name="ctpn_dongia[]" class="form-control ctpn_dongia"  id="ctpn_dongia'+count+'" value="0" readonly="">';
         html += '<td><input type="text"  name="ctpn_dongiaht[]" class="form-control ctpn_dongiaht"  id="ctpn_dongiaht'+count+'" value="0" readonly="" ></td>';
          html += '<td><input type="text"  name="ctpn_tt[]" class="form-control ctpn_tt"  id="ctpn_tt'+count+'" value="0" readonly="" ></td>';
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
            placeholder: '--Chọn sản phẩm--'
        });
            
                $('#mausp_id1').select2({
            placeholder: '--Chọn mẫu sản phẩm--'
        });
       }
 }

 $(document).on('click', '#add', function(){
  count++;
  dynamic_field(count);

   var ncc_id=$('#ncc_id').val();
     var kho_id=$('#kho_id').val();
   $.ajax({

        type:'get',
        url:'{!!URL::to('banhang/sanpham')!!}',
        data:{'ncc_id':ncc_id,'kho_id':kho_id},
      
        success:function(data){
     //    console.log(data);
             $('#sp_id'+count).html(data);
        
               $('.sp_id').select2({
            placeholder: '--Chọn sản phẩm--'
        });
               $('.mausp_id').select2({
            placeholder: '--Chọn mẫu sản phẩm--'
        });
        },
        error:function(){

        }
      });

 });

 $(document).on('click', '.remove', function(){
  count--;
  $(this).closest("tr").remove();
  sum_pnk();
 });

 $('#dynamic_form').on('submit', function(event){
        event.preventDefault();
       var a= $(this).serialize();
   //    console.log(a);
         
        $.ajax({
            url: '{{ route("dynamic-field.insert") }}',
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
                      window.location.href="{!!URL::to('banhang/tao-pnk')!!}"
                }
                $('#save').attr('disabled', false);
            }
        })
 });

});
 $('.mausp_id').each(function(){
          var count = 1;

          if($(this).val() == '')
          {
            error += '<p>Chọn sản phẩm tại dòng '+count+' </p>';
            return false;
          }

          count = count + 1;

        });
  $(document).on('change','#ncc_id',function () {
      var ncc_id=$(this).val();
    var kho_id=$('#kho_id').val();
   $.ajax({

        type:'get',
        url:'{!!URL::to('banhang/sanpham')!!}',
        data:{'ncc_id':ncc_id,'kho_id':kho_id},
      
        success:function(data){
       //  console.log(data);
             $('.sp_id').html(data);
               $(".mausp_id").empty();
            $('.ctpn_soluong').val("");
             $('.ctpn_dongia').val(0);
               $('.ctpn_tt').val(0);
                $('.ctpn_dongiaht').val(0);
                  $('.sum').val(0);
        },
        error:function(){

        }
      });
    });
  $(document).on('change','#kho_id',function () {
      var ncc_id=$('#ncc_id').val();
    var kho_id=$('#kho_id').val();
   $.ajax({

        type:'get',
        url:'{!!URL::to('banhang/khosp')!!}',
        data:{'ncc_id':ncc_id,'kho_id':kho_id},
      
        success:function(data){
       //  console.log(data);
             $('.sp_id').html(data);
               $(".mausp_id").empty();
            $('.ctpn_soluong').val("");
             $('.ctpn_dongia').val(0);
               $('.ctpn_tt').val(0);
                $('.ctpn_dongiaht').val(0);
                  $('.sum').val(0);
        },
        error:function(){

        }
      });
    });
 $(document).on('change','.sp_id',function () {
      var sp_id=$(this).val();
      var sub_sp_id=$(this).data('sub_sp_id');
   
   $.ajax({

        type:'get',
        url:'{!!URL::to('banhang/mausanpham')!!}',
        data:{'id':sp_id},
      
        success:function(data){
        // console.log(data);
             $('#mausp_id'+sub_sp_id).html(data);
        },
        error:function(){

        }
      });
    });
$(document).on('change','.mausp_id',function () {
      var mausp_id=$(this).val();
   var sub_mausp_id=$(this).data('sub_mausp_id');
     // console.log(sub_mausp_id);
      var op="";
      $.ajax({
        type:'get',
        url:'{!!URL::to('banhang/dongia')!!}',
        data:{'id':mausp_id},
        dataType:'json',//return data will be json
        success:function(data){
      //    console.log("mausp_dongia");
      //    console.log(data.mausp_dongia);

          // here price is coloumn name in products table data.coln name
    $('.ctpn_dongiaht').prop('disabled', true);
        $('#ctpn_dongia'+sub_mausp_id).val(data.sp_dongianhap);
        $('#ctpn_dongiaht'+sub_mausp_id).val(formatNumber(data.sp_dongianhap, '.', ','));
        $(document).on('change','.ctpn_soluong',function () {
         var ctpn_soluong=$('#ctpn_soluong'+sub_mausp_id).val();
         var ctpn_dongia=$('#ctpn_dongia'+sub_mausp_id).val();
          var ctpn_tt = ctpn_soluong*ctpn_dongia;
        $('#ctpn_tt'+sub_mausp_id).val(formatNumber(ctpn_tt, '.', ','));
        sum_pnk();
    }); 
       
        var sl=$('#ctpn_soluong'+sub_mausp_id).val();
        var dg=$('#ctpn_dongia'+sub_mausp_id).val();
        var t = sl*dg;
        $('#ctpn_tt'+sub_mausp_id).val(formatNumber(t, '.', ','));
        },
        error:function(){

        }
      });
    });
function parseCurrency( num ) {
    return parseFloat( num.replace( /,/g, '') );
}

function sum_pnk(){
  var sum=0;
  $('.ctpn_tt').each(function(){
     var value= parseCurrency($(this).val());
    if(value.length !=0){
      sum+=parseFloat(value);

    }
  });
  $('#sum').val(formatNumber(sum, '.', ','));
   $('#sumpnk').val(parseCurrency($('#sum').val()));
}
</script>

@endsection