<!DOCTYPE html>
<html>
<head>
    <title>DANH SÁCH KHUYẾN MÃI-KM00{{$km->khuyenmai_id}}</title>
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
   <h1><center>DANH SÁCH KHUYẾN MÃI</center></h1>
<?php 
$date=date("d-m-Y", strtotime($current_day));
  $ngaybatdau=date("d-m-Y", strtotime($km->khuyenmai_ngaybatdau));
$ngayketthuc=date("d-m-Y", strtotime($km->khuyenmai_ngayketthuc));
 ?>
  <span><center>VSHOP -- Ngày xuất danh sách: {{ $date }}</center></span> 
    <br>
    <table width=100%>
        <tr>
            <td><i>Chương trình khuyến mãi: </i><strong>{{$km->khuyenmai_ten}}</strong></td>
            <td style="text-align: right;"><i>Giá trị khuyến mãi(%): </i><strong>{{$km->khuyenmai_giatri}}%</strong></td>
        </tr>
        <tr>
           <td><i>Ngày bắt đầu: </i><strong>{{$ngaybatdau}}</strong></td>
            <td style="text-align: right;"><i>Ngày kết thúc: </i><strong> {{$ngayketthuc}}</strong></td>
        </tr>
    </table>
    
  <br>
  
            <table class="table_1">
                <thead>
                    <tr>
                            <th>STT</th>
                            <th>Tên sản phẩm</th>
                              <th>Đơn giá bán</th>
                             <th>Giá khuyến mãi</th>
                           
                    </tr>
                </thead>
                <tbody>
                     <?php $i=1; 
                     $total=0;
                     ?>
          @foreach($ctkm as $key => $dsctkm)
          <tr  align=center>
            <td> {{$i++}}</td>
            <td>{{$dsctkm->sp_ten}}</td>
             <?php 
                      $date=date("Y-m-d", strtotime($current_day));
        $sp_dongiaban= DB::table('sanpham')->join('gia','sanpham.sp_id','=','gia.sp_id')->where([['gia_ngayapdung','<=',$date],['sanpham.sp_id',$dsctkm->sp_id]])->orderby('gia.gia_ngayapdung','desc')->first();
      ?> 
             @if(empty(!$sp_dongiaban))
           <?php $giamgia=($sp_dongiaban->gia_giatri*$dsctkm->khuyenmai_giatri)/100;
                                            $gia=$sp_dongiaban->gia_giatri-$giamgia;?>
          <td>{{number_format($sp_dongiaban->gia_giatri).' '.''}}</td>
             <td>{{number_format($gia).' '.''}}</td>
        
       @else
         <td>Chưa đến ngày áp dụng</td>
        <td>Chưa hiển thị giá trị khuyến mãi</td>
         @endif
          </tr>
          @endforeach
         
        
          </tbody>
      </table>
      <hr style="color: black; margin-top: 150px;" />

          <table>
                <thead>
                    <tr>
                        <th width="200px">Người lập phiếu</th>
                        <th width="250px"></th>
                        <th width="250px"></th>
                        
                    </tr>
                </thead>
                <tbody>
                
                </tbody>
            
        </table>      
</body>
</html>