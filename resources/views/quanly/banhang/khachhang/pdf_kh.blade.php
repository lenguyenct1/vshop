<!DOCTYPE html>
<html>
<head>
    <title>Danh sách đơn hàng</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <style>
        body{
            font-family: DejaVu Sans, sans-serif;
        }
        .table_0, .table_1, .table_2, .tieude{
            border-collapse: collapse;
        }
        .tieude{
            /* border: 1px solid #000; */
            border: none;
            width: 100%;
        }
        /* .tieude td{
            border: 1px solid #000;
        } */
        .phieubanhang{
            font-weight: bold;
            font-size: 30px;
            text-align: center;
            margin-bottom: 5px;
            padding-left: 134px;
        }
        .ma_don{
            text-align: right;
        }
        .table_0{
            width: 100%;
            border: none;
            margin-bottom: 10px;
        }
        .table_1{
            width: 100%;
            margin-top: 5px;
        }
        .table_1 th{
            border: 1px solid #000;
        }
        .table_1 td{
            border: 1px solid #000;
        }
        .table_2{
            border: none;
            width: 310px;
            margin-right: -80px;
        }
        .table_2 th{
            text-align: left;
        }
        .table_2 td{
            text-align: right;
        }
        .table_3{
            border: none;
            width: 100%;
            margin-top: 10px;
        }
        .table_3 th{
            text-align: center;
            /* border: 1px solid #000; */
        }
    </style>
</head>
<body>
   <h1><center>DANH SÁCH ĐƠN ĐẶT HÀNG CỦA {{$kh->kh_ten}}</center></h1>
 <?php 

  $date=date("d-m-Y", strtotime($date));
 ?>
  <span><center>VSHOP -- Ngày:{{ $date }}</center></span> 
    <br>
    <table width=100%>
        <tr>
            <td><i>Khách hàng: </i><strong>{{$kh->kh_ten}}</strong></td>
            <td style="text-align: right;"><i>Địa chỉ khách hàng: </i><strong>{{$kh->kh_diachi}}</strong></td>
        </tr>
        <tr>
           <td><i>Email: </i><strong>{{$kh->kh_email}} </strong> </td>
            <td style="text-align: right;"><i>Số điện thoại khách hàng: </i><strong> {{$kh->kh_sdt}}</strong></td>
        </tr>
    </table>
    
  <br>
  
            <table class="table_1">
                <thead>
                    <tr>
                            <th>STT</th>
                            <th>Mã đơn đặt hàng</th>
                            <th>Thời gian đặt hàng</th>
                            <th>Thời gian xác nhận</th>
                            <th>Hình thức thanh toán</th>
                            <th>Tình trạng đơn đặt hàng</th>
                             <th>Tổng tiền</th>
                </thead>
                <tbody>
                     <?php $i=1; 
                     $total=0;
                    
                     ?>
          @foreach($ddh as $key => $dsddh)
          <?php 
           $ngay=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngaylap));
           $ngayxacnhan=date("d-m-Y H:i:s", strtotime($dsddh->ddh_ngayxacnhan));
          ?>
          <tr  align=center>
            <td> {{$i++}}</td>
            <td>DDH00{{ $dsddh->ddh_id}}</td>
            <td>{{ $ngay}}</td>
              @if($dsddh->ddh_ngayxacnhan=='')
             <td>ĐƠN HÀNG CHƯA HOÀN TẤT</td>
            @else
            <td>{{$ngayxacnhan}}</td>
            @endif
           
              <td>{{$dsddh->tt_ten}}</td>
              @if($dsddh->ddh_trangthai==1)
               <td>Chưa duyệt</td>
            @elseif($dsddh->ddh_trangthai==2)
              <td>Đã duyệt</td>
                @elseif($dsddh->ddh_trangthai==3)
              <td>Đã giao hàng</td>
                @elseif($dsddh->ddh_trangthai==4)
              <td>Đã hủy đơn</td>@endif

             <td>{{number_format($dsddh->ddh_tong).' '.''}}</td>
           <?php
           if($dsddh->ddh_trangthai!=4){
           $total=$total+$dsddh->ddh_tong;
         }
             ?>
          </tr>
          @endforeach
           <tr>
            <th colspan="6">Tổng tiền</th>
            <th>{{number_format($total,0,',',',') }}</th>
            </tr>
          </tbody>

      </table>
      <label style="text-align:center;">Lưu ý: Tổng tiền không bao gồm các đơn đặt hàng đã hủy</label>
      <hr style="color: black; margin-top: 150px;" />

          <table>
                <thead>
                    <tr>
                        <th width="200px">Người lập phiếu</th>
                        <th width="250px">                </th>
                        <th width="250px">Khách hàng</th>
                        
                    </tr>
                </thead>
                <tbody>
                
                </tbody>
            
        </table>      
</body>
</html>