<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Trang extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mslider');
        $this->load->model('frontend/Mcontent');
		$this->load->model('frontend/Mpage');
		$this->load->model('frontend/Mconfiguration');
		$this->load->model('frontend/Msocial');
		$this->load->model('frontend/Mpage');
		$this->load->model('frontend/Mpagetype');
		$this->load->model('frontend/Mconfig');
		$this->load->model('frontend/Mlocation');
        $this->data['com']='trang';
    }
    
	public function index(){
        $aurl= explode('/',uri_string());
		$catlink=$aurl[0];
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mcontent->content_chude_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='tin-tuc');
        $this->data['list']=$this->Mcontent->content_chude($limit,$first);
        $this->data['title']='MacStore - Tin tức';  
		$this->data['view']='index';
		$this->load->view('frontend/layout',$this->data);
	}

	public function detail(){
		$aurl = explode('/', uri_string());
		$link = $aurl[1];
		$row = $this->Mpage->page_detail($link);
		$this->data['row']=$row;
		$this->data['title']=$row['title'];
		$this->data['view']='detail';
		$this->load->view('frontend/layout',$this->data);
	}
}
