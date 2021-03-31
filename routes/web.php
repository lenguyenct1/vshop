<?php

use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//TRANG CHU
Route::get('/','TrangchuController@trangchu');
Route::get('/offline','TrangchuController@offline');
Route::get('/timkiem','TrangchuController@timkiem');
Route::get('/autocomplete','TrangchuController@autocomplete');
Route::get('/thuonghieu-sanpham/{th_nhan}','TrangchuController@thuonghieu_sanpham');
Route::get('/chi-tiet-san-pham/{sp_nhan}','TrangchuController@chitietsanpham');
Route::get('/sanpham','TrangchuController@sanpham');
Route::get('/khuyenmai','TrangchuController@khuyenmai');
Route::get('/noibat','TrangchuController@noibat');
Route::get('/hinhanh-mausp','TrangchuController@hinhanh_mausp');
Route::get('/hinhanh-xoay','TrangchuController@hinhanh_xoay');
Route::post('/them-danhgia', 'TrangchuController@postthem_danhgia');
Route::post('/them-binhluan', 'TrangchuController@postthem_binhluan');
//Lienhe
Route::get('/lien-he','LienheController@lien_he');
//Danhmuctin
Route::get('/danhmuc-tintuc/{dmt_nhan}','DanhmuctinController@danhmuc_tintuc');
//Danhmuctin
Route::get('/tintuc/{tintuc_nhan}','TintucController@tintuc');
//Giohang
Route::post('/capnhat-soluong','GiohangController@capnhat_soluong');
Route::post('/them-giohang/{sp_nhan}','GiohangController@them_giohang');
Route::get('/xem-giohang','GiohangController@xem_giohang');
Route::get('/xoa-giohang','GiohangController@xoa_giohang');
Route::get('/xoa-sanpham/{rowId}','GiohangController@xoa_sanpham');
//Thanhtoan
Route::get('/dangnhap-thanhtoan','ThanhtoanController@dangnhap_thanhtoan');
Route::get('/dangxuat-thanhtoan','ThanhtoanController@dangxuat_thanhtoan');
Route::post('/them-khachhang','ThanhtoanController@them_khachhang');
Route::get('/cam-on','ThanhtoanController@cam_on');
Route::get('/lichsu-muahang','ThanhtoanController@lichsu_muahang');
Route::post('/huydonhang','ThanhtoanController@huydonhang');
Route::get('/chi-tiet-lich-su-mua-hang/{ddh_id}','ThanhtoanController@chitiet_lichsu_muahang');
Route::post('/dangnhap-khachhang','ThanhtoanController@dangnhap_khachhang');
Route::get('/thanhtoan','ThanhtoanController@xem_thanhtoan');
Route::post('/xacnhan-dathang','ThanhtoanController@xacnhan_dathang');
Route::get('/thanhtoan-online/{id}','ThanhtoanController@thanhtoan_online');
Route::post('/create','ThanhtoanController@create');
Route::get('/return','ThanhtoanController@return');
Route::get('/taikhoan','ThanhtoanController@taikhoan');
Route::post('/capnhat-taikhoan','ThanhtoanController@capnhat_taikhoan');
Route::post('/doimatkhau','ThanhtoanController@doimatkhau');
//TRANG QUẢN LÝ
//ĐĂNG NHẬP
Route::get('/dangnhap','NhanvienController@getdangnhap');
Route::post('/dangnhap','NhanvienController@postdangnhap');
//ĐĂNG XUẤT
Route::get('/dangxuat','NhanvienController@getdangxuat');
//NHÂN VIÊN BÁN HÀNG
Route::group(['prefix'=>'banhang','middleware'=>'Nhanvien_Login'],function(){
		Route::get('/tongquanbanhang','ThongkeController@xem_tongquanbanhang');
//QUẢN LÝ KHO HÀNG
	//khohang
	Route::get('/danhsach-kho','KhohangController@getdanhsach_kho');
	Route::get('/tao-kho','KhohangController@gettao_kho');
	Route::post('/tao-kho','KhohangController@posttao_kho');
	Route::get('/sua-kho/{kho_id}','KhohangController@getsua_kho');
	Route::post('/sua-kho/{kho_id}','KhohangController@postsua_kho');
	Route::get('/xoa-kho/{kho_id}','KhohangController@getxoa_kho');
	//nhanvien
	Route::get('/danhsach-nv','NhanvienController@getdanhsach_nv');
	Route::get('/tao-nv','NhanvienController@gettao_nv');
	Route::post('/tao-nv','NhanvienController@posttao_nv');
	Route::get('/sua-nv/{nv_id}','NhanvienController@getsua_nv');
	Route::post('/sua-nv/{nv_id}','NhanvienController@postsua_nv');
	Route::get('/xoa-nv/{nv_id}','NhanvienController@getxoa_nv');
	//nhacungcap
	Route::get('/danhsach-ncc','NhacungcapController@getdanhsach_ncc');
	Route::get('/tao-ncc','NhacungcapController@gettao_ncc');
	Route::post('/tao-ncc','NhacungcapController@posttao_ncc');
	Route::get('/sua-ncc/{ncc_id}','NhacungcapController@getsua_ncc');
	Route::post('/sua-ncc/{ncc_id}','NhacungcapController@postsua_ncc');
	Route::get('/xoa-ncc/{ncc_id}','NhacungcapController@getxoa_ncc');
	//thuonghieu
	Route::get('/danhsach-th','ThuonghieuController@getdanhsach_th');
	Route::get('/tao-th','ThuonghieuController@gettao_th');
	Route::post('/tao-th','ThuonghieuController@posttao_th');
	Route::get('/sua-th/{th_id}','ThuonghieuController@getsua_th');
	Route::post('/sua-th/{th_id}','ThuonghieuController@postsua_th');
	Route::get('/xoa-th/{th_id}','ThuonghieuController@getxoa_th');
	Route::get('/khongkichhoat-th/{th_id}','ThuonghieuController@khongkichhoat_th');
	Route::get('/kichhoat-th/{th_id}','ThuonghieuController@kichhoat_th');
	//vanchuyen
	Route::get('/danhsach-vc','VanchuyenController@getdanhsach_vc');
	Route::get('/tao-vc','VanchuyenController@gettao_vc');
	Route::post('/tao-vc','VanchuyenController@posttao_vc');
	Route::get('/sua-vc/{vc_id}','VanchuyenController@getsua_vc');
	Route::post('/sua-vc/{vc_id}','VanchuyenController@postsua_vc');
	Route::get('/xoa-vc/{vc_id}','VanchuyenController@getxoa_vc');
	Route::get('/khongkichhoat-vc/{vc_id}','VanchuyenController@khongkichhoat_vc');
	Route::get('/kichhoat-vc/{vc_id}','VanchuyenController@kichhoat_vc');
	//mau
	Route::get('/danhsach-mau','MauController@getdanhsach_mau');
	Route::get('/tao-mau','MauController@gettao_mau');
	Route::post('/tao-mau','MauController@posttao_mau');
	Route::get('/sua-mau/{mau_id}','MauController@getsua_mau');
	Route::post('/sua-mau/{mau_id}','MauController@postsua_mau');
	Route::get('/xoa-mau/{mau_id}','MauController@getxoa_mau');
	//xuatxu
	Route::get('/danhsach-xx','XuatxuController@getdanhsach_xx');
	Route::get('/tao-xx','XuatxuController@gettao_xx');
	Route::post('/tao-xx','XuatxuController@posttao_xx');
	Route::get('/sua-xx/{xx_id}','XuatxuController@getsua_xx');
	Route::post('/sua-xx/{xx_id}','XuatxuController@postsua_xx');
	Route::get('/xoa-xx/{xx_id}','XuatxuController@getxoa_xx');
	
	//sanpham
	Route::get('/danhsach-sp','SanphamController@getdanhsach_sp');
	Route::get('/mausac','SanphamController@getmausac');
	Route::get('/tao-sp','SanphamController@gettao_sp');
	Route::post('/tao-sp','SanphamController@posttao_sp');
	Route::post('/taopnk-sp','SanphamController@posttaopnk_sp');
	Route::post('/taopnksua-sp/{sp_id}','SanphamController@posttaopnksua_sp');
	Route::get('/sua-sp/{sp_id}','SanphamController@getsua_sp');
	Route::post('/sua-sp/{sp_id}','SanphamController@postsua_sp');
	Route::get('xoa-sp/{sp_id}','SanphamController@getxoa_sp');
	Route::get('/ton-sp','SanphamController@getton_sp');
	Route::post('/pdf-ton-sp', 'SanphamController@pdf_ton_sp');
	Route::post('/excel-ton-sp', 'SanphamController@excel_ton_sp');
    Route::get('/tinhtrang','SanphamController@gettinhtrang');
    Route::get('/khongkichhoat-sp/{sp_id}','SanphamController@khongkichhoat_sp');
	Route::get('/kichhoat-sp/{sp_id}','SanphamController@kichhoat_sp');
	Route::post('/dynamic-field/inserttaosp', 'SanphamController@inserttaosp')->name('dynamic-field.inserttaosp');
	//phieunhapkho
	Route::get('/danhsach-pnk','PhieunhapkhoController@getdanhsach_pnk');
	Route::get('/chitiet-pnk/{pnk_id}','PhieunhapkhoController@getchitiet_pnk');
	Route::get('/tao-pnk','PhieunhapkhoController@gettao_pnk');
	Route::get('/dongia','PhieunhapkhoController@dongia');
	Route::get('/mausanpham','PhieunhapkhoController@mausanpham');
	Route::get('/sanpham','PhieunhapkhoController@sanpham');
	Route::get('/pdf-pnk/{pnk_id}', 'PhieunhapkhoController@pdf_pnk');
	Route::get('/excel-pnk/{pnk_id}', 'PhieunhapkhoController@excel_pnk');
	Route::post('/xem-pnk', 'PhieunhapkhoController@xem_pnk');
	Route::get('/khosp','PhieunhapkhoController@khosp');
    Route::post('/dynamic-field/insert', 'PhieunhapkhoController@insert')->name('dynamic-field.insert');
//phieutrancc
	Route::get('/pdf-ptncc/{ptncc_id}', 'PhieutranhacungcapController@pdf_ptncc');
	Route::get('/tao-ptncc/{pnk_id}','PhieutranhacungcapController@gettao_ptncc');
	Route::post('/dynamic-field/insertncc', 'PhieutranhacungcapController@insertncc')->name('dynamic-field.insertncc');
	Route::get('/danhsach-ptncc','PhieutranhacungcapController@getdanhsach_ptncc');
	Route::get('/excel-ptncc/{ptncc_id}', 'PhieutranhacungcapController@excel_ptncc');
	Route::post('/xem-ptncc', 'PhieutranhacungcapController@xem_ptncc');
	Route::get('/chitiet-ptncc/{ptncc_id}','PhieutranhacungcapController@getchitiet_ptncc');
//baocao nhap-xuat-ton theo ncc
	Route::post('/excel-bcncc', 'BaocaonccController@excel_bcncc');
	Route::get('/tao-bcncc','BaocaonccController@gettao_bcncc');
	Route::post('/xem-bcncc','BaocaonccController@postxem_bcncc');
	Route::post('/pdf-bcncc','BaocaonccController@postpdf_bcncc');
//baocao nhap-xuat theo khách hàng
	Route::post('/excel-bckh', 'BaocaokhController@excel_bckh');
	Route::get('/tao-bckh','BaocaokhController@gettao_bckh');
	Route::post('/xem-bckh','BaocaokhController@postxem_bckh');
	Route::post('/pdf-bckh','BaocaokhController@postpdf_bckh');
	Route::get('/taobaocaokh/timsdt_bc_kh','BaocaokhController@timsdt_bc_kh')->name('taobaocaokh.timsdt_bc_kh');
//baocao ton kho tuc thoi 
	Route::post('/excel-bctk', 'BaocaotkController@excel_bctk');
	Route::get('/tao-bctk','BaocaotkController@gettao_bctk');
	Route::post('/xem-bctk','BaocaotkController@postxem_bctk');
	Route::post('/pdf-bctk','BaocaotkController@postpdf_bctk');
//khachhang 
	Route::get('/danhsach-kh', 'KhachhangController@getdanhsach_kh');
	Route::get('/chitiet-kh/{kh_id}', 'KhachhangController@getchitiet_kh');
	Route::post('/xem-khdh','KhachhangController@postxem_khdh');
	Route::get('/pdf-kh/{kh_id}', 'KhachhangController@pdf_kh');
	Route::get('/excel-kh/{kh_id}', 'KhachhangController@excel_kh');
//thuvienanh
	Route::get('/danhsach-thu-vien-anh/{sp_id}', 'HinhanhController@getdanhsach_hinhanh');
	Route::post('/them-thu-vien-anh/{sp_id}', 'HinhanhController@postthem_hinhanh');
	Route::post('/chon-thu-vien-anh', 'HinhanhController@postchon_hinhanh');
	Route::post('/cap-nhat-ten-hinh-anh', 'HinhanhController@postcapnhat_tenhinhanh');
	Route::post('/xoa-hinh-anh', 'HinhanhController@postxoa_hinhanh');
	Route::post('/cap-nhat-hinh-anh', 'HinhanhController@postcapnhat_hinhanh');
//binhluan
	Route::get('/danhsach-binhluan', 'SanphamController@getdanhsach_binhluan');
	Route::post('/duyet-binhluan', 'SanphamController@postduyet_binhluan');
	Route::post('/phanhoi-binhluan', 'SanphamController@postphanhoi_binhluan');
//dondathang
	Route::get('/danhsach-ddh', 'DondathangController@getdanhsach_ddh');
	Route::post('/duyet-ddh', 'DondathangController@postduyet_ddh');
	Route::get('/chitiet-ddh/{ddh_id}', 'DondathangController@getchitiet_ddh');
	Route::get('/pdf-ddh/{ddh_id}', 'DondathangController@pdf_ddh');
	Route::get('/excel-ddh/{ddh_id}', 'DondathangController@excel_ddh');
	Route::get('/loc-ddh/{ddh_trangthai}', 'DondathangController@loc_ddh');
	Route::post('/xem-ddh', 'DondathangController@xem_ddh');
//khuyenmai
	Route::get('/danhsach-khuyenmai','KhuyenmaiController@getdanhsach_khuyenmai');
	Route::get('/tao-khuyenmai','KhuyenmaiController@gettao_khuyenmai');
	Route::get('/pdf-khuyenmai/{km_id}', 'KhuyenmaiController@pdf_khuyenmai');
	Route::get('/excel-khuyenmai/{km_id}', 'KhuyenmaiController@excel_khuyenmai');
	Route::get('/chitiet-khuyenmai/{km_id}', 'KhuyenmaiController@getchitiet_khuyenmai');
	Route::post('/dynamic-field/insertkm', 'KhuyenmaiController@insertkm')->name('dynamic-field.insertkm');
//thongke
	Route::get('/spbanchaytheotg', 'ThongkeController@donhangSpbanchayTheoTG')->name('backend.baocao.donhang.spbanchaytheotg');
	Route::get('/donhangdata', 'ThongkeController@donhangData')->name('backend.baocao.donhang.data');
	Route::get('/spbanchay', 'ThongkeController@donhangSpbanchay')->name('backend.baocao.donhang.spbanchay');
	Route::get('/bdgia', 'ThongkeController@bdgia')->name('backend.baocao.donhang.bdgia');
	Route::get('/doanhthu', 'ThongkeController@doanhthu')->name('backend.baocao.donhang.doanhthu');
	Route::post('/xem-tk', 'ThongkeController@xem_tk');


//slider
	Route::get('/danhsach-slider','SliderController@getdanhsach_slider');
	Route::get('/tao-slider','SliderController@gettao_slider');
	Route::post('/tao-slider','SliderController@posttao_slider');
	Route::get('/sua-slider/{slider_id}','SliderController@getsua_slider');
	Route::post('/sua-slider/{slider_id}','SliderController@postsua_slider');
	Route::get('/xoa-slider/{slider_id}','SliderController@getxoa_slider');
	Route::get('/khongkichhoat-slider/{slider_id}','SliderController@khongkichhoat_slider');
	Route::get('/kichhoat-slider/{slider_id}','SliderController@kichhoat_slider');


//lienhe
	Route::get('/tao-lienhe','LienheController@gettao_lienhe');
	Route::post('/tao-lienhe','LienheController@posttao_lienhe');
	Route::post('/sua-lienhe/{lienhe_id}','LienheController@postsua_lienhe');
//dmt
	Route::get('/danhsach-dmt','DanhmuctinController@getdanhsach_dmt');
	Route::get('/tao-dmt','DanhmuctinController@gettao_dmt');
	Route::post('/tao-dmt','DanhmuctinController@posttao_dmt');
	Route::get('/sua-dmt/{dmt_id}','DanhmuctinController@getsua_dmt');
	Route::post('/sua-dmt/{dmt_id}','DanhmuctinController@postsua_dmt');
	Route::get('/xoa-dmt/{dmt_id}','DanhmuctinController@getxoa_dmt');
	Route::get('/khongkichhoat-dmt/{dmt_id}','DanhmuctinController@khongkichhoat_dmt');
	Route::get('/kichhoat-dmt/{dmt_id}','DanhmuctinController@kichhoat_dmt');
//tintuc
	Route::get('/danhsach-tintuc','TintucController@getdanhsach_tintuc');
	Route::get('/tao-tintuc','TintucController@gettao_tintuc');
	Route::post('/tao-tintuc','TintucController@posttao_tintuc');
	Route::get('/sua-tintuc/{tintuc_id}','TintucController@getsua_tintuc');
	Route::post('/sua-tintuc/{tintuc_id}','TintucController@postsua_tintuc');
	Route::get('/xoa-tintuc/{tintuc_id}','TintucController@getxoa_tintuc');
	Route::get('/khongkichhoat-tintuc/{tintuc_id}','TintucController@khongkichhoat_tintuc');
	Route::get('/kichhoat-tintuc/{tintuc_id}','TintucController@kichhoat_tintuc');

	});