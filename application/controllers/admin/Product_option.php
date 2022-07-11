<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product_option extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('backend/Mproduct_option');
		$this->load->model('backend/Mproduct');
        $this->load->model('backend/Mcategory');
        $this->load->model('backend/Muser');
        $this->load->model('backend/Mproducer');
        $this->load->model('backend/Morderdetail');
		$this->load->model('backend/Mproduct_instance');
		if(!$this->session->userdata('sessionGreen')){
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionGreen');
		$this->data['com']='product_option';
	}

	public function index(){
		$this->load->library('phantrang');
		$this->load->library('session');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mproduct_option->product_option_sanpham_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/Product_option');
		$this->data['list']=$this->Mproduct_option->product_option_sanpham($limit,$first);
		$this->data['view']='index';
		$this->data['title']='Danh mục sản phẩm';
		$this->load->view('backend/layout', $this->data);
	}

	public function insert(){
		// print_r($_POST);die();
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->library('alias');
		$this->form_validation->set_rules('product_id', 'Tên sản phẩm', 'required');
		if ($this->form_validation->run() == TRUE){
			$mydata= array(

				'lb1'=>$_POST['lb1'],
				'op1'=>$_POST['op1'],

				'lb2'=>$_POST['lb2'],
				'op2'=>$_POST['op2'],

				'lb3'=>$_POST['lb3'],
				'op3'=>$_POST['op3'],

				'lb4'=>$_POST['lb4'],
				'op4'=>$_POST['op4'],

				'lb5'=>$_POST['lb5'],
				'op5'=>$_POST['op5'],

				'lb6'=>$_POST['lb6'],
				'op6'=>$_POST['op6'],

				'price'=>$_POST['price'],
				'sale'=>$_POST['sale'],
				'price_sale'=>$_POST['price_sale'],
			);
			

			//print_r($mydata); die();
			$id_option = $this->Mproduct_option->product_option_insert($mydata);

			$option = array(
				'id_product' =>$_POST['product_id'],
				'id_option' =>$id_option 
			);

			$this->Mproduct_instance->product_instance_insert($option);

			$this->session->set_flashdata('success', 'Thêm option cho sản phẩm thành công');
			redirect('admin/product_option','refresh');
		}else{
			$this->data['view']='insert';
			$this->data['title']='Thêm mới option cho sản phẩm mới';
        	$this->load->view('backend/layout', $this->data);
		}
	}

	function check(){
		$giaban= $this->input->post('price_buy');
		$giagoc= $this->input->post('price_root');
		if($giaban>$giagoc){
			$this->form_validation->set_message(__FUNCTION__,'Bạn phải nhập giá bán nhỏ hơn hoặc bằng giá gốc');
			return FALSE;
		}else{
			return true;
		}
	}

	public function update($id, $instance){
		// echo $instance; die();
		$this->data['row']=$this->Mproduct_option->product_option_detail($id);
		$this->data['instance'] = $instance;
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->library('alias');
		$this->form_validation->set_rules('product_id', 'Tên sản phẩm', 'required');
		// $this->form_validation->set_rules('catid', 'Loại sản phẩm', 'required');
		// $this->form_validation->set_rules('producer', 'Nhà cung cấp', 'required');
		// $this->form_validation->set_rules('price_buy','Giá bán','required|callback_check');
		if ($this->form_validation->run() == TRUE){
			$mydata= array(

				'lb1'=>$_POST['lb1'],
				'op1'=>$_POST['op1'],

				'lb2'=>$_POST['lb2'],
				'op2'=>$_POST['op2'],

				'lb3'=>$_POST['lb3'],
				'op3'=>$_POST['op3'],

				'lb4'=>$_POST['lb4'],
				'op4'=>$_POST['op4'],

				'lb5'=>$_POST['lb5'],
				'op5'=>$_POST['op5'],

				'lb6'=>$_POST['lb6'],
				'op6'=>$_POST['op6'],

				'price'=>$_POST['price'],
				'sale'=>$_POST['sale'],
				'price_sale'=>$_POST['price_sale'],
			);
			$this->Mproduct_option->product_option_update($mydata, $id);

			$option = array(
				'id_product' =>$_POST['product_id'],
				'id_option' =>$id 
			);

			print_r($option); die();

			$this->Mproduct_option->product_instance_update($option, $instance);

			$this->session->set_flashdata('success', 'Cập nhật option sản phẩm thành công');
			redirect('admin/product_option','refresh');
		} 
		$this->data['view']='update';
		$this->data['title']='Cập nhật sản phẩm';
		$this->load->view('backend/layout', $this->data);
	}

	public function status($id){
		$row=$this->Mproduct_option->product_option_detail($id);
		$status=($row['status']==1)?0:1;
		$mydata= array('status' => $status,'modified_by'=>$this->session->userdata('id'),);
		$this->Mproduct_option->product_option_update($mydata, $id);
		$this->session->set_flashdata('success', 'Cập nhật sản phẩm thành công');
		redirect('admin/Product_option/','refresh');
	}

	public function recyclebin(){
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mproduct_option->product_option_trash_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/Product_option/recyclebin');
		$this->data['list']=$this->Mproduct_option->product_option_trash($limit, $first);
		$this->data['view']='recyclebin';
		$this->data['title']='Thùng rác sản phẩm';
		$this->load->view('backend/layout', $this->data);
	}

	public function trash($id){
		$row = $this->Morderdetail->orderdetail_detail($id);
		if(count($row) > 0){
			$this->session->set_flashdata('error', 'Đã có khách hàng đặt mua, không thể xóa !');
			redirect('admin/Product_option','refresh');
		}else{
			$mydata= array('trash' => 0,'modified_by'=>$this->session->userdata('id'),);
			$this->Mproduct_option->product_option_update($mydata, $id);
			$this->session->set_flashdata('success', 'Xóa sản phẩm vào thùng rác thành công');
			redirect('admin/Product_option','refresh');
		}
	}

	public function restore($id){
		$this->Mproduct_option->product_option_restore($id);
		$this->session->set_flashdata('success', 'Khôi phục sản phẩm thành công');
		redirect('admin/Product_option/recyclebin','refresh');
	}

	public function delete($id){
		$this->load->helper('file');
		$row = $this->Mproduct_option->product_option_delete_detail($id);
		delete_files(base_url("public/images/Product_options" . $row['img']));
		$this->Mproduct_option->product_option_delete($id);
		$this->session->set_flashdata('success', 'Xóa sản phẩm thành công');
		redirect('admin/Product_option/recyclebin','refresh');
	}

	public function import($id){
		$row=$this->Mproduct_option->product_option_detail($id);
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->library('alias');
		$this->form_validation->set_rules('number', 'Số lượng', 'required');
		if ($this->form_validation->run() == TRUE){
			$mydata= array(
				'number'=>$row['number']+$_POST['number'],
				'modified'=>$today,
				'modified_by'=>$this->session->userdata('id')
			);
			$this->Mproduct_option->product_option_update($mydata, $id);
			$this->session->set_flashdata('success', 'Cập nhật sản phẩm thành công');
			redirect('admin/Product_option','refresh');
		}
		$this->data['row']=$row;
		$this->data['view']='import';
		$this->data['title']='Cập nhật sản phẩm';
		$this->load->view('backend/layout', $this->data);
	}


}

/* End of file Daspuhboard.php */
/* Location: ./application/controllers/Dashboard.php */