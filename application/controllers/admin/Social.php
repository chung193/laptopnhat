<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Social extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->load->model('backend/Msocial');

		$this->load->model('backend/Mcategory');
		$this->load->model('backend/Msocial');
        $this->load->model('backend/Muser');
        $this->load->model('backend/Mproduct');
		if(!$this->session->userdata('sessionGreen'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionGreen');
		$this->data['com']='social';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$this->load->library('alias');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Msocial->count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/social');
		$this->data['list']=$this->Msocial->all($limit,$first);
		$this->data['view']='index';
		$this->data['title']='Social';
		$this->load->view('backend/layout', $this->data);
	}

	public function insert()
	{
		$d=getdate();
		$this->load->library('alias');
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->form_validation->set_rules('name', 'Tên', 'required|is_unique[db_social.name]|max_length[25]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'name' =>$_POST['name'], 
				'url' =>$_POST['url'],
			);

			$config['upload_path']          = './public/images/social/';
            $config['allowed_types']        = 'gif|jpg|png';
            $config['max_size']             = 2000;
            $this->load->library('upload', $config);
				if ( $this->upload->do_upload('icon'))
				{
					$data = $this->upload->data();
					if(strlen($data['file_name'])!=0)
					{
						$mydata['icon']=$data['file_name'];
					}
				}
				else
				{
					$mydata['icon']='default.png';
				}

			$this->Msocial->insert($mydata);
			$this->session->set_flashdata('success', 'Thêm Social thành công');
			redirect('admin/social','refresh');
		} 
		else 
		{
			$this->data['view']='insert';
			$this->data['title']='Thêm Social mới';
			$this->load->view('backend/layout', $this->data);
		}
	}

	public function update($id)
	{
		$this->data['row']=$this->Msocial->detail($id);
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('alias');
		$this->load->library('form_validation');
		$this->form_validation->set_rules('name', 'Tên social', 'required|max_length[25]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'name' =>$_POST['name'], 
				'url' =>$_POST['url'],
			);
			$config['upload_path']          = './public/images/social/';
            $config['allowed_types']        = 'gif|jpg|png';
            $config['max_size']             = 2000;
            $this->load->library('upload', $config);
				if ( $this->upload->do_upload('icon'))
				{
					$data = $this->upload->data();
					if(strlen($data['file_name'])!=0)
					{
						$mydata['icon']=$data['file_name'];
					}
				}
				else
				{
					$mydata['icon']='default.png';
				}

			$this->Msocial->update($mydata, $id);
			$this->session->set_flashdata('success', 'Cập nhật Social thành công');
			redirect('admin/social','refresh');
		} 
		$this->data['view']='update';
		$this->data['title']='Cập nhật Social';
		$this->load->view('backend/layout', $this->data);
	}

	
	public function delete($id)
	{
		$this->Msocial->delete($id);
		$this->session->set_flashdata('success', 'Xóa Social thành công');
		redirect('admin/social/','refresh');
	}

}
