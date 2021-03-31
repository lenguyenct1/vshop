@extends('admin_banhang')
@section('admin_content')
     <a  type="button" name="taoth" class="btn btn-info" href="{{URL::to('banhang/tao-th')}}"> <i class="glyphicon glyphicon-plus"></i>Tạo thương hiệu</a>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách thương hiệu
    </div>
  
                         @if(session('thongbao'))
                            <span class="text-alert">
                                {{session('thongbao')}}
                            </span>
                        @endif
                      
    
   <div class="table-responsive">
<table    class= "table table-bordered table-striped table-hover"   id="dataTables-example">
      
          <thead>
          <tr>
            
            <th>Mã thương hiệu</th>
            <th>Tên thương hiệu</th>
            <th>Hình ảnh</th>
            <th>Ngày tạo</th>
            <th>Ngày cập nhật</th>
            <th >Hành động</th>
          </tr>
        </thead>
        <tbody>
           @foreach($th as $key => $dsth)
           <tr>
           
            <td>TH00{{$dsth->th_id}}</td>
            <td>{{$dsth->th_ten}}</td>
            <td><img src="upload/thuonghieu/{{$dsth->th_hinh}}" height="100px" width="100px"></td>
            <?php
            $th_ngaytaomoi=date("d-m-Y", strtotime($dsth->th_ngaytaomoi));
            $th_ngaycapnhat=date("d-m-Y", strtotime($dsth->th_ngaycapnhat));?>
             <td>{{$th_ngaytaomoi}}</td>
            <td>{{$th_ngaycapnhat}}</td>
            <td>
               <span class="text-ellipsis">
                @if($dsth->th_hienthi==0)
                 <a href="{{URL::to('/banhang/khongkichhoat-th/'.$dsth->th_id)}}"><span class="fa-thumb-styling fa fa-thumbs-up" title="Ấn để ẩn thương hiệu"></span></a></span>
                 @else
                  <a href="{{URL::to('/banhang/kichhoat-th/'.$dsth->th_id)}}"><span class="fa-thumb-styling fa fa-thumbs-down" title="Ấn để hiển thị thương hiệu" ></span></a></span>
                  @endif
                  <a href="{{URL::to('/banhang/sua-th/'.$dsth->th_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active" title="Chỉnh sửa thông tin thương hiệu"></i></a>
                 <a onclick= "return confirm('Bạn có chắc là muốn xóa thương hiệu này không ?')" href="{{URL::to('/banhang/xoa-th/'.$dsth->th_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text" title="Xóa thương hiệu"></i>
            </td>
          </tr>
            @endforeach
            
            
        </tbody>
      </table>
    </div>
    </div>
    
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
@endsection