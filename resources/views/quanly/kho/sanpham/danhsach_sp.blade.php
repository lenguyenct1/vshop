@extends('admin_banhang')
@section('admin_content')
     <a  type="button" name="taosp" class="btn btn-info" href="{{URL::to('banhang/tao-sp')}}"> <i class="glyphicon glyphicon-plus"></i>Tạo sản phẩm</a>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách sản phẩm
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
            <th>Mã sản phẩm</th>
            <th>Tên sản phẩm</th>  
            <th>Hình ảnh</th>
            <th>Thương hiệu</th>
            <th>Thư viện ảnh</th>
            <th>Kho hàng</th>
            <th >Đơn giá nhập</th>
            <th >Đơn giá bán</th>
            <th>Số lượng</th>
           
            <th width="12%" >Hành động</th>
          </tr>
        </thead>
        <tbody>
         
          @foreach($sp as $key => $dssp)
         <?php
             $ngaytaomoi=date("d-m-Y", strtotime($dssp->sp_ngaytaomoi));
            $ngaycapnhat=date("d-m-Y", strtotime($dssp->sp_ngaycapnhat));
            $date=date("Y-m-d", strtotime($current_day));
        $sp_dongiaban= DB::table('sanpham')->join('gia','sanpham.sp_id','=','gia.sp_id')->where([['gia_ngayapdung','<=',$date],['sanpham.sp_id',$dssp->sp_id]])->orderby('gia.gia_ngayapdung','desc')->first();
           ?>
          <tr>
             <td>SP00{{$dssp->sp_id}}</td>
            @if($dssp->sp_soluong>0 && empty(!$sp_dongiaban) && $dssp->sp_hienthi==0 ) 
            <td><a href="{{url('/chi-tiet-san-pham/'.$dssp->sp_nhan)}}" target="_blank">{{$dssp->sp_ten }}</a></td>
              @else
                <td>{{$dssp->sp_ten }}</td>
              @endif
           
            <td><img src="upload/sanpham/{{$dssp->sp_hinh}}" height="100px" width="100px"></td>  
            <td>{{$dssp->thuonghieu->th_ten}}</td>
            <td><a href="{{URL::to('/banhang/danhsach-thu-vien-anh/'.$dssp->sp_id)}}"> <input type="button"  class="btn btn-info btn-xs order_duyet_btn" value="Thư viện ảnh" title="Thư viện ảnh"></a></td>
            <td>{{$dssp->khohang->kho_ten}}</td>
            <td>{{number_format($dssp->sp_dongianhap).' '.''}}</td>
         
         @if(empty(!$sp_dongiaban))
          <td>{{number_format($sp_dongiaban->gia_giatri).' '.''}}</td>
            
        
       @else
         <td>Chưa đến ngày áp dụng</td>
        
         @endif
        
          
           
            <td>{{$dssp->sp_soluong}}</td>
           
             <td>
              <span class="text-ellipsis">
              <?php
               if($dssp->sp_hienthi==0){
                ?>
                <a href="{{URL::to('/banhang/khongkichhoat-sp/'.$dssp->sp_id)}}"><span class="fa-thumb-styling fa fa-thumbs-up" title="Ấn để ẩn sản phẩm"></span></a>
                <?php
                 }else{
                ?>  
                 <a href="{{URL::to('/banhang/kichhoat-sp/'.$dssp->sp_id)}}"><span class="fa-thumb-styling fa fa-thumbs-down" title="Ấn để hiển thị sản phẩm" ></span></a>
                <?php
               }
              ?>
            </span>
              <a href="{{URL::to('/banhang/sua-sp/'.$dssp->sp_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active" title="Chỉnh sửa thông tin sản phẩm"></i></a>
                  <a onclick="return confirm('Bạn có chắc là muốn xóa sản phẩm này không ?')" href="{{URL::to('/banhang/xoa-sp/'.$dssp->sp_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text" title="Xóa sản phẩm"></i>
              </a>
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