@extends('admin_banhang')
@section('admin_content')
     <a  type="button" name="taoxx" class="btn btn-info" href="{{URL::to('banhang/tao-xx')}}"> <i class="glyphicon glyphicon-plus"></i>Tạo xuất xứ</a>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách xuất xứ
    </div>
  
                         @if(session('thongbao'))
                            <span class="text-alert">
                                {{session('thongbao')}}
                            </span>
                        @endif
                      
    
  
<table    class= "table table-bordered table-striped table-hover"   id="dataTables-example">
      
          <thead>
          <tr>
            
            <th>Mã xuất xứ</th>
            <th>Tên xuất xứ</th>
            <th >Hành động</th>
          </tr>
        </thead>
        <tbody>
           @foreach($xx as $key => $dsxx)
           <tr>
           
            <td>XX00{{$dsxx->xx_id}}</td>
            <td>{{$dsxx->xx_ten}}</td>
          
            <td>
             
                  <a href="{{URL::to('/banhang/sua-xx/'.$dsxx->xx_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active" title="Chỉnh sửa thông tin xuất xứ"></i></a>
                 <a onclick= "return confirm('Bạn có chắc là muốn xóa xuất xứ này không ?')" href="{{URL::to('/banhang/xoa-xx/'.$dsxx->xx_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text" title="Xóa xuất xứ"></i>
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