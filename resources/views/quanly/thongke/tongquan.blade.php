@extends('admin_banhang')
@section('admin_content')
 
      
      
<style type="text/css">
	.market-update-block h3 {
    color: #fff;
    font-size: 1.75em;
}
</style>
	<section class="wrapper">
		<!-- //market-->
		<div class="market-updates">
		
			<div class="col-md-3 market-update-gd">
				<div class="market-update-block clr-block-2" style="height: 230px;">
					<div class="col-md-4 market-update-right" style="font-size: 50px;  color: white; ">
						<i  class="fa fa-database" ></i>
					</div>
					 <div class="col-md-8 market-update-left">
					 <h4>Số lượng sản phẩm tại cửa hàng</h4>
					<h3> {{$sp}} sản phẩm</h3>
					<p>thời điểm hiện tại</p>
				  </div>
				  <div class="clearfix"> </div>
				</div>
			</div>
		
			<div class="col-md-3 market-update-gd"  >
				<div class="market-update-block clr-block-1" style="height: 230px;">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-users" ></i>
					</div>
					<div class="col-md-8 market-update-left">
					<h4>Số lượng tài khoản người dùng</h4>
						<h3>{{$kh}} người dùng</h3>
						<p>thời điểm hiện tại</p>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
              @if(!$tongtien->isEmpty())
			@foreach($tongtien as $key => $dstt)
			<div class="col-md-3 market-update-gd"  >
				<div class="market-update-block clr-block-3" style="height: 230px;">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-usd"></i>
					</div>
					<div class="col-md-8 market-update-left">
						<h4>Tồng tiền thu được trong ngày</h4>
						<h3>{{number_format($dstt->value).' '.'VNĐ'}}</h3>
						<p>thời điểm hiện tại</p>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
				@endforeach
                @else
                <div class="col-md-3 market-update-gd"  >
                <div class="market-update-block clr-block-3" style="height: 230px;">
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-usd"></i>
                    </div>
                    <div class="col-md-8 market-update-left">
                        <h4>Tồng tiền thu được trong ngày</h4>
                        <h3>{{number_format(0).' '.'VNĐ'}}</h3>
                        <p>thời điểm hiện tại</p>
                    </div>
                  <div class="clearfix"> </div>
                </div>
            </div>
                @endif
                   @if(!$tongtien->isEmpty())
				@foreach($ddh as $key => $dsddh)
			<div class="col-md-3 market-update-gd" >
				<div class="market-update-block clr-block-4" style="height: 230px;">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-shopping-cart" aria-hidden="true"></i>
					</div>
					<div class="col-md-8 market-update-left">
						<h4>Đơn đặt hàng trong ngày</h4>
						<h3>{{$dsddh->value}} đơn đặt hàng</h3>
						<p>thời điểm hiện tại</p>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
		   <div class="clearfix"> </div>
		</div>	
	@endforeach
    @else
    <div class="col-md-3 market-update-gd" >
                <div class="market-update-block clr-block-4" style="height: 230px;">
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    </div>
                    <div class="col-md-8 market-update-left">
                        <h4>Đơn đặt hàng trong ngày</h4>
                        <h3> 0 đơn dặt hàng</h3>
                        <p>thời điểm hiện tại</p>
                    </div>
                  <div class="clearfix"> </div>
                </div>
            </div>
           <div class="clearfix"> </div>
        </div>  
    @endif
		<!-- //market-->
<br/>
    <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading" style="height: fit-content;">
                      Thống kê doanh thu theo thời gian
                        </header>
    
               <div class="panel-body">
                              <form method="post" action="#" id="dynamic_form" enctype="multipart/form-data"> 
                                @csrf
                            <div class="position-center">
                                 <div class="col-sm-5">
                                 <label>Từ ngày: </label>    
                                    <div class="input-group date">
                                        <input type="text" class="date form-control" name="tungaytk" id="tungaytk"/>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    </div>
                                    </div>
                                <div class="col-sm-5">
                                 <label>Đến ngày</label> 
                                      <div class="input-group date">
                                        <input type="text" class="date form-control" name="denngaytk" id="denngaytk"/>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                      </div>
                                    </div>
                                
                                             
                            <br>
                              <div class="col-sm-1" style="margin-bottom:50px">
                                <button type="submit" class="btn btn-primary" id="tk">Xem</button>
                                </div>
                            </div>
                          
                         
                          <br>
                           </form>
                           <div  id="table">
                           
        <!-- //market-->

       

          
                             </div>
                          
                              
                               
                        </div>

                    </section>
                </div>
            </div>
<br/>
    <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading" style="height: fit-content;">
                    Thống kê doanh thu theo thời gian (biểu đồ)
                        </header>
    
               <div class="panel-body">
                              <form method="get" action="#" enctype="multipart/form-data"> 
                                @csrf
                            <div class="position-center">
                                 <div class="col-sm-5">
                                 <label>Từ ngày: </label>    
                                    <div class="input-group date">
                                        <input type="text" class="date form-control" name="tungayddh" id="tungayddh"/>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    </div>
                                    </div>
                                <div class="col-sm-5">
                                 <label>Đến ngày</label> 
                                      <div class="input-group date">
                                        <input type="text" class="date form-control" name="denngayddh" id="denngayddh"/>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                      </div>
                                    </div>
                                
                                             
                            <br>
                              <div class="col-sm-1" style="margin-bottom:50px">
                                <button type="submit" class="btn btn-primary" id="doanhthu">Xem</button>
                                </div>
                            </div>
                          
                         
                          <br>
                           </form>
                           <div class="col-md-12">
            <canvas id="chartOfobjChartDT_TG" style="width: 100%;height: 400px;"></canvas>
        </div>
                          
                              
                               
                        </div>

                    </section>
                </div>
            </div>
<br/>

 <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading" style="height: fit-content;">
                  Thống kê mẫu sản phẩm bán chạy nhất
                        </header>
	
	           <div class="panel-body">
                  
                          
    <div class="col-md-12 mb-5">
        <canvas id="chartOfobjChartSPBC"></canvas>
        <button class="btn btn-primary" id="refresh" >Tải lại dữ liệu</button>
    </div>

                           
                        </div>


                    </section>
                </div>
            </div>
	<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading" style="height: fit-content;">
                    Thống kê mẫu sản phẩm bán chạy nhất theo thời gian
                        </header>
	
	           <div class="panel-body">
                              <form method="get" action="#" enctype="multipart/form-data"> 
                                @csrf
                            <div class="position-center">
                                 <div class="col-sm-5">
                                 <label>Từ ngày: </label>    
                                    <div class="input-group date">
                                        <input type="text" class="date form-control" name="tungay" id="tungay"/>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    </div>
                                    </div>
                                <div class="col-sm-5">
                                 <label>Đến ngày</label> 
                                      <div class="input-group date">
                                        <input type="text" class="date form-control" name="denngay" id="denngay"/>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                      </div>
                                    </div>
                                
                                             
                            <br>
                              <div class="col-sm-1" style="margin-bottom:50px">
                                <button type="submit" class="btn btn-primary" id="thongke">Xem</button>
                                </div>
                            </div>
                          
                         
                          <br>
                           </form>
                           <div class="col-md-12">
            <canvas id="chartOfobjChartSPBC_TG" style="width: 100%;height: 400px;"></canvas>
        </div>
                          
                              
                               
                        </div>

                    </section>
                </div>
            </div>
            <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading" style="height: fit-content;">
                  TỔNG DOANH THU THEO THÁNG TRONG NĂM
                        </header>
	
	           <div class="panel-body">
                          <form method="get" action="#" enctype="multipart/form-data">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="thang">Chọn năm</label>
                    <input type="number" class="form-control" id="thang" name="thang" min="2020">
                </div>
                <button type="submit" class="btn btn-primary" id="btnLapBaoCao">Xem</button>
            </form>
                           

                            <div class="col-md-12">
            <canvas id="chartOfobjChart" style="width: 100%;height: 400px;"></canvas>
        </div>    
                        </div>


                    </section>
                </div>
            </div>
            <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading" style="height: fit-content;">
               Thống kê biến động giá
                        </header>
    
               <div class="panel-body">
                              <form method="get" action="#" enctype="multipart/form-data"> 
                                @csrf
                            <div class="position-center">
                                 <div class="col-sm-5">
                                 <label>Từ ngày: </label>    
                                    <div class="input-group date">
                                        <input type="text" class="date form-control" name="tungaybd" id="tungaybd"/>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    </div>
                                    </div>
                                <div class="col-sm-5">
                                 <label>Đến ngày</label> 
                                      <div class="input-group date">
                                        <input type="text" class="date form-control" name="denngaykt" id="denngaykt"/>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                      </div>
                                    </div>
                                
                                             
                            <br>
                              <div class="col-sm-1" style="margin-bottom:50px">
                                <button type="submit" class="btn btn-primary" id="xemgia">Xem</button>
                                </div>
                            </div>
                          
                         
                          <br>
                           </form>
                           <div class="col-md-12">
            <canvas id="chartOfobjChartgia" style="width: 100%;height: 400px;"></canvas>
        </div>
                          
                              
                               
                        </div>

                    </section>
                </div>
            </div>
</section>
<script type="text/javascript">
     $('#tk').on('click', function(event){
        event.preventDefault();
       var a= $('#dynamic_form').serialize();
      
     //  console.log(a);
          $.ajax({

        type:'post',
        url:'{!!URL::to('banhang/xem-tk')!!}',
       data:$('#dynamic_form').serialize(),
        success:function(data){
           $("#table").html(data);
      
 
         
      
        },
        error:function(){

        }
      });
         
 });
  
</script>
 <script type="text/javascript">
        $('.date').datepicker({  
           format: 'dd-mm-yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
            orientation: 'bottom'
        });  
    </script>
<script>
    // Đăng ký tiền tệ VNĐ
    numeral.register('locale', 'vi', {
        delimiters: {
            thousands: ',',
            decimal: '.'
        },
        abbreviations: {
            thousand: 'k',
            million: 'm',
            billion: 'b',
            trillion: 't'
        },
        ordinal: function(number) {
            return number === 1 ? 'một' : 'không';
        },
        currency: {
            symbol: 'vnđ'
        }
    });

    // Sử dụng locate vi (Việt nam)
    numeral.locale('vi');
</script>

<!-- Biểu đồ cho tổng doanh thu -->
<script>
    $(document).ready(function() {
        var objChart;
        var $chartOfobjChart = document.getElementById("chartOfobjChart").getContext("2d");

        $("#btnLapBaoCao").click(function(e) {
            e.preventDefault();
            $.ajax({
                url: '{{ route('backend.baocao.donhang.data') }}',
                type: "GET",
                data: {
                    // tuNgay: $('#tuNgay').val(),
                    // denNgay: $('#denNgay').val(),
                    thang: $('#thang').val(),
                },
                success: function(response) {
                    var myLabels = [];
                    var myData = [];
                    $(response.data).each(function() {
                        myLabels.push((this.thoiGian));
                        myData.push(this.tongThanhTien);
                    });
                    myData.push(0); // creates a '0' index on the graph

                    if (typeof $objChart !== "undefined") {
                        $objChart.destroy();
                    }

                    $objChart = new Chart($chartOfobjChart, {
                        // The type of chart we want to create
                        type: "bar",

                        data: {
                            labels: myLabels,
                            datasets: [{
                                data: myData,
                                borderColor: "#007BFF",
                                backgroundColor: "#007BFF",
                                borderWidth: 1
                            }]
                        },

                        // Configuration options go here
                        options: {
                            legend: {
                                display: false
                            },
                            title: {
                                display: true,
                                // text: "Báo cáo đơn hàng"
                                text: "Tổng doanh thu"
                            },
                            scales: {
                                xAxes: [{
                                    barPercentage: 0.6,
                                    scaleLabel: {
                                        display: true,
                                        // labelString: 'Ngày nhận đơn hàng'
                                        labelString: 'Tháng'
                                    }
                                }],
                                yAxes: [{
                                    ticks: {
                                        callback: function(value) {
                                            return numeral(value).format('0,0 $')
                                        }
                                    },
                                    scaleLabel: {
                                        display: true,
                                        labelString: 'Tổng thành tiền'
                                    }
                                }]
                            },
                            tooltips: {
                                callbacks: {
                                    label: function(tooltipItem, data) {
                                        return numeral(tooltipItem.value).format('0,0 $')
                                    }
                                }
                            },
                            responsive: true,
                            maintainAspectRatio: false,
                        }
                    });
                }
            });
        });
    });

</script>
<!-- Biểu đồ cho sp bán chạy theo thời gian -->
<script>
    $(document).ready(function() {
        var objChart;
        var $chartOfobjChartSPBC_TG = document.getElementById("chartOfobjChartSPBC_TG").getContext("2d");

        $("#thongke").click(function(e) {
            e.preventDefault();
            $.ajax({
                url: '{{ route('backend.baocao.donhang.spbanchaytheotg') }}',
                type: "GET",
                data: {
                    tungay: $('#tungay').val(),
                    denngay: $('#denngay').val(),
                },        
                success: function(response) {
                    var myLabels = [];
                    var myData = [];
                    $(response.data).each(function() {
                        myLabels.push((this.Tensanpham));
                        myData.push(this.SoLuong);
                    });
                    myData.push(0); // creates a '0' index on the graph

                    if (typeof $objChart !== "undefined") {
                        $objChart.destroy();
                    }

                    $objChart = new Chart($chartOfobjChartSPBC_TG, {
                        // The type of chart we want to create
                        type: "bar",

                        data: {
                            labels: myLabels,
                            datasets: [{
                                data: myData,
                                borderColor: "#007BFF",
                                backgroundColor: "#007BFF",
                                borderWidth: 1
                            }]
                        },

                        // Configuration options go here
                        options: {
                            legend: {
                                display: false
                            },
                            title: {
                                display: true,
                                text: "Thống kê mẫu sản phẩm bán chạy"
                            },
                            scales: {
                                xAxes: [{
                                    barPercentage: 0.6,
                                    scaleLabel: {
                                        display: true,
                                        labelString: 'Mẫu sản phẩm'
                                    }
                                }],
                                yAxes: [{
                                    scaleLabel: {
                                        display: true,
                                        labelString: 'Số lượng'
                                    }
                                }]
                            },
                            responsive: true,
                            maintainAspectRatio: false,
                        }
                    });
                },
                error:function(res) {
                    alert('Lỗi khi vẽ biểu đồ')
                }
            });
        });
    });

</script>
<!-- Biểu đồ cho sản phẩm bán chạy trong csdl -->
<script>
    $(document).ready(function() {
        var objChart;
        var $chartOfobjChartSPBC = document.getElementById("chartOfobjChartSPBC").getContext("2d");

        $("#refresh").click(function(e) {
            e.preventDefault();
            $.ajax({
                url: '{{ route('backend.baocao.donhang.spbanchay') }}',
                type: "GET",
                
                success: function(response) {
                    var myLabels = [];
                    var myData = [];
                    $(response.data).each(function() {
                        myLabels.push((this.Tensanpham));
                        myData.push(this.SoLuong);
                    });
                    myData.push(0); // creates a '0' index on the graph

                    if (typeof $objChart !== "undefined") {
                        $objChart.destroy();
                    }

                    $objChart = new Chart($chartOfobjChartSPBC, {
                        // The type of chart we want to create
                        type: "bar",

                        data: {
                            labels: myLabels,
                            datasets: [{
                                data: myData,
                                borderColor: "#9ad0f5",
                                backgroundColor: "#3c8dbc",
                                borderWidth: 1
                            }]
                        },

                        // Configuration options go here
                        options: {
                            legend: {
                                display: false
                            },
                            title: {
                                display: true,
                                text: "Thống kê mẫu sản phẩm bán chạy"
                            },
                            scales: {
                                xAxes: [{
                                    barPercentage: 0.6,
                                    scaleLabel: {
                                        display: true,
                                        labelString: 'Mẫu sản phẩm'
                                    }
                                }],
                                yAxes: [{
                                    scaleLabel: {
                                        display: true,
                                        labelString: 'Số lượng'
                                    }
                                }]
                            },
                            
                            responsive: true,
                        }
                    });
                },
                error:function(res) {
                    alert('Lỗi khi vẽ biểu đồ')
                }
            });
        });
    });

</script>



<!-- Biểu đồ cho sp bán chạy theo thời gian -->
<script>
    $(document).ready(function() {
        var objChart;
        var $chartOfobjChartgia = document.getElementById("chartOfobjChartgia").getContext("2d");

        $("#xemgia").click(function(e) {
            e.preventDefault();
            $.ajax({
                url: '{{ route('backend.baocao.donhang.bdgia') }}',
                type: "GET",
                data: {
                    tungaybd: $('#tungaybd').val(),
                    denngaykt: $('#denngaykt').val(),
                },        
                success: function(response) {
                    var myLabels = [];
                    var myData = [];
                    $(response.data).each(function() {
                        myLabels.push((this.Tensanpham));
                    
                        myData.push(this.SoLuong);
                         
                    });
                    myData.push(0); // creates a '0' index on the graph

                    if (typeof $objChart !== "undefined") {
                        $objChart.destroy();
                    }

                    $objChart = new Chart($chartOfobjChartgia, {
                        // The type of chart we want to create
                        type: "line",

                        data: {
                            labels: myLabels,
                            datasets: [{
                                data: myData,
                                borderColor: "#007BFF",
                                backgroundColor: "#007BFF",
                                borderWidth: 1
                            }]
                        },

                        // Configuration options go here
                         options: {
                            legend: {
                                display: false
                            },
                            title: {
                                display: true,
                                text: "Thống kê biến động giá"
                            },
                            scales: {
                                xAxes: [{
                                    barPercentage: 0.6,
                                    scaleLabel: {
                                        display: true,
                                        labelString: 'Ngày áp dụng'
                                    }
                                }],
                                    yAxes: [{
                                    ticks: {
                                        callback: function(value) {
                                            return numeral(value).format('0,0 $')
                                        }
                                    },
                                    scaleLabel: {
                                        display: true,
                                        labelString: 'Giá'
                                    }
                                }]
                            },
                              tooltips: {
                                callbacks: {
                                    label: function(tooltipItem, data) {
                                        return numeral(tooltipItem.value).format('0,0 $')
                                    }
                                }
                            },
                            
                            responsive: true,
                            maintainAspectRatio: false,
                        }
                    });
                },
                error:function(res) {
                    alert('Lỗi khi vẽ biểu đồ')
                }
            });
        });
    });

</script>
<!-- Biểu đồ cho sp bán chạy theo thời gian -->
<script>
    $(document).ready(function() {
        var objChart;
        var $chartOfobjChartgia = document.getElementById("chartOfobjChartDT_TG").getContext("2d");

        $("#doanhthu").click(function(e) {
            e.preventDefault();
            $.ajax({
                url: '{{ route('backend.baocao.donhang.doanhthu') }}',
                type: "GET",
                data: {
                    tungayddh: $('#tungayddh').val(),
                    denngayddh: $('#denngayddh').val(),
                },        
                success: function(response) {
                    var myLabels = [];
                    var myData = [];
                    $(response.data).each(function() {
                        myLabels.push((this.Tensanpham));
                    
                        myData.push(this.SoLuong);
                         
                    });
                    myData.push(0); // creates a '0' index on the graph

                    if (typeof $objChart !== "undefined") {
                        $objChart.destroy();
                    }

                    $objChart = new Chart($chartOfobjChartgia, {
                        // The type of chart we want to create
                        type: "line",

                        data: {
                            labels: myLabels,
                            datasets: [{
                                data: myData,
                                borderColor: "#007BFF",
                                backgroundColor: "#007BFF",
                                borderWidth: 1
                            }]
                        },

                        // Configuration options go here
                         options: {
                            legend: {
                                display: false
                            },
                            title: {
                                display: true,
                                text: "Thống kê doanh thu"
                            },
                            scales: {
                                xAxes: [{
                                    barPercentage: 0.6,
                                    scaleLabel: {
                                        display: true,
                                        labelString: 'Ngày đặt hàng'
                                    }
                                }],
                                    yAxes: [{
                                    ticks: {
                                        callback: function(value) {
                                            return numeral(value).format('0,0 $')
                                        }
                                    },
                                    scaleLabel: {
                                        display: true,
                                        labelString: 'Giá'
                                    }
                                }]
                            },
                            
                             tooltips: {
                                callbacks: {
                                    label: function(tooltipItem, data) {
                                        return numeral(tooltipItem.value).format('0,0 $')
                                    }
                                }
                            },
                            
                            responsive: true,
                            maintainAspectRatio: false,
                        }
                    });
                },
                error:function(res) {
                    alert('Lỗi khi vẽ biểu đồ')
                }
            });
        });
    });

</script>
@endsection