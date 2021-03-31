@extends('admin_banhang')
@section('admin_content')
<?php  $total=0;?>
  <div class="table-agile-info">
  
  <div class="panel panel-default">
    <div class="panel-heading">
    Chi tiết khuyến mãi
    </div>
    
    <div class="table-responsive">
                      
      <table class= "table table-bordered table-striped" >
        <thead>
          <tr>
            <th>Mã khuyến mãi</th>
            <th>Tên nhân viên lập phiếu</th>
            <th>Khuyến mãi tên</th>
            <th>Giá trị khuyến mãi(%)</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày kết thúc</th>
           
          </tr>
        </thead>
        <tbody>
        <?php 
            $ngaybatdau=date("d-m-Y", strtotime($km->khuyenmai_ngaybatdau));
             $ngayketthuc=date("d-m-Y", strtotime($km->khuyenmai_ngayketthuc));
          ?>
          <tr>
            <td>KM00{{$km->khuyenmai_id}}</td>
            <td>{{$km->User->name}}</td>
            <td>{{$km->khuyenmai_ten}}</td>
            <td>{{$km->khuyenmai_giatri}}%</td>
             <td>{{$ngaybatdau}}</td>
             <td>{{$ngayketthuc}}</td>
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
            <th width="10%">STT</th>
            <th >Tên sản phẩm</th>
             <th>Đơn giá bán</th>
              <th>Giá khuyến mãi</th>
          </tr>
        </thead>
        <tbody>
            <?php $i=1; ?>
          @foreach($ctkm as $key => $dsctkm)
          <tr>
            <td> {{$i++}}</td>
            <td>{{$dsctkm->sp_ten}}</td>  
            <?php 
                  $date=date("Y-m-d", strtotime($current_day));
        $sp_dongiaban= DB::table('sanpham')->join('gia','sanpham.sp_id','=','gia.sp_id')->where([['gia_ngayapdung','<=',$date],['sanpham.sp_id',$dsctkm->sp_id]])->orderby('gia.gia_ngayapdung','desc')->first();?>
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
    </div>

<!--      <footer class="panel-footer">
      <div class="row">
        
        <div class="col-sm-4 text-center">
        
        
        </div>
        
  
      </div>
    </footer> -->
  </div>
   <br>
     
      
   <a type="button" name="taosp" class="btn btn-success" href="{{ URL::to('banhang/danhsach-khuyenmai') }}">Trở về</a><br>
 
</div>

@endsection