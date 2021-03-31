<!DOCTYPE html>
<html>
<head>
    <title>DANH SÁCH KHUYẾN MÃI</title>
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
$date=date("d-m-Y", strtotime($current_day));
  $ngaybatdau=date("d-m-Y", strtotime($km->khuyenmai_ngaybatdau));
$ngayketthuc=date("d-m-Y", strtotime($km->khuyenmai_ngayketthuc));
 ?>
 <body>
 <table>
    <thead>
        <tr>
            <th colspan="4" style="font-size:20px;text-align:center">
                <strong>DANH SÁCH KHUYẾN MÃI</strong>
            </th>
        </tr>
        <tr>
            <th colspan="4" style="font-size:16px;text-align:center">
          VSHOP -- Ngày xuất danh sách: {{ $date }}
            </th>
        </tr>
    </thead>
    <tbody>
  
        <tr>
        <td colspan="2"> <i>Chương trình khuyến mãi: </i><strong>{{$km->khuyenmai_ten}}</strong></td>
      
        <td  colspan="2" style="text-align:right;"> <i>Giá trị khuyến mãi(%): </i><strong>{{$km->khuyenmai_giatri}}%</strong></td>
        </tr>
        <tr>
        <td colspan="2">  <i>Ngày bắt đầu: </i><strong>{{$ngaybatdau}}</strong></td>
    
        <td  colspan="2" style="text-align:right;"> <i>Ngày kết thúc: </i><strong> {{$ngayketthuc}}</strong></td>
        </tr>
      
        
    </tbody>
</table>
 <table border="1" width=100% >
        <thead>
           <tr>
                <th  style="text-align:center;width:15px">STT</th>
                <th  style="text-align:center;width:35px" >Tên sản phẩm</th>
                  <th  style="text-align:center;width:25px" >Đơn giá bán</th>
                    <th  style="text-align:center;width:25px" >Giá khuyến mãi</th>
             
              
           </tr>
        </thead> 
        <tbody>
          <?php $i=1; 
                     $total=0;
                     ?>
          @foreach($ctkm as $key => $dsctkm)
            <tr  style="border: 1px thin #000" align=center >
                <td style="text-align:center;width:15px">
                   {{$i++}}
                </td>
                <td style="text-align:center;width:35px" >
                   {{$dsctkm->sp_ten}}
                </td>
                <?php 
                    $date=date("Y-m-d", strtotime($current_day));
        $sp_dongiaban= DB::table('sanpham')->join('gia','sanpham.sp_id','=','gia.sp_id')->where([['gia_ngayapdung','<=',$date],['sanpham.sp_id',$dsctkm->sp_id]])->orderby('gia.gia_ngayapdung','desc')->first(); ?> 
           @if(empty(!$sp_dongiaban))
           <?php $giamgia=($sp_dongiaban->gia_giatri*$dsctkm->khuyenmai_giatri)/100;
                                            $gia=$sp_dongiaban->gia_giatri-$giamgia;?>
               <td style="text-align:center;width:25px" >
                  {{number_format($sp_dongiaban->gia_giatri).' '.''}}
                </td>
                 <td style="text-align:center;width:25px" >
                   {{number_format($gia).' '.''}}
                </td>
                @else
                  <td style="text-align:center;width:25px" >
                        Chưa đến ngày áp dụng
                </td>
                 <td style="text-align:center;width:25px" >
                Chưa hiển thị giá trị khuyến mãi
                </td>
                @endif

              
            </tr>
             @endforeach
          

        </tbody>
    </table>
  <table>
             <tr>
                <td colspan="2" class="caption" align="left" style="text-align: center; font-size: 12px">
                 <strong>Người lập phiếu</strong>
                </td>
                 <td colspan="3" class="caption" align="center" style="text-align: center; font-size: 12px">
                 <strong></strong>
                </td>   
                  <td colspan="2" class="caption" align="right" style="text-align: center; font-size: 12px">
               <strong></strong>
                </td>
               
            </tr>
        </table>
    
</body>


</html>