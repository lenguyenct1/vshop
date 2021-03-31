@extends('admin_banhang')
@section('admin_content')
     <a  type="button" name="taovc" class="btn btn-info" href="{{URL::to('banhang/tao-vc')}}"> <i class="glyphicon glyphicon-plus"></i>Tạo vận chuyển</a>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách vận chuyển
    </div>
  
                         @if(session('thongbao'))
                            <span class="text-alert">
                                {{session('thongbao')}}
                            </span>
                        @endif
                      
    
  
<table    class= "table table-bordered table-striped table-hover"   id="dataTables-example">
      
          <thead>
          <tr>
            
            <th>Mã vận chuyển</th>
            <th>Tên vận chuyển</th>
              <th>Chi phí</th>
              <th width="20%">Thông tin</th>
            <th>Ngày tạo</th>
            <th>Ngày cập nhật</th>
            <th >Hành động</th>
          </tr>
        </thead>
        <tbody>
           @foreach($vc as $key => $dsvc)
           <tr>
           
            <td>VC00{{$dsvc->vc_id}}</td>
            <td>{{$dsvc->vc_ten}}</td>
             <td>{{number_format($dsvc->vc_chiphi).' '.''}}</td>
              <td>{{$dsvc->vc_thongtin}}</td>
            <?php
            $vc_ngaytaomoi=date("d-m-Y", strtotime($dsvc->vc_ngaytaomoi));
            $vc_ngaycapnhat=date("d-m-Y", strtotime($dsvc->vc_ngaycapnhat));?>
             <td>{{$vc_ngaytaomoi}}</td>
            <td>{{$vc_ngaycapnhat}}</td>
            <td>
               <span class="text-ellipsis">
                @if($dsvc->vc_hienthi==0)
                 <a href="{{URL::to('/banhang/khongkichhoat-vc/'.$dsvc->vc_id)}}"><span class="fa-thumb-styling fa fa-thumbs-up" title="Ấn để ẩn vận chuyển"></span></a></span>
                 @else
                  <a href="{{URL::to('/banhang/kichhoat-vc/'.$dsvc->vc_id)}}"><span class="fa-thumb-styling fa fa-thumbs-down" title="Ấn để hiển thị vận chuyển" ></span></a></span>
                  @endif
                  <a href="{{URL::to('/banhang/sua-vc/'.$dsvc->vc_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active" title="Chỉnh sửa thông tin vận chuyển"></i></a>
                 <a onclick= "return confirm('Bạn có chắc là muốn xóa hình thức vận chuyển này không ?')" href="{{URL::to('/banhang/xoa-vc/'.$dsvc->vc_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text" title="Xóa vận chuyển"></i>
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