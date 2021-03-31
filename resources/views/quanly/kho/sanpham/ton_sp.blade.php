@extends('admin_banhang')
@section('admin_content')
<style>
  .button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
.button1 {background-color: #4CAF50;} /* Green */
.button2 {background-color: #008CBA; width: 65%;} /* Blue */
.button3 {background-color: #f44336;} /* Red */
  </style>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
    Danh sách mẫu sản phẩm tồn kho
    </div>
    <form role="form" method="post" id="dynamic_form" action="{{URL::to('/banhang/pdf-ton-sp')}}" target="_blank"> 
                                @csrf
    <div class="table-responsive">
                      <?php
                            $message = Session::get('message');
                            if($message){
                                echo '<span class="text-alert">'.$message.'</span>';
                                Session::put('message',null);
                            }
                            ?>
                              <br/>  
                        <div class=" col-md-2 form-group">
                                    <label>Tình trạng:</label>
                                </div>

                              <div class=" col-md-4 form-group">
                                      <select name="tinhtrang" class="form-control input-sm m-bot15" id="tinhtrang">
                                        <option value="0">--------Chọn tình trạng mẫu sản phẩm--------</option>
                                     
                                            <option value="1">Còn hàng</option>
                                             <option value="2">Sắp hết hàng</option>
                                              <option value="3">Hết hàng</option>
                                     
                                            
                                    </select>
                                </div>
                              <div class=" col-md-12 form-group"></div>
                                    <div class=" col-md-2 form-group">
                                    <label>Mức ngưỡng sản phẩm tồn kho:</label>
                                </div>
                              <div class=" col-md-4 form-group">
                                     <input type="number" name="search_text" class="form-control" id="search_text" min=0>
                                     
                                            
                                    </select>
                                </div>
                           </div>
                           <br/>  
                         <div class="table-responsive" id="table">
     
      
      <?php echo $output; ?>
        
     

      </div>
          <input  type='submit' name='pdf_ton' id='pdf_ton' class='btn btn-info' value="Xuất Pdf"> 
                               <button  type="submit" name="excel_ton" id='excel_ton' class="btn btn-info" formaction="{{URL::to('/banhang/excel-ton-sp')}}">Xuất Excel</button>
    
  </form>
    </div>
   
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
  $(document).on('change','#tinhtrang',function () {
      var tinhtrang=$(this).val();
    
         var query = $('#search_text').val();
   $.ajax({

        type:'get',
        url:'{!!URL::to('banhang/tinhtrang')!!}',
        data:{'query':query,'tinhtrang':tinhtrang},
      
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
<script>
$(document).ready(function(){


 $('#search_text').keyup(function(){
  var tinhtrang=$('#tinhtrang').val();
  var query = $(this).val();
   $.ajax({

        type:'get',
        url:'{!!URL::to('banhang/tinhtrang')!!}',
        data:{'query':query,'tinhtrang':tinhtrang},
      
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
});
</script>

<script>
$(document).ready(function(){


 $('#search_text').keydown(function(){
    var tinhtrang=$('#tinhtrang').val();
  var query = $(this).val();
   $.ajax({

        type:'get',
        url:'{!!URL::to('banhang/tinhtrang')!!}',
        data:{'query':query,'tinhtrang':tinhtrang},
      
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
});
</script>
<script>
$(document).ready(function(){


 $('#search_text').change(function(){
    var tinhtrang=$('#tinhtrang').val();
  var query = $(this).val();
   $.ajax({

        type:'get',
        url:'{!!URL::to('banhang/tinhtrang')!!}',
        data:{'query':query,'tinhtrang':tinhtrang},
      
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
});
</script>
@endsection