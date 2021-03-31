@extends('admin_banhang')
@section('admin_content')
   <div class="table-agile-info">
        <div class="panel panel-default">
            <div class="panel-heading">
                Thông tin đơn đặt hàng
            </div>
           
            <div class="table-responsive">
                <table class="table table-striped b-t b-light">
               
                    <?php
                        $ddh_ngaylap=date("d-m-Y H:i:s", strtotime($ddh->ddh_ngaylap));
                        $ngayxacnhan=date("d-m-Y H:i:s", strtotime($ddh->ddh_ngayxacnhan));
                    ?>
                    <tr>
                        <th>Mã hóa đơn:</th>
                        <td>DDH00{{ $ddh->ddh_id }}</td>
                        <th>Trạng thái:</th>
                        <td>
                            @if(($ddh->ddh_trangthai)==1)
                                {{ 'Chưa duyệt' }}
                            @elseif(($ddh->ddh_trangthai)==2)
                                {{ 'Đã duyệt' }}
                            @elseif(($ddh->ddh_trangthai)==3)
                                {{ 'Đã giao hàng' }}
                             @elseif(($ddh->ddh_trangthai)==4)
                                {{ 'Hủy đơn hàng' }}
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Thời gian đặt hàng:</th>
                        <td>{{ $ddh_ngaylap }}</td>
                        <th>Thời gian xác nhận:</th>
                       @if($ddh->ddh_ngayxacnhan=='')
                        <td>ĐƠN HÀNG CHƯA HOÀN TẤT</td>
                        @else
                        <td>{{$ngayxacnhan}}</td>
                        @endif
                       
                    </tr>
                    <tr>
                        <th>Khách hàng:</th>
                        <td>{{ $ddh->khachhang->kh_ten }}</td>
                        <th>Số điện thoại:</th>
                        <td>{{ $ddh->ddh_sdt }}</td>
                    </tr>
                   <tr>
                        <th>Hình thức thanh toán:</th>
                        <td>
                                {{ $ddh->thanhtoan->tt_ten }}
                            
                            </td>
                             <th>Địa chỉ giao hàng:</th>
                        <td>{{ $ddh->ddh_diachi }}</td>
                    </tr>
              
                </table>
            </div>
        </div>
    </div>
    <br/>
     <div class="table-agile-info">
        <div class="table-responsive">
           <table class= "table table-bordered table-striped"  >
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Mã mẫu sản phẩm</th>
                        <th>Tên mẫu sản phẩm</th>
                        <th>Số lượng</th>
                        <th>Giá sản phẩm</th>
                        <th>Thành tiền</th>
                    </tr>
                </thead>
                <tbody>
                      <?php $i=1; ?>
                    <?php $total=0; ?>
                    @foreach ($ctddh as $dsctddh)
                    <tr>
                        <?php
                                    $subtotal = $dsctddh->ctdh_dongia * $dsctddh->ctdh_soluong;
                                    $total+=$subtotal;
                                  
                                    ?>
                         <td> {{$i++}}</td>
                        <td>MAUSP00{{ $dsctddh->mausp_id }}</td>
                        <td>{{ $dsctddh->mausp_ten }}</td>
                        <td>{{ $dsctddh->ctdh_soluong }}</td>
                        <td>{{ number_format($dsctddh->ctdh_dongia, 0, ',' , ',') }} VNĐ</td>
                        <td>{{number_format($dsctddh->ctdh_soluong*$dsctddh->ctdh_dongia,0,',',',')}}</td>                     
                    </tr>
                    @endforeach
                </tbody>
               </table>
               <footer class="panel-footer">
      <div class="row">
        
        <div class="col-sm-6 text-center">
          <small class="text-muted inline m-t-sm m-b-sm" style="font-size: 20px;"><b>Tổng giá sản phẩm:</b> </small>
          
          <small style="font-size: 20px;">{{number_format($total).' '.'VNĐ'}} </small><br/>
            <small class="text-muted inline m-t-sm m-b-sm" style="font-size: 20px;"><b>Phí vận chuyển:</b> </small>
           <small style="font-size: 20px;">{{number_format($ddh->vanchuyen->vc_chiphi).' '.'VNĐ'}} </small><br/>
           <small class="text-muted inline m-t-sm m-b-sm" style="font-size: 20px;"><b>Tổng:</b> </small>
           <small style="font-size: 20px;">{{number_format($total+$ddh->vanchuyen->vc_chiphi).' '.'VNĐ'}} </small>
        
        </div>
        
  
      </div>
    </footer>
        </div>
           <a type="button" name="taopnk" class="btn btn-success" href="{{ URL::to('banhang/danhsach-ddh') }}">Trở về</a><br>
    </div>

    @endsection