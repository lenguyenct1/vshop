<!DOCTYPE html>
<html>
<head>
    <title>DANH SÁCH SẢN PHẨM TỒN KHO</title>
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
<?php 

  $date=date("d-m-Y", strtotime($date));
 
 ?>
   <h1><center>DANH SÁCH SẢN PHẨM TỒN KHO</center></h1>
 <span><center>VSHOP -- Ngày:{{ $date }}</center></span> 
  
   <table width=100%>
        <tr>
            @if($tinhtrang==0)
            <td><i>Tình trạng sản phẩm:</i><strong> (Còn hàng, Sắp hết hàng, Hêt hàng)</strong></td>
            @elseif($tinhtrang==1)
             <td><i>Tình trạng sản phẩm:</i><strong> Còn hàng</strong></td>
            @elseif($tinhtrang==2)
             <td><i>Tình trạng sản phẩm:</i><strong> Sắp hết hàng</strong></td>
            @elseif($tinhtrang==3)
             <td><i>Tình trạng sản phẩm:</i><strong> Hết hàng</strong></td>@endif


           @if($search=='')
            @else
             <td><i>Mức ngưỡng sản phẩm tồn kho:</i><strong> {{$search}}</strong></td>
          @endif
        </tr>
      
          

         
       
         <?php $i=1;  ?>
    </table>
             
            <table  class="table_1">
               <thead>
                <tr>
            <th>STT</th>
            <th>Mã mẫu sản phẩm</th>
            <th>Tên mẫu sản phẩm</th>
            <th>Kho</th>
            <th>Thương hiệu</th>
            <th>Số lượng</th>
          </tr>
              
             
               </thead>
               <tbody>
               
                 @foreach ($data as $key => $value) 
               <tr  align=center>
                  <td>{{$i++}}</td>
             <td>MAUSP00{{$value->mausp_id}}</td>
               <td>{{$value->mausp_ten}}</td>
                  <td>{{$value->kho_ten}}</td>
               <td>{{$value->th_ten}}</td>
                <td> {{$value->mausp_soluong}}</td>
       
          
               @endforeach
                </tbody>
              </table>
 
  
       
    <hr style="color: black; margin-top: 150px;" />
   
</body>
</html>