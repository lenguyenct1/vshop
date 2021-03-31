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
                        <header class="panel-heading" style="height: fit-content;">
                       Báo cáo nhập xuất tồn theo nhà cung cấp
                        </header>
                         @if(count($errors)>0)
                        <span class="text-alert">
                            @foreach($errors->all() as $err)
                                {{$err}}<br>
                                @endforeach
                            </span>
                         @endif
                        
                        <div class="panel-body" style="overflow-x: auto;">
                              <form role="form" method="post" id="dynamic_form" action="{{URL::to('/banhang/pdf-bcncc')}}" target="_blank" > 
                                @csrf
                            <div class="position-center">
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
                                         <div class="col-sm-12 form-group"  >
                                    <label for="exampleInputPassword1">Nhà cung cấp</label>
                                      <select name="ncc_id" class="form-control input-sm m-bot15 ncc" id="ncc_id">
                                          <option value="">---Chọn nhà cung cấp---</option>
                                        @foreach($ncc as $key => $dsncc)
                                            <option value="{{$dsncc->ncc_id}}">{{$dsncc->ncc_ten}}</option>
                                        @endforeach  
                                    </select>
                                </div>
                                             
                           
                              <div class="col-sm-6" style="margin-bottom:50px">
                              <input  type="button" name="save" id="save" class="btn btn-primary" value="Xem báo cáo" />
                                </div>
                            </div>
                            <br/>
                             <div></div>
                         <div id="table"></div>
                          
                        <br/>
                       
                              <input  type='submit' name='taobaocaoncc' id='taobaocaoncc' class='btn btn-info' value="Xuất Pdf">
                               <button  type="submit" name="baocaoncc" id='baocaoncc' class="btn btn-info" formaction="{{URL::to('/banhang/excel-bcncc')}}">Xuất Excel</button>
                             
                               </form>
                        </div>
                    </section>

            </div>
        </div>
        <script type="text/javascript">
  $(document).ready(function(){
    $('.ncc').select2({
           
        });
    
    });
</script>
        <script>
    $(document).ready(function() {
                $('#dataTables-example').DataTable({
                    responsive: true,
                    order: [
                        [0, 'asc']
                    ],
                   
                    'language': {
                        'info': 'Hiển thị _START_ đến _END_ của _TOTAL_ danh sách',
                        'lengthMenu': "Hiển thị _MENU_ danh sách",
                        "emptyTable": "Không có dữ liệu trong bảng",
                        "paginate": {
                            "previous": "Trước",
                            "next": "Sau",
                            "infoEmpty": "Không có dữ liệu"

                        },
                        "search": "Lọc / Tìm kiếm:"
                    },
                });
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
<script type="text/javascript">
$('#taobaocaoncc').hide();
$('#baocaoncc').hide();
     $('#save').on('click', function(event){
        event.preventDefault();
       var a= $('#dynamic_form').serialize();
      
       //console.log(a);
          $.ajax({

        type:'post',
        url:'{!!URL::to('banhang/xem-bcncc')!!}',
       data:$('#dynamic_form').serialize(),
        success:function(data){
          $("#table").html(data);
            $('#dataTables-example').DataTable({
                    responsive: true,
                    order: [
                        [0, 'asc']
                    ],
                   
                    'language': {
                        'info': 'Hiển thị _START_ đến _END_ của _TOTAL_ danh sách',
                        'lengthMenu': "Hiển thị _MENU_ danh sách",
                        "emptyTable": "Không có dữ liệu trong bảng",
                        "paginate": {
                            "previous": "Trước",
                            "next": "Sau",
                            "infoEmpty": "Không có dữ liệu"

                        },
                        "search": "Lọc / Tìm kiếm:"
                    },
                });
          $('#taobaocaoncc').show();
          $('#baocaoncc').show();
          if(($('#check').val()=='Ngày không hợp lệ' ) || ($('#ncc_id').val()=='')){
              $('#taobaocaoncc').hide();
               $('#baocaoncc').hide();
          }
        },
        error:function(){

        }
      });
         
 });
  
</script>
@endsection
