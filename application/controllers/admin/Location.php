<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Location extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->load->model('backend/Mlocation');

		$this->load->model('backend/Mcategory');
		$this->load->model('backend/Mlocation');
        $this->load->model('backend/Muser');
        $this->load->model('backend/Mproduct');
		if(!$this->session->userdata('sessionGreen'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionGreen');
		$this->data['com']='location';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$this->load->library('alias');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mlocation->count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/location');
		$this->data['list']=$this->Mlocation->all($limit,$first);
		$this->data['view']='index';
		$this->data['title']='location';
		$this->load->view('backend/layout', $this->data);
	}

	public function insert()
	{
		$d=getdate();
		$this->load->library('alias');
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->form_validation->set_rules('location', 'Tên', 'required|is_unique[db_location.location]|max_length[25]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'location' =>$_POST['location'], 
				'phone' =>$_POST['phone'],
				'email' =>$_POST['email'],
			);

			$this->Mlocation->insert($mydata);
			$this->session->set_flashdata('success', 'Thêm location thành công');
			redirect('admin/location','refresh');
		} 
		else 
		{
			$this->data['view']='insert';
			$this->data['title']='Thêm location mới';
			$this->load->view('backend/layout', $this->data);
		}
	}

	public function update($id)
	{
		$this->data['row']=$this->Mlocation->detail($id);
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('alias');
		$this->load->library('form_validation');
		$this->form_validation->set_rules('location', 'Tên location', 'required|max_length[25]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'location' =>$_POST['location'], 
				'phone' =>$_POST['phone'],
				'email' =>$_POST['email'],
			);

			$this->Mlocation->update($mydata, $id);
			$this->session->set_flashdata('success', 'Cập nhật location thành công');
			redirect('admin/location','refresh');
		} 
		$this->data['view']='update';
		$this->data['title']='Cập nhật location';
		$this->load->view('backend/layout', $this->data);
	}

	
	public function delete($id)
	{
		$this->Mlocation->delete($id);
		$this->session->set_flashdata('success', 'Xóa location thành công');
		redirect('admin/location/','refresh');
	}

}
