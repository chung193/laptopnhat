<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mproduct_instance extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->table = $this->db->dbprefix('product_instance');
	}

	public function product_instance_sanpham_count()
    {
       
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function product_instance_count_parentid($catid)
    {
    	$this->db->where('catid', $catid);
    	
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function product_instance_sanpham($limit,$first)
    {
        
        $this->db->order_by('id', 'desc');
		$this->db->join($this->table, $limit,$first);
        $query = $this->db->get($this->table, $limit,$first);
        return $query->result_array();
    }

	public function product_instance_detail($id)
    {
        
        $this->db->where('id', $id);
        $query = $this->db->get($this->table);
        return $query->row_array();   
    }

    public function product_instance_delete_detail($id)
    {
        $this->db->where('id', $id);
        $query = $this->db->get($this->table);
        return $query->row_array();   
    }

	public function product_instance_trash($limit, $first)
	{
		
		$query = $this->db->get($this->table, $limit, $first);
        return $query->result_array();
	}

	public function product_instance_trash_count()
	{
        
        $query = $this->db->get($this->table);
        return count($query->result_array());
	}

	public function product_instance_insert($mydata)
	{
		$this->db->insert($this->table,$mydata);
	}

	public function product_instance_update($mydata,$id)
	{
		$this->db->where('id',$id);
		$this->db->update($this->table, $mydata);
	}

	public function product_instance_restore($id)
	{
		
		$this->db->where('id',$id);
		$this->db->update($this->table, $data);
	}
	public function product_instance_delete($id)
	{
		$this->db->where('id',$id);
		$this->db->delete($this->table);
	}

}

/* End of file mproduct_instance.php */
/* Location: ./application/models/mproduct_instance.php */