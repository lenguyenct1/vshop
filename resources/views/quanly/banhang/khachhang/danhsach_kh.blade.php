@extends('admin_banhang')
@section('admin_content')
    
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách khách hàng
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
            
            <th>Mã khách hàng</th>
            <th>Tên khách hàng</th>
            <th>Địa chỉ khách hàng</th>
            <th>Email</th>
            <th>Số điện thoại</th>
            <th >Hành động</th>
          </tr>
        </thead>
        <tbody>
          @foreach($kh as $key => $dskh)
          <tr>
           
            <td>KH00{{$dskh->kh_id }}</td>
            <td>{{ $dskh->kh_ten}}</td>
            <td>{{ $dskh->kh_diachi}}</td>
            <td>{{ $dskh->kh_email}}</td>
            <td>{{ $dskh->kh_sdt}}</td>
<?php 
$ddh=DB::table('dondathang')->where('kh_id',$dskh->kh_id)->get();
?>
         @if(!$ddh->isEmpty())
         
             <td>
               <a href="{{URL::to('banhang/chitiet-kh/'.$dskh->kh_id)}}" class="active styling-edit" ui-toggle-class="">
                            <i class="fa fa-eye text-success text-active" style="margin-right: 10px;" title="Chi tiết đơn hàng khách hàng"></i></a>
            <a href=" {{URL::to('/banhang/pdf-kh/'.$dskh->kh_id)}}" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-print fa-lg" style="margin-right: 10px;" title="Xuất  Pdf chi tiết đơn hàng của khách hàng"></i></a>
            
            <a href="{{ URL::to('/banhang/excel-kh/'.$dskh->kh_id) }}" class="active styling-edit" ui-toggle-class="" target="_blank">
                        <i class="fa fa-file-excel-o"  title="Xuất Excel chi tiết đơn hàng của khách hàng"></i></a>
            </td>
        
             @else
             <td>Không có đơn </td>
          @endif
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