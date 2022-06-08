<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Trangchu extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mproducer');
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mslider');
        $this->load->model('frontend/Mcontenttype');
        $this->load->model('frontend/Mcontent');
        $this->load->model('frontend/Msocial');
        $this->load->model('frontend/Mlocation');
        $this->load->model('frontend/Mpage');
        $this->load->model('frontend/Mpagetype');
        $this->load->model('frontend/Mconfiguration');
        $this->load->model('frontend/Mconfig');
        $this->data['com']='trangchu';
        $this->load->library('date');
        $this->load->library('format');
    }
    
	public function index()
	{
        $this->data['title']='Macstore Hải Phòng - Vua bán lẻ điện thoại di động, máy tính bảng chính hãng';
        $this->data['view']='index';
		$this->load->view('frontend/layout',$this->data);
	}
}
