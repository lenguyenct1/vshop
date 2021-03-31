@extends('admin_banhang')
@section('admin_content')
    <style type="text/css">
      ul.list_rep li{
        list-style-type: decimal;
        color: blue;
        margin:5px 40px;
      }
    </style>
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách bình luận chờ duyệt
    </div>
    <div id="notify_comment"></div>
            
                         @if(session('thongbao'))
                            <span class="text-alert">
                                {{session('thongbao')}}
                            </span>
                        @endif
    <div class="table-responsive">
<table   class= "table table-bordered table-striped table-hover"   id="dataTables-example">
        <thead>
          <tr>
           
           <th>Khách hàng</th>
            <th>Bình luận</th>
            <th>Ngày gửi</th>
            <th style="width: 30%;">Sản phẩm</th>
            <th>Duyệt</th>   
          </tr>
        </thead>
        <tbody>
          
          @foreach($binhluan as $key => $dsbl)
          <?php   $ngay=date("d-m-Y H:i:s", strtotime($dsbl->bl_ngay));?>
          <tr>
          
            <td>{{$dsbl->khachhang->kh_ten }}</td>
            <td>{{$dsbl->bl_noidung}}
              <ul class="list_rep">
                 @foreach($phanhoi as $key => $dsph)
                 @if($dsph->bl_id==$dsbl->bl_id)
                  <?php  
           $user=DB::table('nhanvien')->where('id',$dsph->id)->first();?>
                 <li>Trả lời: {{$dsph->ph_noidung}} ({{$user->name}})</li>
                 @endif
                 @endforeach
              </ul>
                 @if($dsbl->bl_trangthai==0)
                   @if(isset(Auth::user()->name))
                           
                               <input type="hidden" id="nv_id" name="nv_id" value="{{Auth::user()->id}}" >
                              @endif
              <br/><textarea class="form-control reply_comment_{{$dsbl->bl_id}}" row="5"></textarea>
              <br/><button class="btn btn-default btn-xs btn-reply-comment" data-comment_id="{{$dsbl->bl_id}}">Trả lời bình luận</button>
                @endif
            </td>
            <td>{{$ngay}}</td>
              @if($dsbl->sanpham->sp_soluong>0 && $dsbl->sanpham->sp_hienthi==0)
          <td><a href="{{url('/chi-tiet-san-pham/'.$dsbl->sanpham->sp_nhan)}}" target="_blank">{{$dsbl->sanpham->sp_ten }}</a>
          <?php 
             $danhgia=DB::table('danhgia')->where('sp_id',$dsbl->sanpham->sp_id)->avg('dg_danhgia');
        $dgc=DB::table('danhgia')->where('sp_id',$dsbl->sanpham->sp_id)->count();
        $danhgia=round($danhgia);
          ?>
              <ul class="list-inline rating" title="Average Rating">
                    @for($count=1;$count<=5;$count++)
                      @php
                      if($count<=$danhgia){
                      $color='color:#ffcc00;';
                    }
                    else{
                    $color='color:#ccc;';
                  }
                      @endphp
                    
                    <li title="đánh giá sao"
                      id="{{$dsbl->sanpham->sp_id}}-{{$count}}"
                      data-index="{{$count}}"
                      data-sp_id="{{$dsbl->sanpham->sp_id}}"
                      data-rating="{{$danhgia}}"
                      class="rating"
                      style="cursor: pointer;{{$color}} font-size: 30px;">
                      &#9733;
                    </li>
                    @endfor
                    <h4 style="font-size: inherit;">{{$danhgia}} Sao ({{$dgc}} lượt đánh giá)</h4>
                  </ul>
                  </td>
              @else
                <td>{{$dsbl->sanpham->sp_ten }}
                 <?php 
             $danhgia=DB::table('danhgia')->where('sp_id',$dsbl->sanpham->sp_id)->avg('dg_danhgia');
        $dgc=DB::table('danhgia')->where('sp_id',$dsbl->sanpham->sp_id)->count();
        $danhgia=round($danhgia);
          ?>
                 <ul class="list-inline rating" title="Average Rating">
                    @for($count=1;$count<=5;$count++)
                      @php
                      if($count<=$danhgia){
                      $color='color:#ffcc00;';
                    }
                    else{
                    $color='color:#ccc;';
                  }
                      @endphp
                    
                    <li title="đánh giá sao"
                      id="{{$dsbl->sanpham->sp_id}}-{{$count}}"
                      data-index="{{$count}}"
                      data-sp_id="{{$dsbl->sanpham->sp_id}}"
                      data-rating="{{$danhgia}}"
                      class="rating"
                      style="cursor: pointer;{{$color}} font-size: 30px;">
                      &#9733;
                    </li>
                    @endfor
                    <h4 style="font-size: inherit;">{{$danhgia}} Sao ({{$dgc}} lượt đánh giá)</h4>
                  </ul></td>
              @endif
            
          
             <td>
              @if($dsbl->bl_trangthai==1)
              <input type="button" data-comment_status="0" data-comment_id="{{$dsbl->bl_id}}" id="{{$dsbl->sp_id}}" class="btn btn-primary btn-xs comment_duyet_btn" value="Duyệt" title="Duyệt">
              @else
              <input type="button" data-comment_status="1" data-comment_id="{{$dsbl->bl_id}}" id="{{$dsbl->sp_id}}" class="btn btn-danger btn-xs comment_duyet_btn" value="Bỏ Duyệt" title="Bỏ duyệt" >
              @endif
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
    
  </div>
</div>
<script type="text/javascript">
  $('.comment_duyet_btn').click(function(){
    var bl_trangthai=$(this).data('comment_status');
    var bl_id=$(this).data('comment_id');
    var sp_id=$(this).attr('id');
    if(bl_trangthai==0){
      var alert='Thay đổi thành duyệt thành công';
    }
    else{
      var alert='Thay đổi thành không duyệt thành công';
    }
   $.ajax({
                url : '{{url('banhang/duyet-binhluan')}}',
                method: 'POST',
                headers:{
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data:{bl_trangthai:bl_trangthai,bl_id:bl_id,sp_id:sp_id},
                success:function(data){
                   location.reload();
                $('#notify_comment').html('<span class="text text-alert">'+alert+'</span>');
                }
            });
  });
  $('.btn-reply-comment').click(function(){
    var bl_id=$(this).data('comment_id');
    var ph_noidung=$('.reply_comment_'+bl_id).val();
    var nv_id=$('#nv_id').val();
 
   $.ajax({
                url : '{{url('banhang/phanhoi-binhluan')}}',
                method: 'POST',
                headers:{
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data:{ph_noidung:ph_noidung,bl_id:bl_id,nv_id:nv_id},
                success:function(data){
                $('.reply_comment'+bl_id).val('');
                location.reload();
                $('#notify_comment').html('<span class="text text-alert">Trả lời bình luận thành công</span>');
                }
            });
  });
</script>
<script>
    $(document).ready(function() {
                $('#dataTables-example').DataTable({
                    responsive: true,
                    order: [
                        [0, 'desc']
                    ],
                   
                    'language': {
                        'info': 'Hiển thị _START_ đến _END_ của _TOTAL_ danh sách',
                        'lengthMenu': "Hiển thị _MENU_ danh sách",
                        "emptyTable": "Không có dữ liệu trong bảng",
                        "paginate": {
                            "previous": "Trước",
                            "next": "Sau",
                            "infoEmpty": "Không có dữ liệu"

                        },
                        "search": "Lọc / Tìm kiếm:"
                    },
                });
            });
    </script>
@endsection