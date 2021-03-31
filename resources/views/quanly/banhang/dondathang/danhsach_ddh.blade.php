@extends('admin_banhang')
@section('admin_content')
 
    <style type="text/css">
      ul.list_rep li{
        list-style-type: decimal;
        color: blue;
        margin:5px 40px;
      }
    </style>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách đơn đặt hàng 
    </div>
    <div id="notify_order"></div>
            
                         @if(session('thongbao'))
                            <span class="text-alert">
                                {{session('thongbao')}}
                            </span>
                        @endif
                       
                           <div class="panel-body">
                              <form method="post" action="#" id="dynamic_form" enctype="multipart/form-data"> 
                                @csrf
                            <div class="position-center"> 
                              <div class="row">
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
                                <button type="submit" class="btn btn-primary" id="xemddh">Xem</button>
                                </div>
                            </div>
                           </form>
                         </div>
                          <br/>
                           <div class="row">
                             <div class=" col-md-2 form-group">
                                    <label>Lọc đơn hàng:</label>
                                </div>
                              <div class=" col-md-4 form-group">
                                      <select name="ddh_trangthai" class="form-control input-sm m-bot15" id="ddh_trangthai">
                                       <option value="0">-----------------------------Chọn trạng thái----------------------------------------</option>
                                            <option value="1">Chưa duyệt</option>
                                            <option value="2">Đã duyệt</option>
                                            <option value="3">Đã giao hàng</option>
                                            <option value="4">Hủy đơn hàng</option>
                                       
                                     
                                            
                                    </select>
                                </div>
                        </div>
                          
                         
                          
                              
                               
                        </div>
         
                          
    
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
   $(document).on('change','#ddh_trangthai',function () {
      var ddh_trangthai=$(this).val();
        $.get("banhang/loc-ddh/"+ddh_trangthai,function(data){
//khởi tạo lại dbtable và sự kiện
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
         $('.order_duyet_btn').click(function(){
    var ddh_trangthai=$(this).data('order_status');
    var ddh_id=$(this).data('order_id');
    if(ddh_trangthai==2){
      var alert='Thay đổi thành đã duyệt thành công';
    }
    else if (ddh_trangthai==3){
      var alert='Thay đổi thành đã giao hàng thành công';
    }
   $.ajax({
                url : '{{url('banhang/duyet-ddh')}}',
                method: 'POST',
                headers:{
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data:{ddh_trangthai:ddh_trangthai,ddh_id:ddh_id},
                success:function(data){
                   location.reload();
                $('#notify_order').html('<span class="text text-alert">'+alert+'</span>');
                }
            });
  });
    });
    });
</script>
<script type="text/javascript">
  $('.order_duyet_btn').click(function(){
    var ddh_trangthai=$(this).data('order_status');
    var ddh_id=$(this).data('order_id');
    if(ddh_trangthai==2){
      var alert='Thay đổi thành đã duyệt thành công';
    }
    else if (ddh_trangthai==3){
      var alert='Thay đổi thành đã giao hàng thành công';
    }
   $.ajax({
                url : '{{url('banhang/duyet-ddh')}}',
                method: 'POST',
                headers:{
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data:{ddh_trangthai:ddh_trangthai,ddh_id:ddh_id},
                success:function(data){
                   location.reload();
                $('#notify_order').html('<span class="text text-alert">'+alert+'</span>');
                }
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
     $('#xemddh').on('click', function(event){
        event.preventDefault();
       var a= $('#dynamic_form').serialize();
      
     //  console.log(a);
          $.ajax({

        type:'post',
        url:'{!!URL::to('banhang/xem-ddh')!!}',
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
 
          $('.order_duyet_btn').click(function(){
    var ddh_trangthai=$(this).data('order_status');
    var ddh_id=$(this).data('order_id');
    if(ddh_trangthai==2){
      var alert='Thay đổi thành đã duyệt thành công';
    }
    else if (ddh_trangthai==3){
      var alert='Thay đổi thành đã giao hàng thành công';
    }
   $.ajax({
                url : '{{url('banhang/duyet-ddh')}}',
                method: 'POST',
                headers:{
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data:{ddh_trangthai:ddh_trangthai,ddh_id:ddh_id},
                success:function(data){
                   location.reload();
                $('#notify_order').html('<span class="text text-alert">'+alert+'</span>');
                }
            });
  });
      
        },
        error:function(){

        }
      });
         
 });
  
</script>
@endsection