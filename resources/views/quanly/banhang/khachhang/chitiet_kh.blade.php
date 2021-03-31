@extends('admin_banhang')
@section('admin_content')
  
   
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                      
                        <header class="panel-heading" style="height: fit-content;">
                       ĐƠN HÀNG CỦA KHÁCH HÀNG {{$kh->kh_ten}}
                     
                        </header>
                         @if(count($errors)>0)
                        <span class="text-alert">
                            @foreach($errors->all() as $err)
                                {{$err}}<br>
                                @endforeach
                            </span>
                         @endif
                        
                        <div class="panel-body" style="overflow-x: auto;">
                              <form role="form" method="post" id="dynamic_form"  enctype="multipart/form-data"> 
                                @csrf
                            <div class="position-center">
                                 <div class="col-sm-5">
                                 <label>Từ ngày: </label>    
                                    <div class="input-group date">
                                        <input type="text" class="date form-control" name="tungay" id="tungay"/>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    </div>
                                    </div>
                                <div class="col-sm-5">
                                 <label>Đến ngày</label> 
                                      <div class="input-group date">
                                        <input type="text" class="date form-control" name="denngay" id="denngay"/>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                      </div>
                                    </div>
                                    <input type="hidden" name="kh_id" value="{{$kh->kh_id}}">
                                             
                            <br>
                              <div class="col-sm-1" style="margin-bottom:50px">
                              <input  type="button" name="timkiem" id="timkiem" class="btn btn-primary" value="Tìm kiếm" />
                                </div>
                            </div>
                           </form>
                         
                          <br>
                         
                                 <div id="table">
                          <?php  echo $output; ?></div>
             
                          
                              
                                <a type="button" name="taopnk" class="btn btn-success" href="{{ URL::to('banhang/danhsach-kh') }}">Trở về</a><br>
                        </div>

                         
                    </section>

            </div>
        </div>
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

     $('#timkiem').on('click', function(event){
        event.preventDefault();
       var a= $('#dynamic_form').serialize();
          $.ajax({

        type:'post',
        url:'{!!URL::to('banhang/xem-khdh')!!}',
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
         
          
        },
        error:function(){

        }
      });
         
 });
  
</script>
@endsection
