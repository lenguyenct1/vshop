@extends('admin_banhang')
@section('admin_content')
<?php  $total=0;?>
  <div class="table-agile-info">
  
  <div class="panel panel-default">
    <div class="panel-heading">
    Chi tiết phiếu nhập kho
    </div>
    
    <div class="table-responsive">
                      
      <table class= "table table-bordered table-striped" >
        <thead>
          <tr>
           
            <th>Tên nhân viên lập phiếu</th>
            <th>Kho hàng</th>
            <th>Địa chỉ kho</th>
            <th>Mã phiếu nhập</th>
            <th>Nhà cung cấp</th>
            <th>Ngày nhập kho</th>
           
          </tr>
        </thead>
        <tbody>
        <?php 
            $ngaynhapkho=date("d-m-Y", strtotime($pnk->pnk_ngaynhapkho));
         
          ?>
          <tr>
            <td>{{$pnk->User->name}}</td>
            <td>{{$pnk->khohang->kho_ten}}</td>
            <td>{{$pnk->khohang->kho_diachi}}</td>
            <td>PNK00{{$pnk->pnk_id}}</td>
             <td>{{$pnk->nhacungcap->ncc_ten}}</td>
             <td>{{$ngaynhapkho}}</td>
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
<table class= "table table-bordered table-striped"  >
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
            <?php $i=1; ?>
          @foreach($ctpn as $key => $dsctpn)
          <tr>
            <td> {{$i++}}</td>
            <td>{{$dsctpn->mausp_ten}}</td>
            <td>{{$dsctpn->th_ten}}</td>
            <td>{{$dsctpn->ctpn_soluong}}</td>
            <td>{{number_format($dsctpn->ctpn_dongia,0,',',',')}}</td>
            <td>{{number_format($dsctpn->ctpn_soluong*$dsctpn->ctpn_dongia,0,',',',')}}</td>
            <?php
            $total=$total+($dsctpn->ctpn_soluong*$dsctpn->ctpn_dongia);
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
   <br>
     
      
   @if($pnk->pnk_trangthai==1)
    <a  type="button" name="taopnk" class="btn btn-info" href="{{URL::to('/banhang/tao-ptncc/'.$pnk->pnk_id)}}"> <i class="glyphicon glyphicon-plus"></i>Tạo phiếu trả nhà cung cấp</a>
    <a type="button" name="taosp" class="btn btn-success" href="{{ URL::to('banhang/danhsach-pnk') }}">Trở về</a><br>
    @else
    <a type="button" name="taosp" class="btn btn-success" href="{{ URL::to('banhang/danhsach-pnk') }}">Trở về</a><br>
    <b>Phiếu nhập đã có mẫu sản phẩm hoàn trả nhà cung cấp</b>
    @endif
 
</div>

@endsection