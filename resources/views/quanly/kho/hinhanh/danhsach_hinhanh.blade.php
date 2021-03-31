@extends('admin_banhang')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Thêm thư viện ảnh
                        </header>
                         <?php
                            $message = Session::get('message');
                            if($message){
                                echo '<span class="text-alert">'.$message.'</span>';
                                Session::put('message',null);
                            }
                            ?>
                        <form action="{{URL::to('/banhang/them-thu-vien-anh/'.$sp_id)}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col-md-3" align="right">
                                    
                                </div>
                                <div class="col-md-6">
                                    <input type="file" class="form-control" id="file" name="file[]" accept="image/*" multiple>
                                    <span id="error_gallery"></span>
                                    <br/>
                                          <div class="col-sm-15 form-group"  >
                                    <label for="exampleInputPassword1">Chọn hình sản phẩm</label>
                                      <select name="mausp_id" class="form-control input-sm m-bot15" id="ncc_id">
                                          <option value="">hình 360</option>
                                      @foreach($mausanpham as $key => $dsmausp)
                                            <option value="{{$dsmausp->mausp_id}}">{{$dsmausp->mausp_ten}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                </div>
                                <div class="col-md-3">
                                    <input type="submit" name="upload" name="taianh" value="Tải ảnh" class="btn btn-success">
                                     <a type="button" name="taosp" class="btn btn-primary" href="{{ URL::to('banhang/danhsach-sp') }}">Trở về</a><br>
                                </div>
                            </div>

                        </form>
                        <div class="panel-body"  style="overflow-x: auto;">

                            <input type="hidden" name="sp_id" value="{{$sp_id}}" class="sp_id">
                            <form>
                                @csrf
                                <div id="gallery_load">
                                      
                                </div>
                        </div>
                    </form>
                    </section>

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
    $(document).ready(function(){
           load_gallery();
           function load_gallery(){
            var sp_id=$('.sp_id').val();
            var _token = $('input[name="_token"]').val();
                $.ajax({
                url : '{{url('banhang/chon-thu-vien-anh')}}',
                method: 'POST',
                data:{sp_id:sp_id,_token:_token},
                success:function(data){
                   
                   $('#gallery_load').html(data);   
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
                }
            });
           }
          
           $('#file').change(function(){
            var error='';
            var files=$('#file')[0].files;
            if(files.length>20){
                error+='<p>Bạn chọn tối đa chỉ được 20 ảnh</p>';
            }
            else if(files.length==''){
                error+='<p>Bạn không được bỏ trống ảnh</p>';
            }
            else if(files.size>2000000){
                  error+='<p>File ảnh không được lớn hơn 2MB</p>';
            }
            if(error==''){

            }
            else{
                $('#file').val('');
                $('#error_gallery').html('<span class="text-danger">'+error+'</span>');
                return false;
            }
           });
        $(document).on('blur','.edit_gal_name',function(){
            var gal_id=$(this).data('gal_id');
            var gal_text=$(this).text();
            var _token = $('input[name="_token"]').val();
             $.ajax({
                url : '{{url('banhang/cap-nhat-ten-hinh-anh')}}',
                method: 'POST',
                data:{gal_id:gal_id,gal_text:gal_text,_token:_token},
                success:function(data){
                   
                  load_gallery();
                $('#error_gallery').html('<span class="text-danger">Cập nhật tên hình ảnh thành công</span>');
                }
            });
           
        });
             $(document).on('click','.delete-gallery',function(){
            var gal_id=$(this).data('gal_id');
            var _token = $('input[name="_token"]').val();
            if(confirm('Bạn muốn xóa hình ảnh này không?')){
             $.ajax({
                url : '{{url('banhang/xoa-hinh-anh')}}',
                method: 'POST',
                data:{gal_id:gal_id,_token:_token},
                success:function(data){
                   
                  load_gallery();
                $('#error_gallery').html('<span class="text-danger">Xóa hình ảnh thành công</span>');
                }
            });
             }
        });
         $(document).on('change','.file_image',function(){
            var gal_id=$(this).data('gal_id');
            var image=document.getElementById('file-'+gal_id).files[0];
            var form_data=new FormData();
            form_data.append("file",document.getElementById('file-'+gal_id).files[0]);
            form_data.append("gal_id",gal_id);
             $.ajax({
                url : '{{url('banhang/cap-nhat-hinh-anh')}}',
                method: 'POST',
                headers:{
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data:form_data,
                contentType:false,
                cache:false,
                processData:false,
                success:function(data){
                   
                  load_gallery();
                $('#error_gallery').html('<span class="text-danger">Cập nhật hình ảnh thành công</span>');
                }
            });
             
        });

          });
</script>
@endsection