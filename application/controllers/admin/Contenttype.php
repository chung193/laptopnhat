<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class contenttype extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->load->model('backend/Mcontenttype');
        $this->load->model('backend/Muser');
        $this->load->model('backend/Mproduct');
		if(!$this->session->userdata('sessionGreen'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionGreen');
		$this->data['com']='contenttype';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$this->load->library('alias');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mcontenttype->contenttype_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/contenttype');
		$this->data['list']=$this->Mcontenttype->all($limit,$first);
		$this->data['view']='index';
		$this->data['title']='Loại bài viết';
		$this->load->view('backend/layout', $this->data);
	}

	public function insert()
	{
		$d=getdate();
		$this->load->library('alias');
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->form_validation->set_rules('name', 'Loại sản phẩm', 'required|is_unique[db_content_type.name]|max_length[25]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'name' =>$_POST['name'], 
				'slug' =>$string=$this->alias->str_alias($_POST['name']),
			);

			$this->Mcontenttype->contenttype_insert($mydata);
			$this->session->set_flashdata('success', 'Thêm danh mục thành công');
			redirect('admin/contenttype','refresh');
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
		$this->data['row']=$this->Mcontenttype->contenttype_detail($id);
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('alias');
		$this->load->library('form_validation');
		$this->form_validation->set_rules('name', 'Tên danh mục', 'required|max_length[25]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'name' =>$_POST['name'], 
				'slug' =>$string=$this->alias->str_alias($_POST['name']),
			);
			
        
			$this->Mcontenttype->contenttype_update($mydata, $id);
			$this->session->set_flashdata('success', 'Cập nhật danh mục thành công');
			redirect('admin/contenttype','refresh');
		} 
		$this->data['view']='update';
		$this->data['title']='Cập nhật danh mục';
		$this->load->view('backend/layout', $this->data);
	}


	public function delete($id)
	{
		$this->Mcontenttype->contenttype_delete($id);
		$this->session->set_flashdata('success', 'Xóa loại sản phẩm thành công');
		redirect('admin/contenttype','refresh');
	}

}
