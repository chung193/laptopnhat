<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Configuration extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->load->model('backend/Mconfiguration');
        $this->load->model('backend/Muser');
        
		if(!$this->session->userdata('sessionGreen'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionGreen');
		$this->data['com']='configuration';
	}
	
	public function update($id=1)
	{
		$this->data['row']=$this->Mconfiguration->configuration_detail($id);

		$this->load->library('form_validation');
		$this->load->library('session');
		
		$this->form_validation->set_rules('mail_smtp', 'mail_smtp', 'required');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'mail_smtp' =>$_POST['mail_smtp'], 
				'mail_port' =>$_POST['mail_port'],
				'mail_info'=>$_POST['mail_info'], 
				'mail_noreply'=>$_POST['mail_noreply'],
				'mail_password'=>$_POST['mail_password'],
				'priceShip'=>$_POST['priceShip'],
				'title'=>$_POST['title'], 
				'description'=>$_POST['description'],
				'keyword'=>$_POST['keyword'],
				'phone_for_take_care'=>$_POST['phone_for_take_care'],
				'phone_for_sale'=>$_POST['phone_for_sale'],
				'phone_for_insurance'=>$_POST['phone_for_insurance'],
				'timework'=>$_POST['timework'],
			);

			$config['upload_path']          = './public/images/logo/';
            $config['allowed_types']        = 'gif|jpg|png';
            $config['max_size']             = 2000;
            $this->load->library('upload', $config);
				if ( $this->upload->do_upload('img'))
				{
					$data = $this->upload->data();
					$mydata['logo']=$data['file_name'];
				}
				else
				{
					$mydata['logo']='default.png';
				}
			

			// print_r($mydata); die();
            
			
			$this->Mconfiguration->configuration_update($mydata,$id);
			$this->session->set_flashdata('success', 'Cập nhật v thành công');
			redirect('admin/configuration/update','refresh');
		} 
		$this->data['view']='update';
		$this->data['title']='Cấu hình';
		$this->load->view('backend/layout', $this->data);
	}
	

}
