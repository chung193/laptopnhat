<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mlocation extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->table = $this->db->dbprefix('location');
	}


	public function count()
	{
        $query = $this->db->get($this->table);
        return count($query->result_array());
	}

	public function all($limit,$first)
	{
		$query = $this->db->get($this->table,$limit,$first);
        return $query->result_array();
	}

	public function category_parentid($id)
	{
		$this->db->where('id',$id);
		$this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['parentid'];
	}

	public function category_name_parent($id)
	{
		$this->db->where('id',$id);
		$this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['name'];
	}

	

	public function list()
	{
		$query = $this->db->get($this->table);
        return $query->result_array();
	}

	public function detail($id)
	{
		$this->db->where('id',$id);
		$query = $this->db->get($this->table);
        return $query->row_array();
	}

	//Thêm
	public function insert($mydata)
	{
		$this->db->insert($this->table, $mydata);
	}

	//Cập nhật
	public function update($mydata, $id)
	{
		$this->db->where('id',$id);
		$this->db->update($this->table, $mydata);
	}

	public function delete($id)
	{
		$this->db->where('id',$id);
		$this->db->delete($this->table);
	}


	public function name($id)
    {
        $this->db->where('id', $id);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['name'];
    }

}

/* End of file mcategory.php */
/* Location: ./application/models/mcategory.php */