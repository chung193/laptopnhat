<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Page_type extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->load->model('backend/Mpagetype');

		$this->load->model('backend/Mcategory');

        $this->load->model('backend/Muser');
        $this->load->model('backend/Mproduct');
		if(!$this->session->userdata('sessionGreen'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionGreen');
		$this->data['com']='pagetype';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$this->load->library('alias');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mpagetype->count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/pagetype');
		$this->data['list']=$this->Mpagetype->all($limit,$first);
		$this->data['view']='index';
		$this->data['title']='Loại trang';
		$this->load->view('backend/layout', $this->data);
	}

	public function insert()
	{
		$d=getdate();
		$this->load->library('alias');
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->form_validation->set_rules('name', 'Loại trang', 'required|is_unique[db_page_type.name]|max_length[25]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'name' =>$_POST['name'], 
				'link' =>$string=$this->alias->str_alias($_POST['name']),
			);

			$this->Mpagetype->insert($mydata);
			$this->session->set_flashdata('success', 'Thêm danh mục thành công');
			redirect('admin/pagetype','refresh');
		} 
		else 
		{
			$this->data['view']='insert';
			$this->data['title']='Thêm danh mục mới';
			$this->load->view('backend/layout', $this->data);
		}
	}

	public function update($id)
	{
		$this->data['row']=$this->Mpagetype->detail($id);
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('alias');
		$this->load->library('form_validation');
		$this->form_validation->set_rules('name', 'Tên loại trang', 'required|max_length[25]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'name' =>$_POST['name'], 
				'link' =>$string=$this->alias->str_alias($_POST['name']),
			);

			$this->Mpagetype->update($mydata, $id);
			$this->session->set_flashdata('success', 'Cập nhật danh mục thành công');
			redirect('admin/pagetype','refresh');
		} 
		$this->data['view']='update';
		$this->data['title']='Cập nhật loại trang';
		$this->load->view('backend/layout', $this->data);
	}

	
	public function delete($id)
	{
		$this->Mpagetype->delete($id);
		$this->session->set_flashdata('success', 'Xóa loại trang thành công');
		redirect('admin/pagetype/','refresh');
	}

}
