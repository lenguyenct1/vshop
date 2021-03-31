<?php

namespace App\Http\Controllers;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Auth;
use Illuminate\Support\Facades\Redirect;
use App\thuonghieu;
use App\khohang;
use App\sanpham;
use App\nhacungcap;
use App\hinhanh;
use App\binhluan;
use App\phanhoi;
use App\mau;
use App\khuyenmai;
use App\phieunhapkho;
use App\chitietphieunhap;
use Barryvdh\DomPDF\Facade as PDF;
use App\Exports\Khuyenmai_Export;
use Maatwebsite\Excel\Facades\Excel;
use Carbon\Carbon;
use DateTime;
use App\mausanpham;
use App\khachhang;
use App\chitietdathang;
use App\dondathang;
use Validator;
use File;
session_start();

class ThongkeController extends Controller
{
     public function xem_tongquanbanhang(){
         $kh = DB::table('khachhang')->count();
      $sp=DB::table('sanpham')->count();
        $range = \Carbon\Carbon::now();
      $ddh = DB::table('dondathang')
    ->where('ddh_ngaylap', '>=', $range)
    ->groupBy('date')
    ->orderBy('date', 'ASC')
    ->get([
      DB::raw('Date(ddh_ngaylap) as date'),
      DB::raw('COUNT(*) as value')
    ]);
    $tongtien = DB::table('chitietdathang')
    ->join('dondathang','dondathang.ddh_id','=','chitietdathang.ddh_id')
    ->where([['dondathang.ddh_ngaylap', '>=', $range],['dondathang.ddh_trangthai','<>','4']])
    ->groupBy('date')
    ->orderBy('date', 'ASC')
    ->get([
      DB::raw('Date(dondathang.ddh_ngaylap) as date'),
      DB::raw('SUM(	ctdh_soluong*ctdh_dongia) as value')
    ]);

    	return view('quanly.thongke.tongquan')->with('tongtien',$tongtien)->with('ddh',$ddh)->with('kh',$kh)->with('sp',$sp);
    	
               
    }


      public function donhangSpbanchayTheoTG(Request $request)
    {
        $parameter = [
            'tungay' => date("Y-m-d", strtotime($request->tungay)),
            'denngay' => date("Y-m-d", strtotime($request->denngay)),
        ];
        // dd($parameter);
        $data = DB::select('
            SELECT *
            FROM (
                select mausp.mausp_ten as Tensanpham, sum(ctdh.ctdh_soLuong) as SoLuong
                from mausanpham mausp
                join chitietdathang ctdh on mausp.mausp_id = ctdh.mausp_id
                JOIN dondathang ddh ON ctdh.ddh_id = ddh.ddh_id
                WHERE ddh.ddh_ngaylap BETWEEN :tungay AND :denngay
                AND ddh.ddh_trangthai <> 4
                group by ctdh.mausp_id, mausp.mausp_ten
            ) AS tmp
            order by tmp.SoLuong DESC
            LIMIT 5
        ', $parameter);

       //  dd($data);

        return response()->json(array(
            'code'  => 200,
            'data' => $data,
        ));
    }


        /**
     * Action AJAX get data cho báo cáo Đơn hàng
     */
    public function donhangData(Request $request)
    {
        $parameter = [
            'thang' =>$request->thang,
        ];
        // dd($parameter);
        $data = DB::select('
            SELECT month(ddh.ddh_ngaylap) AS thoiGian, SUM(vc.vc_chiphi + ctdh.ctdh_soLuong * ctdh.ctdh_dongia) as tongThanhTien
            FROM dondathang ddh
            JOIN vanchuyen vc ON vc.vc_id = ddh.vc_id
            JOIN chitietdathang ctdh ON ddh.ddh_id = ctdh.ddh_id
            WHERE year(ddh.ddh_ngaylap) = :thang
            AND ddh.ddh_trangthai <> 4
            GROUP BY month(ddh.ddh_ngaylap)
        ', $parameter);

        return response()->json(array(
            'code'  => 200,
            'data' => $data,
        ));
    }

    public function donhangSpbanchay(Request $request)
    {
        $parameter = [
            'Tensanpham' => $request->Tensanpham,
            'SoLuong' => $request->SoLuong,
        ];
         //dd($parameter);
        $data = DB::select('
            SELECT *
            FROM (
                select mausp.mausp_ten as Tensanpham, sum(ctdh.ctdh_soLuong) as SoLuong
                from mausanpham mausp
                join chitietdathang ctdh on mausp.mausp_id = ctdh.mausp_id
                JOIN dondathang ddh ON ctdh.ddh_id = ddh.ddh_id
                WHERE ddh.ddh_trangthai <> 4
                group by ctdh.mausp_id, mausp.mausp_ten    
            ) AS tmp
            order by tmp.SoLuong DESC
            LIMIT 5
        ', $parameter);

        //dd($data);

        return response()->json(array(
            'code'  => 200,
            'data' => $data,
        ));
    }



      public function bdgia(Request $request)
    {
        $parameter = [
            'tungaybd' => date("Y-m-d", strtotime($request->tungaybd)),
            'denngaykt' => date("Y-m-d", strtotime($request->denngaykt)),
        ];
        // dd($parameter);
        $data = DB::select('
            SELECT  bdg.gia_ngayapdung as Tensanpham, bdg.gia_giatri as SoLuong
            FROM gia bdg
            WHERE bdg.gia_ngayapdung BETWEEN :tungaybd AND :denngaykt
            order by bdg.gia_ngayapdung ASC
              
          
        ', $parameter);

       // dd($data);

        return response()->json(array(
            'code'  => 200,
            'data' => $data,
        ));
    }

   public function doanhthu(Request $request)
    {
         $denngayddh = date('Y-m-d', strtotime($request->denngayddh. ' + 1 days'));
        $parameter = [
            'tungayddh' => date("Y-m-d", strtotime($request->tungayddh)),
            'denngayddh' => date("Y-m-d", strtotime($denngayddh)),
        ];
       // dd($parameter);
        $data = DB::select('
            SELECT  Date(ddh.ddh_ngaylap) as Tensanpham, sum(ddh.ddh_tong) as SoLuong
            FROM dondathang ddh
            WHERE ddh.ddh_ngaylap BETWEEN :tungayddh AND :denngayddh
            AND ddh.ddh_trangthai <> 4
            group by Date(ddh.ddh_ngaylap)
            order by ddh.ddh_ngaylap ASC
              
          
        ', $parameter);

      //  dd($data);

        return response()->json(array(
            'code'  => 200,
            'data' => $data,
        ));
    }

     public function xem_tk(Request $request){
      $from=date("Y-m-d", strtotime($request->tungaytk));
       $to=date("Y-m-d", strtotime($request->denngaytk));
        $to1 = date('Y-m-d', strtotime($to. ' + 1 days'));
       if($from>$to ||$request->tungaytk==''||$request->denngaytk==''){
  echo "<input  style='color:red;' type='text' id='check' value='Ngày không hợp lệ' readonly='' class='form-control'>";
}
else{
    $total_von=0;
    $total_lai=0;
     $total_pnk=0;
      $total_ptncc=0;
       $total_ddh=0;
  $pnk=DB::table('phieunhapkho')
               ->whereBetween('phieunhapkho.pnk_ngaynhapkho', [$from,$to])->get();
    $ptncc=DB::table('phieutrancc')
               ->whereBetween('phieutrancc.ptncc_ngaylap', [$from,$to])->get();

        $ddh=DB::table('dondathang')
        ->whereBetween('dondathang.ddh_ngaylap', [$from,$to1])->get();

               foreach ($pnk as $key => $dspnk) {
                   $total_pnk=$total_pnk+$dspnk->pnk_tong;
               }
                foreach ($ptncc as $key => $dsptncc) {
                   $total_ptncc=$total_ptncc+$dsptncc->ptncc_tong;
               }
               foreach ($ddh as $key => $dsddh) {
                    if($dsddh->ddh_trangthai!=4){
           $total_ddh=$total_ddh+$dsddh->ddh_tong;
         }
               }

               $total_von=$total_pnk-$total_ptncc;
           
                $total_lai=$total_ddh-$total_von;
                if($total_lai<0){
                  $total_lai=0;
                }

                

   $output='  
           <div class="market-updates">
             
          <div class="col-md-4 market-update-gd"  >
                <div class="market-update-block clr-block-2" style="height: 230px;">
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-usd"></i>
                    </div>
                    <div class="col-md-8 market-update-left">
                        <h4>Tổng tiền vốn</h4>
                        <h3 >'.number_format($total_von,0,',',',').' VNĐ</h3>
                       
                    </div>
                  <div class="clearfix"> </div>
                </div>
            </div>
              <div class="col-md-4 market-update-gd"  >
                <div class="market-update-block clr-block-1" style="height: 230px;">
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-usd"></i>
                    </div>
                    <div class="col-md-8 market-update-left">
                        <h4>Doanh thu</h4>
                        <h3 s>'.number_format($total_ddh,0,',',',').' VNĐ</h3>
                       
                    </div>
                  <div class="clearfix"> </div>
                </div>
            </div>
              <div class="col-md-4 market-update-gd"  >
                <div class="market-update-block clr-block-3" style="height: 230px;">
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-usd"></i>
                    </div>
                    <div class="col-md-8 market-update-left">
                        <h4>Lợi nhuận</h4>
                        <h3 >'.number_format($total_lai,0,',',',').' VNĐ</h3>
                       
                    </div>
                  <div class="clearfix"> </div>
                </div>
            </div>        
        </div>
   ';

                 return $output;
          }
        
   
  

}


}
