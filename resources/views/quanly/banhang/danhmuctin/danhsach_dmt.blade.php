@extends('admin_banhang')
@section('admin_content')
     <a  type="button" name="taoth" class="btn btn-info" href="{{URL::to('banhang/tao-dmt')}}"> <i class="glyphicon glyphicon-plus"></i>Tạo danh mục tin</a>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách danh mục tin
    </div>
  
                         @if(session('thongbao'))
                            <span class="text-alert">
                                {{session('thongbao')}}
                            </span>
                        @endif
                      
    
  
<table    class= "table table-bordered table-striped table-hover"   id="dataTables-example">
      
          <thead>
          <tr>
            
            <th>Mã danh mục tin</th>
            <th>Tên danh mục tin</th>
            <th >Hành động</th>
          </tr>
        </thead>
        <tbody>
           @foreach($dmt as $key => $dsdmt)
           <tr>
           
            <td>DMT00{{$dsdmt->dmt_id}}</td>
            <td>{{$dsdmt->dmt_ten}}</td>
           
            <td>
               <span class="text-ellipsis">
                @if($dsdmt->dmt_hienthi==0)
                 <a href="{{URL::to('/banhang/khongkichhoat-dmt/'.$dsdmt->dmt_id)}}"><span class="fa-thumb-styling fa fa-thumbs-up" title="Ấn để ẩn danh mục tin"></span></a></span>
                 @else
                  <a href="{{URL::to('/banhang/kichhoat-dmt/'.$dsdmt->dmt_id)}}"><span class="fa-thumb-styling fa fa-thumbs-down" title="Ấn để hiển thị danh mục tin" ></span></a></span>
                  @endif
                  <a href="{{URL::to('/banhang/sua-dmt/'.$dsdmt->dmt_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active" title="Chỉnh sửa thông tin danh mục tin"></i></a>
                 <a onclick= "return confirm('Bạn có chắc là muốn xóa danh mục tin này không ?')" href="{{URL::to('/banhang/xoa-dmt/'.$dsdmt->dmt_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text" title="Xóa danh mục tin"></i>
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