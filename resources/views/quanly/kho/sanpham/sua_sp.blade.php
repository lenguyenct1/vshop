@extends('admin_banhang')
@section('admin_content')

<style type="text/css">
  .select2 {
width:100%!important;
}
</style>
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Sửa thông tin sản phẩm
                        </header>
                         @if(count($errors)>0)
                        <span class="text-alert">
                            @foreach($errors->all() as $err)
                                {{$err}}<br>
                                @endforeach
                            </span>
                         @endif
                        
                                <div class="panel-body">

                            <div class="position-center">
                                <form role="form" action="{{URL::to('/banhang/sua-sp/'.$sp->sp_id)}}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                             <div class="form-group">
                                    <label for="exampleInputEmail1">Tên sản phẩm</label>
                                    <input type="text" data-validation="length" data-validation-length="min3"  data-validation-error-msg="Làm ơn điền ít nhất 3 ký tự" name="sp_ten" class="form-control" id="exampleInputEmail1" placeholder="Tên sản phẩm" value="{{$sp->sp_ten}}" >
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Hình ảnh</label>
                                    <input type="file" name="sp_hinh" class="form-control" id="exampleInputEmail1" >
                                    <img src="{{URL::to('upload/sanpham/'.$sp->sp_hinh)}}" height="100px" width="100px">
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Đơn giá nhập</label>
                                    <input type="text" data-validation="length" data-validation-length="min6"  data-validation-error-msg="Làm ơn nhập đơn giá nhập sản phẩm" name="sp_dongianhap" class="form-control money" id="spdgn" placeholder="Đơn giá nhập sản phẩm" value="{{$sp->sp_dongianhap}}" >
                                    <div id="dgn"></div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Đơn giá bán</label>
                                     @foreach($gia as $key => $dsgia)
                                    <div class="row" >
                                      <div class="col-md-5 form-group">
                                                               <?php 
                                  $gia_ngayapdung=date("d-m-Y", strtotime($dsgia->gia_ngayapdung));
                               
                                ?>
                                         <input type="text" value="{{$gia_ngayapdung}}" class="form-control alldifferent" readonly="" />
                                         </div>
                                          <div class="col-md-5 form-group">
                                          <input type="text" value="{{number_format($dsgia->gia_giatri).' '.''}}" class="form-control" readonly="" >
                                        </div></div>
                                        @endforeach
                                        <div class="row">

                                         <div class="col-md-2 form-group">
                        <button type="button" name="add" id="add" class="btn btn-success">Thêm</button> 
                            </div></div>
                                     <div id="dongiaban"></div>
                              
                        
                                </div>
                                
                                
                            
               
                                   <div class="form-group">
                                    <label for="exampleInputPassword1">Kho</label>
                                      <select name="kho_id" class="form-control input-sm m-bot15 kho" required>
                                        @foreach($khohang as $key => $dskho)
                                            @if($dskho->kho_id==$sp->kho_id)
                                            <option selected value="{{$dskho->kho_id}}">{{$dskho->kho_ten}}</option>
                                            @else
                                            <option value="{{$dskho->kho_id}}">{{$dskho->kho_ten}}</option>
                                            @endif
                                        @endforeach
                                            
                                    </select>
                                </div>
                                    <div class="form-group">
                                    <label for="exampleInputPassword1">Nhà cung cấp</label>
                                      <select name="ncc_id" class="form-control input-sm m-bot15 ncc" id="ncc_id" required>
                                           <option value="">--Chọn nhà cung cấp--</option>
                                             @foreach($ncc as $key => $dsncc)
                                            @if($dsncc->ncc_id==$sp->ncc_id)
                                            <option selected value="{{$dsncc->ncc_id}}">{{$dsncc->ncc_ten}}</option>
                                            @else
                                             <option value="{{$dsncc->ncc_id}}">{{$dsncc->ncc_ten}}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </div>
                                   <div class="form-group">
                                    <label for="exampleInputPassword1">Thương hiệu</label>
                                      <select name="th_id" class="form-control input-sm m-bot15 th" required>
                                         <option value="">--Chọn Thương hiệu sản phẩm--</option>
                                        @foreach($th as $key => $dsth)
                                            @if($dsth->th_id==$sp->th_id)
                                            <option selected value="{{$dsth->th_id}}">{{$dsth->th_ten}}</option>
                                            @else
                                            <option value="{{$dsth->th_id}}">{{$dsth->th_ten}}</option>
                                            @endif
                                        @endforeach
                                            
                                    </select>
                                </div>
                                     <div class="form-group">
                                    <label for="exampleInputPassword1">Xuất xứ</label>
                                      <select name="xx_id" class="form-control input-sm m-bot15 xx" required>
                                         <option value="">--Chọn xuất xứ sản phẩm--</option>
                                        @foreach($xx as $key => $dsxx)
                                            @if($dsxx->xx_id==$sp->xx_id)
                                            <option selected value="{{$dsxx->xx_id}}">{{$dsxx->xx_ten}}</option>
                                            @else
                                            <option value="{{$dsxx->xx_id}}">{{$dsxx->xx_ten}}</option>
                                            @endif
                                        @endforeach
                                            
                                    </select>
                                </div>
                                <?php 
                                  $tagsArray = explode(',',$sp->sp_mausac);
    foreach($tagsArray as $tag) {

        $tagName = trim($tag, '"');
        $tagsLinksArray[] = $tagName;
    }

    
    $tagsLinks = implode(',', $tagsLinksArray);
                                ?>
                              <div class="form-group">
                                    <label for="exampleInputPassword1">Màu sắc</label>
                                     <input type="text"   class="form-control"   value="{{$tagsLinks}}"  id="tags" name="sp_posttag" >
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Thông số lỹ thuật </label>
                                  <textarea style="resize: none"  data-validation="length" data-validation-length="min5"  data-validation-error-msg="Làm ơn điền ít nhất 5 ký tự" row="8" class="form-control" name="sp_tskt" placeholder="Thông số kỹ thuật"  id="ckeditor1">{{$sp->sp_tskt}}"</textarea>
                                </div>
                               <div class="form-group">
                                    <label for="exampleInputPassword1">Thông tin</label>
                                    <textarea style="resize: none" rows="8" class="form-control"
                               name="sp_thongtin" id="ckeditor" placeholder="Thông tin sản phẩm">{{$sp->sp_thongtin}}</textarea>
                                </div>
                             <input type="submit" name="save" id="save"  class="btn btn-success" value="Lưu và tạo phiếu nhập" formaction="{{URL::to('/banhang/taopnksua-sp/'.$sp->sp_id)}}" />
                                 <button type="submit" name="suasp" class="btn btn-info">Lưu</button>
                         
                               <a type="button" name="taosp" class="btn btn-primary" href="{{ URL::to('banhang/danhsach-sp') }}">Trở về</a><br>
                               
                                </form>
                         

                        </div>
                    </div>
                    </section>

            </div>
        </div>
          <script type="text/javascript">
          $(document).ready(function(){
          $('.money').simpleMoneyFormat();
});


        </script>
        <script type="text/javascript">

       $(document).on('change', '#spdgn', function(){
     
            if(parseInt($(this).val().replace( /,/g, ''))<parseInt(50000)){
            
         $('#dgn').html('<p  style="color:#a94442;font-family:"Roboto",sans-serif; font-size: 100%; font-size:"16px";">Đơn giá nhập phải lớn hơn hoặc bằng 50,000</p>');}
         else{
           $('#dgn').html('');
         }
 });
    </script>
      <script type="text/javascript">
   $(document).ready(function(){
   
 var count = 0;
 $(".alldifferent").change(function() {
  var $this = $(this);
  keyupDelay(function() {
    var val = $this.val();
    $this.attr('value', val);
    if (val != '') {
      // get all inputs with this value and and index greater than 0 ( the duplicates ) setting all to ''
      var $dupes = $('input[value="' + val + '"]:gt(0)').val(''); 
      // if we had to empty any, alert the user
      if ($dupes.length > 0) alert('Bạn đã chọn ngày '+val+' trùng với ngày đã thêm');
    }
  }, 400);// delay, adjust as needed
});


// timer function to be used with keyup
var keyupDelay = (function() {
  var timer = 0;
  return function(callback, ms) {
    clearTimeout(timer);
    timer = setTimeout(callback, ms);
  };
})();
 $(document).on('click', '#add', function(){

  count++;
      
          html = '<div class="row" id="deleterow">'; 
     html += '       <div class="col-md-5 form-group">';
      html += '    <input type="text" data-validation-length="min1"  data-validation-error-msg="Làm ơn chọn ngày áp dụng" data-validation="length" class="date form-control alldifferent" name="gia_ngayapdunght[]" id="datepicker'+count+'"/>';
         html += '    <input type="hidden" data-validation-length="min1"  data-validation-error-msg="Làm ơn chọn ngày áp dụng" data-validation="length" class="date form-control" name="gia_ngayapdung[]" id="gia_ngayapdung'+count+'"/>';
          
                       html += ' </div>';
                                
                        html += ' <div class="col-md-5 form-group"> ';
                            
                         html += '  <input type="text" data-validation="length" data-validation-length="min6"  data-validation-error-msg="Làm ơn nhập đơn giá bán sản phẩm" name="gia_giatri[]" class="form-control money" id="gia_giatri'+count+'" placeholder="Đơn giá bán sản phẩm" ><div id="dgb'+count+'"></div></div>';
             html += ' <div class="col-md-2 form-group">';
                        html += '  <button type="button"  name="remove" id="" class="btn btn-danger remove">Giảm</button> ';
                            html += ' </div></div>';
          
            $('#dongiaban').append(html);
            $('#datepicker1').datepicker({  
            altField  : '#gia_ngayapdung1',
            altFormat : 'yy-mm-dd',
              dateFormat: 'dd-mm-yy',
        });  

   $('#datepicker'+count).datepicker({  
            altField  : '#gia_ngayapdung'+count,
            altFormat : 'yy-mm-dd',
              dateFormat: 'dd-mm-yy',
        }); 
     $.validate({

                  });
     $('.money').simpleMoneyFormat();
         $(document).on('change', '#gia_giatri1', function(){
     
            if(parseInt($(this).val().replace( /,/g, ''))<parseInt(50000)){
            
         $('#dgb'+count).html('<p  style="color:#a94442;font-family:"Roboto",sans-serif; font-size: 100%; font-size:"16px";">Đơn giá bán phải lớn hơn hoặc bằng 50,000</p>');}
         else{
           $('#dgb'+count).html('');
         }
 });  
   $(document).on('change', '#gia_giatri'+count, function(){
     
            if(parseInt($(this).val().replace( /,/g, ''))<parseInt(50000)){
            
         $('#dgb'+count).html('<p  style="color:#a94442;font-family:"Roboto",sans-serif; font-size: 100%; font-size:"16px";">Đơn giá bán phải lớn hơn hoặc bằng 50,000</p>');}
         else{
           $('#dgb'+count).html('');
         }
 }); 
$(".alldifferent").change(function() {
  var $this = $(this);
  keyupDelay(function() {
    var val = $this.val();
    $this.attr('value', val);
    if (val != '') {
      // get all inputs with this value and and index greater than 0 ( the duplicates ) setting all to ''
      var $dupes = $('input[value="' + val + '"]:gt(0)').val(''); 
      // if we had to empty any, alert the user
      if ($dupes.length > 0) alert('Bạn đã chọn ngày'+val+' trùng với ngày đã thêm');
    }
  }, 400);// delay, adjust as needed
});


// timer function to be used with keyup
var keyupDelay = (function() {
  var timer = 0;
  return function(callback, ms) {
    clearTimeout(timer);
    timer = setTimeout(callback, ms);
  };
})();
 });

 $(document).on('click', '.remove', function(){
  count--;
  $(this).closest(".row").remove();
 });
 });

    </script>
<script type="text/javascript">
  $(document).ready(function(){
    $('.ncc').select2({
           
        });
      $('.th').select2({
           
        });
         $('.kho').select2({
           
        });
          $('.xx').select2({
           
        });
    });
</script>
        <script type="text/javascript">
  $(function(){
    var tags = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.whitespace,
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  // url points to a json file that contains an array of country names, see
  // https://github.com/twitter/typeahead.js/blob/gh-pages/data/countries.json
  prefetch: {
    url: "banhang/mausac",
    cache: false
  }
});
    tags.initialize();

$('[name=sp_posttag]').tagsinput({

  typeaheadjs: {

    name: 'post_tag',
   
    source: tags.ttAdapter()
  }
});

  
  })
</script>

@endsection
