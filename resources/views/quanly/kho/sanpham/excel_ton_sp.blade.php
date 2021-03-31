<!DOCTYPE html>
<html>
<head>
    <title>DANH SÁCH </title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
 
   <body style="font-size: 10px">
  <?php 

  $date=date("d-m-Y", strtotime($date));
  $i=1;  
 
 ?>
    <div class="row">
        <table border="0" align="center" cellpadding="5" style="border-collapse: collapse;">
           
            <tr>
                <td colspan="6" class="caption" align="center" style="text-align: center; font-size: 20px">
                    <b>DANH SÁCH SẢN PHẨM TỒN</b>
                </td>
            </tr>
           <tr>

                <td colspan="6" class="caption" align="center" style="text-align: center; font-size: 15px">
                   VSHOP -- Ngày:{{ $date }}
                </td>
            </tr>
             
             <tr>
                 @if($tinhtrang==0)
                <td colspan="3" class="caption" align="left" style="text-align: center; font-size: 12px">
              <i>Tình trạng sản phẩm: </i><strong> (Còn hàng, Sắp hết hàng, Hêt hàng)</strong></td>
              @elseif($tinhtrang==1)
                   <td colspan="3" class="caption" align="left" style="text-align: center; font-size: 12px">
              <i>Tình trạng sản phẩm: </i><strong> Còn hàng</strong></td>
               @elseif($tinhtrang==2)
                   <td colspan="3" class="caption" align="left" style="text-align: center; font-size: 12px">
              <i>Tình trạng sản phẩm: </i><strong> Sắp hết hàng</strong></td>
                @elseif($tinhtrang==3)
                     <td colspan="3" class="caption" align="left" style="text-align: center; font-size: 12px">
              <i>Tình trạng sản phẩm: </i><strong> Hêt hàng</strong></td>
                @endif

                @if($search=='')
                @else
                  <td colspan="3" class="caption" align="right" style="text-align: center; font-size: 12px">
              <i>Mức ngưỡng sản phẩm tồn kho: </i><strong>{{$search}}</strong></td>
              @endif
          
               
                  </tr>
               <tr></tr>
          
              <tr style="border: 1px thin #000;">
                  <th style="text-align: center" align="center" valign="middle" width="5">STT</th>
                  <th style="text-align: center" align="center" valign="middle" width="20"> Mã mẫu sản phẩm</th>
                  <th style="text-align: center" align="center" valign="middle" width="40"> Tên mẫu sản phẩm</th> 
               
                  <th style="text-align: center" align="center" valign="middle" width="15">Kho</th>
                  <th style="text-align: center" align="center" valign="middle" width="15" >Thương hiệu</th>
                   <th style="text-align: center" align="center" valign="middle" width="15" >Số lượng</th>
            
               

            </tr>
              
                  @foreach ($data as $key => $value) 
               <tr  align=center>
              <td align="center" valign="middle" width="5">{{$i++}}</td>
             <td align="center" valign="middle" width="20">MAUSP00{{$value->mausp_id}}</td>
               <td align="center" valign="middle" width="40">{{$value->mausp_ten}}</td>
             <td  align="center" valign="middle" width="15"> {{$value->kho_ten}}</td>
               <td  align="center" valign="middle" width="15"> {{$value->th_ten}}</td>
               <td  align="center" valign="middle" width="15">{{$value->mausp_soluong}}</td>
          
          </tr>
          
               @endforeach
                
 </table>

    </div>
</body>


</html>