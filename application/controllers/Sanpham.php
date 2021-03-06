<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sanpham extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mconfiguration');
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mproducer');
        $this->load->model('frontend/Mslider');
        $this->load->model('frontend/Mcontenttype');
        $this->load->model('frontend/Mcontent');
        $this->load->model('frontend/Msocial');
        $this->load->model('frontend/Mlocation');
        $this->load->model('frontend/Mpage');
        $this->load->model('frontend/Mpagetype');
        $this->load->model('frontend/Mconfig');
        $this->data['com']='sanpham';
        $this->load->library('session');
        $this->load->library('phantrang');
    }

    public function livesearch($key){
        $result = $this->Mproduct->livesearch($key);

        if(count($result)){
            echo json_encode($result);
        }else{
            echo json_encode('không tìm thấy kết quả');
        }
    }
    
	public function index(){
        if(isset($_POST['sapxep'])){
            $dksx=$_POST['sapxep'];
            $char = explode('-', $dksx);
            $f=$char[0];
            $od=$char[1];
            $data = array('0' => $f,
                '1' =>$od
            );
            $this->session->set_userdata('sortby', $data);
        }else{
            if($this->session->userdata('sortby')){
                $data = $this->session->userdata('sortby');
                $f=$data[0];
                $od=$data[1];
                $array = array('sortby');
            }else{
                $f='created';
                $od='desc';
            }
        }
        $this->load->library('phantrang');
        $limit=24;
        $current=$this->phantrang->PageCurrent();
        $first=$this->phantrang->PageFirst($limit, $current);
        $total=$this->Mproduct->product_sanpham_count();
        $this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='san-pham');
        $this->data['list']=$this->Mproduct->product_sanpham($limit,$first,$f,$od);
        $this->data['title']='Macstore Hải Phòng - Tất cả sản phẩm';
        $this->data['view']='index';
		//$this->load->view('frontend/layout',$this->data);
        if(isset($_POST['sapxep'])){
            $result=$this->load->view('frontend/components/sanpham/index_order',$this->data,true);
            echo json_encode($result);
        }else{
            $this->load->view('frontend/layout',$this->data);
        }
	}

    public function category(){
        $aurl= explode('/',uri_string());
        $link=$aurl[1];
        $catid=$this->Mcategory->category_id($link);
        $listcat=$this->Mcategory->category_listcat($catid);
        $this->data['categoryname']=$this->Mcategory->category_name($catid);
        if(isset($_POST['sapxep-category'])){
            $dksx=$_POST['sapxep-category'];
            $char = explode('-', $dksx);
            $f=$char[0];
            $od=$char[1];
            $data = array('0' => $f,
                '1' =>$od
            );
            $this->session->set_userdata('sortby-category', $data);
        }else{
            if($this->session->userdata('sortby-category')){
                $data = $this->session->userdata('sortby-category');
                $f=$data[0];
                $od=$data[1];
                $array = array('sortby');
            }else{
                $f='created';
                $od='desc';
            }
        }
        $this->load->library('phantrang');
        $limit=24;
        $current=$this->phantrang->PageCurrent();
        $first=$this->phantrang->PageFirst($limit, $current);
        $total=$this->Mproduct->product_chude_count($listcat);
        $this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='san-pham/'.$link);
        $li=$this->Mproduct->product_listcat_limit($listcat, $limit,$first,$f,$od);
        $this->data['list']=$li;
        $this->data['title']='Macstore Hải Phòng - Sản phẩm theo từng danh mục';  
        $this->data['view']='category';
        //$this->load->view('frontend/layout',$this->data);
        if(isset($_POST['sapxep-category'])){
            echo($_POST['sapxep-category']);
            $result=$this->load->view('frontend/components/sanpham/index_order',$this->data,true);
            echo json_encode($result);
        }else{
            $this->load->view('frontend/layout',$this->data);
        }
    }
    public function detail($link){   
        $row = $this->Mproduct->product_detail($link);
        $this->data['row']=$row;
        $this->data['title']='MacStore - '.$row['name'];  
        $this->data['view']='detail';
        $this->load->view('frontend/layout',$this->data);
    }
    
    public function addcart(){
        $this->load->library('session');
        $id=$_POST['id'];
        $item = $_POST; 

        //Lưu vào session
        if($this->session->userdata('cart')){
            $cart=$this->session->userdata('cart');
            
            if(array_key_exists($id, $cart)){
                $cart[$id] = $item;
            }else{
                $cart[$id] = $item;
            }
        }else{
            $cart[$id]=$item;//chưa có session
        }
        $this->session->set_userdata('cart',$cart);
        //Thống kê số lượng & trả về
        echo json_encode( $cart );
    }

    public function update(){
        $this->load->library('session');
        $id=$_POST['id'];
        if($this->session->userdata('cart')){
            $cart=$this->session->userdata('cart');
            if(array_key_exists($id, $cart)){
                $cart[$id]=(int)($_POST['sl']);
            }
        }
        $this->session->set_userdata('cart',$cart);
        echo json_encode( $cart );
    }

    public function remove(){
        $this->load->library('session');
        $id=$_POST['id'];
        if($this->session->userdata('cart')){
            $cart=$this->session->userdata('cart');
            if($cart[$id]){
                //$cart[$id]=0;
                unset($cart[$id]);
            }
        }
        $this->session->set_userdata('cart',$cart);
        echo json_encode( $cart );
    
    }
}
