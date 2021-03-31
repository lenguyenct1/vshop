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

  $date=date("d-m-Y H:i:s", strtotime($ddh->ddh_ngaylap));
 ?>
 <body>
 <table>
    <thead>
        <tr>
            <th colspan="5" style="font-size:20px;text-align:center">
                <strong>HÓA ĐƠN</strong>
            </th>
        </tr>
        <tr>
            <th colspan="5" style="font-size:16px;text-align:center">
               VSHOP -- Thời gian đặt hàng: {{ $date }}
            </th>
        </tr>
    </thead>
    <tbody>
  
        <tr>
        <td colspan="2"> <i>Khách hàng: </i><strong>{{$ddh->khachhang->kh_ten}}</strong></td>
       
        <td></td>
        <td colspan="2"  style="text-align:right;"> <i>Địa chỉ giao hàng: </i><strong>{{$ddh->ddh_diachi}}</strong></td>
        </tr>
        <tr>
        <td colspan="2">  <i>Hình thức thanh toán: </i><strong>{{$ddh->thanhtoan->tt_ten}}</strong></td>
      
        <td></td>
        <td colspan="2" style="text-align:right;"> <i>Số điện thoại liên hệ: </i><strong>{{$ddh->ddh_sdt}}</strong></td>
        </tr>
      
        
    </tbody>
</table>
 <table border="1" width=100% >
        <thead>
           <tr>
                <th  style="text-align:center;width:5px">STT</th>
                <th  style="text-align:center;width:35px" >Tên mẫu sản phẩm</th>
                <th  style="text-align:center;width:20px">Số lượng</th>
                <th  style="text-align:center;width:25px">Đơn giá</th>
                <th  style="text-align:center;width:35px">Thành tiền</th>
           </tr>
        </thead> 
        <tbody>
          <?php $i=1; 
                     $total=0;
                     ?>
          @foreach($ctddh as $key => $dsctddh)
            <tr  style="border: 1px thin #000" align=center >
                <td style="text-align:center;width:5px">
                   {{$i++}}
                </td>
                <td style="text-align:center;width:35px" >
                   {{$dsctddh->mausp_ten}}
                </td>
               
                <td style="text-align:center;width:20px">
                  {{$dsctddh->ctdh_soluong}}
                </td>
                  <td style="text-align:center;width:25px">
                    {{number_format($dsctddh->ctdh_dongia,0,',',',')}}
                  </td>
                    <td style="text-align:center;width:35px">
                      {{number_format($dsctddh->ctdh_soluong*$dsctddh->ctdh_dongia,0,',',',')}}
                    </td>
               <?php
            $total=$total+($dsctddh->ctdh_soluong*$dsctddh->ctdh_dongia);
             ?>   
              
            </tr>
             @endforeach
            <tr style="border: 1px thin #000" align="center"> 
            <th style="font-size:11px" colspan="4"><strong>Tổng giá sản phẩm</strong></th>
            <th style="text-align:center;font-size:11px"><strong>{{ number_format($total,0,',',',') }}  VNĐ</strong></th>
            </tr>
            <tr style="border: 1px thin #000" align="center"> 
            <th style="font-size:11px" colspan="4"><strong>Phí vận chuyển</strong></th>
            <th style="text-align:center;font-size:11px"><strong>{{ number_format($ddh->vanchuyen->vc_chiphi,0,',',',') }}  VNĐ</strong></th>
            </tr>
            <tr style="border: 1px thin #000" align="center"> 
            <th style="font-size:15px" colspan="4"><strong>Tổng tiền</strong></th>
            <th style="text-align:center;font-size:18px"><strong>{{ number_format($total+$ddh->vanchuyen->vc_chiphi,0,',',',') }}  VNĐ</strong></th>
            </tr>

        </tbody>
    </table>
  <table>
             <tr>
                <td colspan="2" class="caption" align="left" style="text-align: center; font-size: 12px">
                 <strong>Người lập phiếu</strong>
                </td>
                 <td  class="caption" align="center" style="text-align: center; font-size: 12px">
                 <strong>Người giao hàng</strong>
                </td>   
                  <td colspan="2" class="caption" align="right" style="text-align: center; font-size: 12px">
               <strong>Khách hàng</strong>
                </td>
               
            </tr>
        </table>
    
</body>


</html>