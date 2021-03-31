@extends('admin_banhang')
@section('admin_content')
     <a  type="button" name="taopnk" class="btn btn-info" href="{{URL::to('banhang/tao-khuyenmai')}}"> <i class="glyphicon glyphicon-plus"></i>Tạo khuyến mãi</a>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
     Danh sách khuyến mãi
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
            
            <th>Mã khuyến mãi</th>
            <th>Nhân viên tạo khuyến mãi</th>
            <th>Chương trình khuyến mãi</th>
            <th>Giá trị khuyến mãi(%)</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày kết thúc</th>
            <th>Hành động</th>
          </tr>
        </thead>
        <tbody>
        
          @foreach($km as $dskm)
          <tr>
            <?php 
            $ngaybatdau=date("d-m-Y", strtotime($dskm->khuyenmai_ngaybatdau));
            $ngayketthuc=date("d-m-Y", strtotime($dskm->khuyenmai_ngayketthuc));
         
          ?>
            <td>KM00{{ $dskm->khuyenmai_id }}</td>
            <td>{{ $dskm->User->name}}</td>
            <td>{{ $dskm->khuyenmai_ten}}</td>
            <td>{{ $dskm->khuyenmai_giatri}}%</td>
            <td>{{ $ngaybatdau}}</td>
            <td>{{ $ngayketthuc}}</td>
             <td>
              <a href="{{URL::to('/banhang/chitiet-khuyenmai/'.$dskm->khuyenmai_id)}}"  class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-eye text-success text-active" title="Xem chi tiết khuyến mãi"></i></a>
                <a href=" {{URL::to('/banhang/pdf-khuyenmai/'.$dskm->khuyenmai_id)}}" class="active styling-edit" ui-toggle-class=""  target="_blank">
                  <i class="fa fa-print" title="Xuất pdf khuyến mãi"></i></a>
                    <a href="{{ URL::to('/banhang/excel-khuyenmai/'.$dskm->khuyenmai_id) }}" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-file-excel-o" title="Xuất excel khuyến mãi"></i></a>
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