<!DOCTYPE html>
<html>
<head>
    <title>HÓA ĐƠN</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>
    table {
        border: 1px solid #000;
    }
    tr > td {
    border-bottom: 1px solid #000000;
}
</style>
</head>
 <?php 

  $date=date("d-m-Y", strtotime($date));
 ?>
 <body>
 <table>
    <thead>
        <tr>
            <th colspan="7" style="font-size:20px;text-align:center">
                <strong>DANH SÁCH ĐƠN ĐẶT HÀNG </strong>
            </th>
        </tr>
        <tr>
            <th colspan="7" style="font-size:16px;text-align:center">
               VSHOP -- Ngày:{{ $date }}
            </th>
        </tr>
    </thead>
    <tbody>
  
        <tr>
        <td colspan="3"> <i>Khách hàng: </i><strong>{{$kh->kh_ten}}</strong></td>
       
        <td></td>
        <td colspan="3"  style="text-align:right;"> <i>Địa chỉ khách hàng: </i><strong>{{$kh->kh_diachi}}</strong></td>
        </tr>
        <tr>
        <td colspan="3">  <i>Email: </i><strong>{{$kh->kh_email}}</strong></td>
      
        <td></td>
        <td colspan="3" style="text-align:right;"> <i>Số điện thoại khách hàng: </i><strong>{{$kh->kh_sdt}}</strong></td>
        </tr>
      
        
    </tbody>
</table>
 <table border="1" width=100% >
        <thead>
           <tr>
                <th  style="text-align:center;width:5px">STT</th>
                <th  style="text-align:center;width:20px" >Mã đơn đặt hàng</th>
                <th  style="text-align:center;width:25px">Thời gian đặt hàng</th>
                <th  style="text-align:center;width:35px">Thời gian xác nhận</th>
                <th  style="text-align:center;width:20px">Hình thức thanh toán</th>
                <th  style="text-align:center;width:25px">Tình trạng đơn đặt hàng</th>
                <th  style="text-align:center;width:30px">Tổng tiền</th>
           </tr>
        </thead> 
        <tbody>
          <?php $i=1; $total=0;
                    
                     ?>
          @foreach($ddh as $key => $dsddh)
           <?php 
           $ngay=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngaylap));
           $ngayxacnhan=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngayxacnhan));
          ?>
            <tr  style="border: 1px thin #000" align=center >
                <td style="text-align:center;width:5px">
                   {{$i++}}
                </td>
                <td style="text-align:center;width:20px" >
                   DDH00{{$dsddh->ddh_id}}
                </td>
               
                <td style="text-align:center;width:25px">
                  {{$ngay}}
                </td>
                 @if($dsddh->ddh_ngayxacnhan=='')
                  <td style="text-align:center;width:35px">ĐƠN HÀNG CHƯA HOÀN TẤT</td>
                   @else
                  <td style="text-align:center;width:35px">{{$ngayxacnhan}}</td>
                  @endif
                   
                 
                        <td style="text-align:center;width:20px">{{$dsddh->tt_ten}}</td>
                           @if($dsddh->ddh_trangthai==1)
                      <td style="text-align:center;width:25px">Chưa duyệt</td>
                        @elseif($dsddh->ddh_trangthai==2)
                            <td style="text-align:center;width:25px">Đã duyệt</td>
                             @elseif($dsddh->ddh_trangthai==3)
                            <td style="text-align:center;width:25px">Đã giao hàng</td>
                             @elseif($dsddh->ddh_trangthai==4)
                            <td style="text-align:center;width:25px">Đã hủy đơn</td>@endif
                           <td style="text-align:center;width:30px">{{number_format($dsddh->ddh_tong).' '.''}}</td>
                            <?php
  if($dsddh->ddh_trangthai!=4){
           $total=$total+$dsddh->ddh_tong;
         }
             ?>
            </tr>
             @endforeach
             <tr style="border: 1px thin #000" align="center"> 
            <th style="font-size:15px" colspan="6"><strong>Tổng tiền</strong></th>
            <th style="text-align:center;font-size:18px"><strong>{{ number_format($total,0,',',',') }}</strong></th>
            </tr>
        </tbody>
    </table>
      <table>
             <tr>
                <td colspan="6" class="caption" align="left" style="text-align: left; font-size: 12px">
                 Lưu ý: Tổng tiền không bao gồm các đơn đặt hàng đã hủy
                </td>
                
               
            </tr>
        </table>
    
  <table>
             <tr>
                <td colspan="2" class="caption" align="left" style="text-align: center; font-size: 12px">
                 <strong>Người lập phiếu</strong>
                </td>
                 <td colspan="2" class="caption" align="center" style="text-align: center; font-size: 12px">
                 <strong>            </strong>
                </td>   
                  <td colspan="2" class="caption" align="right" style="text-align: center; font-size: 12px">
               <strong>Khách hàng</strong>
                </td>
               
            </tr>
        </table>
    
</body>


</html>