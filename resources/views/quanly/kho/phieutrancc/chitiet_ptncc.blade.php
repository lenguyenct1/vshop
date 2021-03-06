@extends('admin_banhang')
@section('admin_content')
<?php  $total=0; $i=1;?>
  <div class="table-agile-info">
  
  <div class="panel panel-default">
    <div class="panel-heading">
    Chi tiết phiếu trả nhà cung cấp 
    </div>
    
    <div class="table-responsive">
                      
      <table class= "table table-bordered table-striped" >
        <thead>
          <tr>
           
            <th>Mã phiếu trả nhà cung cấp</th>
             <th>Nhà cung cấp</th>
             <th>Tạo bởi phiếu nhập</th>
            <th>Nhân viên tạo phiếu</th>
            <th>Ngày lập</th>
           
           
          </tr>
        </thead>
        <tbody>
        
          <tr>
             <?php 
            $ngaylap=date("d-m-Y", strtotime($ptncc->ptncc_ngaylap));
         
          ?>
            <td>PTNCC00{{$ptncc->ptncc_id}}</td>
            <td>{{$ptncc->nhacungcap->ncc_ten}}</td>
            <td>PNK00{{$ptncc->pnk_id}}</td>
             <td>{{$ptncc->User->name}}</td>
            <td>{{$ngaylap}}</td>
          </tr>
     
        </tbody>
      </table>

    </div>
   
  </div>
</div>
<br>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
     
    </div>
  
                         @if(session('thongbao'))
                            <span class="text-alert">
                                {{session('thongbao')}}
                            </span>
                        @endif                    
    <div class="table-responsive">
<table class= "table table-bordered table-striped" >
        <thead>
          <tr>
            <th>STT</th>
            <th>Tên mẫu sản phẩm</th>
             <th>Thương hiệu</th>
            <th>Số lượng</th>
            <th width="12%">Đơn giá</th>
            <th>Thành tiền</th>
           
         
          </tr>
        </thead>
        <tbody>
          @foreach($ctncc as $key => $dsctptncc)
          <tr>
            <td>{{$i++}}</td>
            <td>{{$dsctptncc->mausp_ten}}</td>
            <td>{{$dsctptncc->th_ten}}</td>
            <td>{{$dsctptncc->ctncc_soluong}}</td>
            <td>{{number_format($dsctptncc->ctncc_dongia,0,',',',') }}</td>
            <td>{{number_format($dsctptncc->ctncc_soluong*$dsctptncc->ctncc_dongia,0,',',',')}}</td>
            <?php
            $total=$total+($dsctptncc->ctncc_soluong*$dsctptncc->ctncc_dongia);
             ?>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>

     <footer class="panel-footer">
      <div class="row">
        
        <div class="col-sm-4 text-center">
          <small class="text-muted inline m-t-sm m-b-sm" style="font-size: 20px;"><b>Tổng Tiền:</b> </small>
          
          <small style="font-size: 20px;">{{number_format($total).' '.'VNĐ'}} </small>
        
        </div>
        
  
      </div>
      
    </footer>
  </div>
   <a type="button" name="taosp" class="btn btn-success" href="{{ URL::to('banhang/danhsach-ptncc') }}">Trở về</a><br>
</div>
 

@endsection