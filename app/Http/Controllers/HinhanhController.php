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
use App\mausanpham;
use App\mau;
use App\hinhanh;
session_start();

class HinhanhController extends Controller
{
    
    public function getdanhsach_hinhanh($sp_id){
    	$sp_id=$sp_id;
      $mausanpham=DB::table('mausanpham')->join('sanpham','mausanpham.sp_id','=','sanpham.sp_id')->where([['sanpham.sp_id',$sp_id],['mausanpham.mausp_hienthi',1]])->get();
    	return view('quanly.kho.hinhanh.danhsach_hinhanh',['sp_id'=>$sp_id],['mausanpham'=>$mausanpham]);
    }
     public function postthem_hinhanh(Request $request,$sp_id){
      $get_image=$request->file('file');
        if($get_image){
          foreach ($get_image as $key => $image) {
            # code...
          
            $get_name_image = $image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.'.'.$image->getClientOriginalExtension();
            $image->move('upload/hinhanh',$new_image);
            $hinhanh=new hinhanh();
            $hinhanh->hinhanh_ten=$new_image;
            $hinhanh->hinhanh_hinh=$new_image;
            $hinhanh->sp_id=$sp_id;
            $hinhanh->mausp_id=$request->mausp_id;
            $hinhanh->save();
           
          }

        }
     Session::put('message','Thêm thư viện ảnh thành công');
     return redirect()->back();
    }
     public function postcapnhat_tenhinhanh(Request $request){
     $gal_id=$request->gal_id;
     $gal_text=$request->gal_text;
     $hinhanh=hinhanh::find($gal_id);
     $hinhanh->hinhanh_ten=$gal_text;
     $hinhanh->save();
    }
     public function postxoa_hinhanh(Request $request){
     $gal_id=$request->gal_id;
     $hinhanh=hinhanh::find($gal_id);
     unlink('upload/hinhanh/'.$hinhanh->hinhanh_hinh);
     $hinhanh->delete();
    }
    public function postcapnhat_hinhanh(Request $request){
      $get_image=$request->file('file');
      $gal_id=$request->gal_id;
        if($get_image){
          
           
          
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.'.'.$get_image->getClientOriginalExtension();
            $get_image->move('upload/hinhanh',$new_image);
            $hinhanh=hinhanh::find($gal_id);
            unlink('upload/hinhanh/'.$hinhanh->hinhanh_hinh);
            $hinhanh->hinhanh_hinh=$new_image;
            $hinhanh->save();
           
          

        }
    }
      public function postchon_hinhanh(Request $request){
     $sp_id=$request->sp_id;
     $hinhanh=DB::table('hinhanh')->leftjoin('mausanpham','mausanpham.mausp_id','=','hinhanh.mausp_id')->where('hinhanh.sp_id',$sp_id)->orderby('mausanpham.mausp_id', 'desc')->get();
     $hinhanh_dem=DB::table('hinhanh')->leftjoin('mausanpham','mausanpham.mausp_id','=','hinhanh.mausp_id')->where('hinhanh.sp_id',$sp_id)->orderby('mausanpham.mausp_id', 'desc')->count();
     $output='<form>
                   '.csrf_field().'
     <table class= "table table-bordered table-striped table-hover"   id="dataTables-example"  >
                                        <thead>
                                          <tr>
                                            <th>Thứ tự</th>
                                              <th>Mẫu sản phẩm</th>
                                            <th>Mã hình ảnh</th>
                                            <th>Tên hình ảnh</th>
                                            <th>Hình ảnh</th>
                                            <th>Quản lý</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                         ';
                  if($hinhanh_dem>0){
                    $i=0;
                 
                  foreach ($hinhanh as $key => $dshinhanh) {
                   $i++;
                   $output.=' 
                                        <tr>
                                            <td>'.$i.'</td>';
                                            if($dshinhanh->mausp_ten!='')
                                             $output.='<td>'.$dshinhanh->mausp_ten.'</td>';
                                          else
                                              $output.='<td>HÌNH 360</td>';
                                             $output.='<td>HA'.$dshinhanh->hinhanh_id.'</td>
                                            <td contenteditable class="edit_gal_name" data-gal_id="'.$dshinhanh->hinhanh_id.'">'.$dshinhanh->hinhanh_ten.'</td>
                                            
                                            <td><img src="'.url('upload/hinhanh/'.$dshinhanh->hinhanh_hinh).'" class="img-thumbnail" width="120" height="120"/>
                                            <input type="file" class="file_image" style="width:40%" data-gal_id="'.$dshinhanh->hinhanh_id.'" id="file-'.$dshinhanh->hinhanh_id.'" name="file" accept="image/*"/>

                                            </td>

                                            <td>
                                            <button type="button" data-gal_id="'.$dshinhanh->hinhanh_id.'" class="btn btn-xs btn-danger delete-gallery">Xóa</button>
                                            </td>
                                          </tr> 

                                         
                                      
                   ';
                  }
                    $output.='
                      
                                      </form>
                                       </tbody>
                                      </table>                      
                              ';
                 
                                           
                   }
                   else{
                       $output.='
                      
                                          
                                         
                                      
                   ';
                   }
                   
                   
                   echo $output;
    } 
    
}
