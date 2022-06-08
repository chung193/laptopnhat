<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Page extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->load->model('backend/Mpage');
		$this->load->model('backend/Mpagetype');
		$this->load->model('backend/Mcategory');

        $this->load->model('backend/Muser');
        $this->load->model('backend/Mproduct');
		if(!$this->session->userdata('sessionGreen'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionGreen');
		$this->data['com']='page';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$this->load->library('alias');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mpage->count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/page');
		$this->data['list']=$this->Mpage->all($limit,$first);
		$this->data['view']='index';
		$this->data['title']='Trang';
		$this->load->view('backend/layout', $this->data);
	}

	public function insert()
	{
		
		$d=getdate();
		$this->load->library('alias');
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->form_validation->set_rules('title', 'Tên trang', 'required|is_unique[db_page.title]|max_length[25]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'title' =>$_POST['title'], 
				'slug' =>$string=$this->alias->str_alias($_POST['title']),
				'fulltext'=>$_POST['fulltext'], 
				'introtext'=>$_POST['introtext'],
				'created'=>$today,
				'created_by'=>$this->session->userdata('id'),
				'status'=>$_POST['status'],
				'id_type'=>$_POST['id_type'],
				'metakey'=>$_POST['metakey'],
				'metadesc'=>$_POST['metadesc'],
			);

			$this->Mpage->insert($mydata);
			$this->session->set_flashdata('success', 'Thêm trang mới thành công');
			redirect('admin/page','refresh');
		} 
		else 
		{
			$this->data['view']='insert';
			$this->data['title']='Thêm trang mới';
			$this->load->view('backend/layout', $this->data);
		}
	}

	public function update($id)
	{
		$this->data['row']=$this->Mpage->detail($id);
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('alias');
		$this->load->library('form_validation');
		$this->form_validation->set_rules('title', 'Tên trang', 'required|max_length[25]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'title' =>$_POST['title'], 
				'slug' =>$string=$this->alias->str_alias($_POST['title']),
				'fulltext'=>$_POST['fulltext'], 
				'introtext'=>$_POST['introtext'],
				'created'=>$today,
				'created_by'=>$this->session->userdata('id'),
				'status'=>$_POST['status'],
				'metakey'=>$_POST['metakey'],
				'metadesc'=>$_POST['metadesc'],
				'id_type'=>$_POST['id_type']
			);

			// print_r($mydata); die();

			$this->Mpage->update($mydata, $id);
			$this->session->set_flashdata('success', 'Cập nhật trang thành công');
			redirect('admin/page','refresh');
		} 
		$this->data['view']='update';
		$this->data['title']='Cập nhật trang';
		$this->load->view('backend/layout', $this->data);
	}

	
	public function delete($id)
	{
		$this->Mpage->delete($id);
		$this->session->set_flashdata('success', 'Xóa trang thành công');
		redirect('admin/page','refresh');
	}

}
