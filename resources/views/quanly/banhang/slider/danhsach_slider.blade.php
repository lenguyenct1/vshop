@extends('admin_banhang')
@section('admin_content')
     <a  type="button" name="taokho" class="btn btn-info" href="{{URL::to('banhang/tao-slider')}}"> <i class="glyphicon glyphicon-plus"></i>Tạo slider</a>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách slider
    </div>
  
                         @if(session('thongbao'))
                            <span class="text-alert">
                                {{session('thongbao')}}
                            </span>
                        @endif
    <div class="table-responsive">
<table   class= "table table-bordered table-striped table-hover"   id="dataTables-example">
        <thead>
          <tr>
            
            <th>Mã slider</th>
            <th>Tên slider</th>
            <th>Hình slider </th>
            <th style="width:80px;">Hành động</th>
          </tr>
        </thead>
        <tbody>
          @foreach($slider as $key => $dsslider)
          <tr>
           
            <td>SD00{{ $dsslider->slider_id }}</td>
            <td>{{ $dsslider->slider_ten}}</td>
            <td><img src="upload/slider/{{$dsslider->slider_hinh}}" height="200px" width="400px"></td>
             <td>
              <span class="text-ellipsis">
                @if($dsslider->slider_hienthi==0)
                 <a href="{{URL::to('/banhang/khongkichhoat-slider/'.$dsslider->slider_id)}}"><span class="fa-thumb-styling fa fa-thumbs-up" title="Ấn để ẩn slider"></span></a></span>
                 @else
                  <a href="{{URL::to('/banhang/kichhoat-slider/'.$dsslider->slider_id)}}"><span class="fa-thumb-styling fa fa-thumbs-down" title="Ấn để hiển thị slider" ></span></a></span>
                  @endif
              <a href="{{URL::to('banhang/sua-slider/'.$dsslider->slider_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active" title="Chỉnh sửa thông tin slider"></i></a>
                 <a onclick="return confirm('Bạn có chắc là muốn xóa slider này không ?')" href="{{URL::to('/banhang/xoa-slider/'.$dsslider->slider_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text" title="Xóa hình nền "></i> </a>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
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