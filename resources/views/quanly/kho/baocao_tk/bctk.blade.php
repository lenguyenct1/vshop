@extends('admin_banhang')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                       Báo cáo tồn kho tức thời
                        </header>
                         @if(count($errors)>0)
                        <span class="text-alert">
                            @foreach($errors->all() as $err)
                                {{$err}}<br>
                                @endforeach
                            </span>
                         @endif
                        
                        <div class="panel-body">
                              <form role="form" method="post" id="dynamic_form" action="{{URL::to('/banhang/pdf-bctk')}}" target="_blank"> 
                                @csrf
                            <div class="position-center">
                                     <div class="form-group">
                                    <label for="exampleInputPassword1">Kho hàng</label>
                                      <select name="kho_id" class="form-control input-sm m-bot15" id="kho_id">
                                        @foreach($khohang as $key => $dskho)
                                            <option value="{{$dskho->kho_id}}">{{$dskho->kho_ten}}</option>
                                        @endforeach  
                                    </select>
                                </div>
                                
                                 
                        
                              <input  type="button" name="save" id="save" class="btn btn-primary" value="Xem báo cáo" />

                            </div>
                          
                         
                        
                         <br/>
                            <div></div>
             
                         <div id="table"></div>
                          
                         <br/>
                           
                              <input  type='submit' name='taobaocaotk' id='taobaocaotk' class='btn btn-info' value="Xuất Pdf"> 
                               <button  type="submit" name="baocaotk" id='baocaotk' class="btn btn-info" formaction="{{URL::to('/banhang/excel-bctk')}}">Xuất Excel</button>
                               </form>
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
$('#taobaocaotk').hide();
$('#baocaotk').hide();
     $('#save').on('click', function(event){
        event.preventDefault();
       var a= $('#dynamic_form').serialize();
      
     //  console.log(a);
          $.ajax({

        type:'post',
        url:'{!!URL::to('banhang/xem-bctk')!!}',
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
           
          $('#taobaocaotk').show();
          $('#baocaotk').show();
          if($('#check').val()=='Ngày không hợp lệ'){
              $('#taobaocaotk').hide();
              $('#baocaotk').hide();
          }
        },
        error:function(){

        }
      });
         
 });
  
</script>
@endsection
