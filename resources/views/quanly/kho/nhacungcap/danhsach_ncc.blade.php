@extends('admin_banhang')
@section('admin_content')
     <a  type="button" name="taoncc" class="btn btn-info" href="{{URL::to('banhang/tao-ncc')}}"> <i class="glyphicon glyphicon-plus"></i>Tạo nhà cung cấp</a>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
     Danh sách nhà cung cấp
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
            
            <th>Mã nhà cung cấp</th>
            <th>Tên nhà cung cấp</th>
            <th>Địa chỉ nhà cung cấp</th>
            <th>Email nhà cung cấp</th>
            <th>Số điện thoại nhà cung cấp</th>
            <th style="width:60px;">Hành động</th>
          </tr>
        </thead>
        <tbody>
          @foreach($ncc as $key => $dsncc)
          <tr>
           
            <td>NCC00{{ $dsncc->ncc_id }}</td>
            <td>{{ $dsncc->ncc_ten}}</td>
            <td>{{ $dsncc->ncc_diachi}}</td>
             <td>{{ $dsncc->ncc_email}}</td>
             <td>{{ $dsncc->ncc_sdt}}</td>
             <td>
              <a  href="{{URL::to('/banhang/sua-ncc/'.$dsncc->ncc_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active" title="Chỉnh sửa thông tin nhà cung cấp"></i></a>
                 <a onclick="return confirm('Bạn có chắc là muốn xóa nhà cung cấp này không ?')" href="{{URL::to('/banhang/xoa-ncc/'.$dsncc->ncc_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text" title="Xóa nhà cung cấp"></i> </a>
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