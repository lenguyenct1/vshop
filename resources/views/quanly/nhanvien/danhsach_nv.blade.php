@extends('admin_banhang')
@section('admin_content')
     <a  type="button" name="taonv" class="btn btn-info" href="{{URL::to('banhang/tao-nv')}}"> <i class="glyphicon glyphicon-plus"></i>Tạo nhân viên</a>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách nhân viên
    </div>
  
                         @if(session('thongbao'))
                            <span class="text-alert">
                                {{session('thongbao')}}
                            </span>
                        @endif
    <div class="table-responsive">
<table   class= "table table-bordered table-striped table-hover"  id="dataTables-example">
        <thead>
          <tr>
            
              <th>Mã nhân viên</th>
            <th>Tên nhân viên</th>
            <th>Địa chỉ</th>
              <th>Email</th>
                <th>Số điện thoại</th>
              <th style="width: 35%;">Quyền</th>
              
            <th style="width:60px;">Hành động</th>
          </tr>
        </thead>
        <tbody>
          @foreach($nv as $key => $dsnv)
          <tr>  <td>NV00{{ $dsnv->id }}</td>
              <td>{{ $dsnv->name}}</td>
             <td>{{ $dsnv->diachi}}</td>
            <td>{{ $dsnv->email}}</td>
            <td>{{ $dsnv->sdt}}</td>
            @if($dsnv->quyen==9)
             <td>
               <input type="button" class="btn btn-success btn-xs order_duyet_btn" value="Quản lý kho" title="Quản lý kho">
               <input type="button" class="btn btn-warning btn-xs order_duyet_btn" value="Quản lý bán hàng" title="Quản lý bán hàng">
               <input type="button" class="btn btn-info btn-xs order_duyet_btn" value="Quản lý nhân viên" title="Quản lý nhân viên">
             </td>
             @elseif($dsnv->quyen==8)
               <td>  
              <input type="button" class="btn btn-warning btn-xs order_duyet_btn" value="Quản lý bán hàng" title="Quản lý bán hàng">
               <input type="button" class="btn btn-info btn-xs order_duyet_btn" value="Quản lý nhân viên" title="Quản lý nhân viên"></td>
             @elseif($dsnv->quyen==6)
               <td>
                    <input type="button" class="btn btn-success btn-xs order_duyet_btn" value="Quản lý kho" title="Quản lý kho">
                    <input type="button" class="btn btn-info btn-xs order_duyet_btn" value="Quản lý nhân viên" title="Quản lý nhân viên">
               </td>
                 @elseif($dsnv->quyen==4)
               <td>
                <input type="button" class="btn btn-success btn-xs order_duyet_btn" value="Quản lý kho" title="Quản lý kho">
               <input type="button" class="btn btn-warning btn-xs order_duyet_btn" value="Quản lý bán hàng" title="Quản lý bán hàng"></td>
               @elseif($dsnv->quyen==5)
               <td>  <input type="button" class="btn btn-info btn-xs order_duyet_btn" value="Quản lý nhân viên" title="Quản lý nhân viên"></td>
                 @elseif($dsnv->quyen==3)
               <td><input type="button" class="btn btn-warning btn-xs order_duyet_btn" value="Quản lý bán hàng" title="Quản lý bán hàng"></td>
                 @elseif($dsnv->quyen==1)
               <td>  
                <input type="button" class="btn btn-success btn-xs order_duyet_btn" value="Quản lý kho" title="Quản lý kho"></td>
                  @elseif($dsnv->quyen==0)
               <td>Nhân viên chưa được cấp quyền</td>
               @endif

             <td>
              <a href="{{URL::to('banhang/sua-nv/'.$dsnv->id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active"  title="Chỉnh sửa thông tin nhân viên"></i></a>
                 <a onclick="return confirm('Bạn có chắc là muốn xóa nhân viên này không ?')" href="{{URL::to('/banhang/xoa-nv/'.$dsnv->id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text"  title="Xóa nhân viên"></i> </a>
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