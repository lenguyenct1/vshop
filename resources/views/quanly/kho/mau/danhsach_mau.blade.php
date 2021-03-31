@extends('admin_banhang')
@section('admin_content')
     <a  type="button" name="taomau" class="btn btn-info" href="{{URL::to('banhang/tao-mau')}}"> <i class="glyphicon glyphicon-plus"></i>Tạo màu </a>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách màu 
    </div>
  
                         @if(session('thongbao'))
                            <span class="text-alert">
                                {{session('thongbao')}}
                            </span>
                        @endif
                      
    
  
<table    class= "table table-bordered table-striped table-hover"   id="dataTables-example">
      
          <thead>
          <tr>
            
            <th>Mã màu</th>
            <th>Tên màu </th>
                <th>Giá trị màu </th>
            <th >Hành động</th>
          </tr>
        </thead>
        <tbody>
           @foreach($mau as $key => $dsmau)
           <tr>
           
            <td>MS00{{$dsmau->mau_id}}</td>
            <td>{{$dsmau->mau_ten}}</td>
             <td><div style="width: 100px; height: 100px; background:{{$dsmau->mau_giatri}}"></div>{{$dsmau->mau_giatri}} </td>
           
            <td>
           
               
                  <a href="{{URL::to('/banhang/sua-mau/'.$dsmau->mau_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active" title="Chỉnh sửa thông tin màu "></i></a>
                 <a onclick= "return confirm('Bạn có chắc là muốn xóa màu  này không ?')" href="{{URL::to('/banhang/xoa-mau/'.$dsmau->mau_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text" title="Xóa màu "></i>
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