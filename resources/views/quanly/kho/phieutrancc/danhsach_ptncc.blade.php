@extends('admin_banhang')
@section('admin_content')
     
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách phiếu  trả nhà cung cấp
    </div>
  
                         @if(session('thongbao'))
                            <span class="text-alert">
                                {{session('thongbao')}}
                            </span>
                        @endif
                 
                         <div class="panel-body">
                              <form method="post" action="#" id="dynamic_form" enctype="multipart/form-data"> 
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
                                
                                             
                            <br/>
                              <div class="col-sm-1" style="margin-bottom:50px">
                                <button type="submit" class="btn btn-primary" id="xemptncc">Xem</button>
                                </div>
                            </div>
                          
                         
                          <br/>
                           </form>
                         
                          
                              
                               
                        </div>

                          <br/>
                          <div id="table">
                          <?php  echo $output; ?></div>
  
   
  </div>
</div>
<script>
    $(document).ready(function() {
                $('#dataTables-example').DataTable({
                    responsive: true,
                    order: [
                        [0, 'desc']
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
     $('#xemptncc').on('click', function(event){
        event.preventDefault();
       var a= $('#dynamic_form').serialize();
      
     //  console.log(a);
          $.ajax({

        type:'post',
        url:'{!!URL::to('banhang/xem-ptncc')!!}',
       data:$('#dynamic_form').serialize(),
        success:function(data){
          $("#table").html(data);
            $('#dataTables-example').DataTable({
                    responsive: true,
                    order: [
                        [0, 'desc']
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