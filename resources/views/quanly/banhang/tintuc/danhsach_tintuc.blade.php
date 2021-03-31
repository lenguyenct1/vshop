@extends('admin_banhang')
@section('admin_content')
     <a  type="button" name="taoth" class="btn btn-info" href="{{URL::to('banhang/tao-tintuc')}}"> <i class="glyphicon glyphicon-plus"></i>Tạo tin tức</a>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách tin tức
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
            
            <th>Mã tin tức</th>
            <th width="15%">Tên tin tức</th>
            <th>Hình ảnh</th>
            <th width="20%">Tóm tắt</th>
            <th>Danh mục tin</th>
            <th width="15%">Hành động</th>
          </tr>
        </thead>
        <tbody>
           @foreach($tintuc as $key => $dstintuc)
           <tr>
           
            <td>TT00{{$dstintuc->tintuc_id}}</td>
            <td>{{$dstintuc->tintuc_ten}}</td>
            <td> <img src="{{URL::to('upload/tintuc/'.$dstintuc->tintuc_hinh)}}" height="100px" width="100px"></td>
            <td>{!!$dstintuc->tintuc_tomtat!!}</td>
            <td>{{$dstintuc->danhmuctin->dmt_ten}}</td>
           
            <td>
               <span class="text-ellipsis">
                @if($dstintuc->tintuc_hienthi==0)
                 <a href="{{URL::to('/banhang/khongkichhoat-tintuc/'.$dstintuc->tintuc_id)}}"><span class="fa-thumb-styling fa fa-thumbs-up" title="Ấn để ẩn tin tức"></span></a></span>
                 @else
                  <a href="{{URL::to('/banhang/kichhoat-tintuc/'.$dstintuc->tintuc_id)}}"><span class="fa-thumb-styling fa fa-thumbs-down" title="Ấn để hiển thị tin tức" ></span></a></span>
                  @endif
                  <a href="{{URL::to('/banhang/sua-tintuc/'.$dstintuc->tintuc_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active" title="Chỉnh sửa thông tin tin tức"></i></a>
                 <a onclick= "return confirm('Bạn có chắc là muốn xóa tin tức này không ?')" href="{{URL::to('/banhang/xoa-tintuc/'.$dstintuc->tintuc_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text" title="Xóa tin tức"></i>
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