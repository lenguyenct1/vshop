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
                                    <label for="exampleInputEmail1">Kho hàng</label>
                                     <input type="text" name="kho_ten" class="form-control" id="kho_ten"  value="{{$kho->khohang->kho_ten}}" readonly="">
                                    <input type="hidden" id="kho_id" name="kho_id" value="{{$kho->kho_id}}" >
                          </div>
                         <div class="form-group">
                                    <label for="exampleInputEmail1">Nhà cung cấp</label>
                                     <input type="text" name="ncc_ten" class="form-control" id="ncc_ten"  value="{{$ncc->nhacungcap->ncc_ten}}" readonly="">
                                     <input type="hidden" id="ncc_id" name="ncc_id" value="{{$ncc->ncc_id}}" >
                          </div>
                          
                          
                
                   <table class="table table-bordered table-striped" id="user_table">

               <thead>
                <tr>
                      <th with="5%"></th>
                    <th with="50%">Tên mẫu sản phẩm</th>
                    <th with="10%">Số lượng tồn kho</th>
                     <th with="10%">Số lượng nhập</th>
                      <th  with="10%" >Đơn giá</th>
                       <th   with="10%" >Thành tiền</th>
                  
                </tr>
               </thead>
               <tbody>
             
               </tbody>
               <tfoot>
                   <tr>
                <td colspan="5" class="text-right" >  <strong>Tính tổng:</strong> </td>
                <td ><input type="text" name="sum" id="sum" class="form-control" readonly="" value="0">
                  <input type="hidden" name="sumpnk" id="sumpnk" class="form-control" readonly="" value="0">
                </td>
                  
              </tr>
               </tfoot>
           </table>
                  @csrf
                   <span id="result"></span>
                  <input type="submit" name="save" id="save" class="btn btn-primary" value="Lưu" />
                    <a type="button" name="taosp" class="btn btn-success" href="{{ URL::to('banhang/danhsach-sp') }}">Trở về</a><br>
                 
                </form>
                            <div class="position-center">
                             

                        </div>
                    </div>
                    </section>

            </div>
        </div>

<script type="text/javascript">
   //Format lại số sang 2000000=>2,000,000
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

 $('#dynamic_form').on('submit', function(event){
        event.preventDefault();
       var a= $(this).serialize();
       
       console.log(a);
        $.ajax({
            url: '{{ route("dynamic-field.inserttaosp") }}',
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
                      $('#save').attr('disabled', false);
                        //Nếu có lỗi nhập liệu hiển thị lỗi đông thời hiện lại nút để tạo lại phiếu trả nhà cung cấp
                }
                else
                {
                 
                    $('#result').html('<div class="alert alert-success">'+data.success+'</div>');
                      $('#save').hide();
                        window.location.href="{!!URL::to('banhang/danhsach-pnk')!!}"
                      //Nếu tạo thành công sẽ ẩn nút tránh tạo phiếu trả 2 lần
                }
              
            }
        })
 });

});
   //Hiển thị table
  $(document).ready(function(){

 var count = 0;

html = '@foreach($ctptncc as $key =>$value)';
count++;
  html += '<tr>';
     html += '<td><input type="checkbox" name="check[]" class="check" id="check'+count+'" value="'+count+'"></td>';
        html += '<td style="width: 500px; height: 100px;"><input type="text" name="mausp_ten[]" class="form-control mausp_ten" id="mausp_ten'+count+'" value="{{$value->mausp_ten}}"></td>';
        html += '<input type="hidden" name="mausp_id[]" class="form-control mausp_id" id="mausp_id'+count+'" data-sub_mausp_id="'+count+'" value="{{$value->mausp_id}}">';
        html += '<td><input type="text" name="ctpn_soluong[]" class="form-control ctpn_soluong" id="ctpn_soluong'+count+'"  value="{{$value->mausp_soluong}}"></td>';
         html += '<td><input type="number" name="ctncc_soluong[]" class="form-control ctncc_soluong" id="ctncc_soluong'+count+'"  min="0"></td>';
        html += '<input type="hidden"  name="ctncc_dongia[]" class="form-control ctncc_dongia"  id="ctncc_dongia'+count+'" value="{{$value->sp_dongianhap}}" >';
         html += '<td><input type="text"  name="ctncc_dongiaht[]" class="form-control ctncc_dongiaht"  id="ctncc_dongiaht'+count+'" value="{{number_format($value->sp_dongianhap,0,",",",")}}" ></td>';
         html += '<td><input type="text"  name="ctptncc_tt[]" class="form-control ctptncc_tt"  id="ctptncc_tt'+count+'" value="0"  ></td>';
          html += '</tr> @endforeach';
     
 
    $('tbody').html(html);
      //Tránh tình trạng gửi toàn bộ dữ liệu chỉ các cột có check mới được phép gửi thông tin
     $('#save').attr('disabled', true);
    $('.mausp_ten').prop('disabled', true);
    $('.mausp_id').prop('disabled', true);
    $('.ctpn_soluong').prop('disabled', true);
    $('.ctncc_soluong').prop('disabled', true);
    $('.ctncc_dongia').prop('disabled', true);
     $('.ctncc_dongiaht').prop('disabled', true);
    $('.ctptncc_tt').prop('disabled', true);
     $("input[type='checkbox'][class='check']").change(function() {
           
           var check=$(this).val();
          
           if ($(this).is(":checked")) {
          //  console.log(check);

            $('#mausp_id'+check).prop('disabled', false);
            $('#ctpn_soluong'+check).prop('disabled', false);
            $('#ctncc_soluong'+check).prop('disabled', false);
            $('#ctncc_dongia'+check).prop('disabled', false);
            $('#ctptncc_tt'+check).prop('disabled', false);
              $('#save').attr('disabled', false);
             $('#mausp_id'+check).prop("readonly", true);
             $('#ctpn_soluong'+check).prop("readonly", true);
             $('#ctncc_soluong'+check).prop('disabled', false);
             $('#ctncc_dongia'+check).prop("readonly", true);
             $('#ctptncc_tt'+check).prop("readonly", true);
             
              var sum1=parseCurrency($('#sum').val())+parseCurrency($('#ctptncc_tt'+check).val());
            $('#sum').val(formatNumber(sum1, '.', ','));
                   $(document).on('change','.ctncc_soluong',function () {
            
         
         var ctncc_soluong=$('#ctncc_soluong'+check).val();
         var ctncc_dongia=$('#ctncc_dongia'+check).val();
          var ctptncc_tt = ctncc_soluong*ctncc_dongia;
        $('#ctptncc_tt'+check).val(formatNumber(ctptncc_tt, '.', ','));
             sum_pnk();
      
         
    });
           }
             else{
               //Nếu uncheck phải đặt giá trị số lượng trả  và thành tiền về 0 tránh tình trạng hàm sum_pnk() lấy dữ liệu từ cột thành tiền uncheck để cộng vào cho kết quả sai. Vì thế số lượng trả min=0 thay vì 1(Nếu đặt số lượng trả 1 thành tiền ở cột uncheck vẫn có giá trị nếu hàm sum_pnk thực hiện cộng dồn sẽ cho kết quả sai)
            var sum2=parseCurrency($('#sum').val())-parseCurrency($('#ctptncc_tt'+check).val());
            $('#sum').val(formatNumber(sum2, '.', ','));
            $('#mausp_id'+check).prop('disabled', true);
            $('#ctpn_soluong'+check).prop('disabled', true);
            $('#ctncc_soluong'+check).prop('disabled', true);
            $('#ctncc_dongia'+check).prop('disabled', true);
            $('#ctptncc_tt'+check).prop('disabled', true);
             $('#ctptncc_tt'+check).val(0);
              $('#ctncc_soluong'+check).val(0);
             }
   
  });
});
//Format sang số để tính toán vd 2,000,000=> 2000000
 function parseCurrency( num ) {
    return parseFloat( num.replace( /,/g, '') );
}
//Tính tổng
function sum_pnk(){
  var sum=0;
  $('.ctptncc_tt').each(function(){
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