<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mcontenttype extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->table = $this->db->dbprefix('content_type');
	}

	public function contenttype_count_parentid($parentid)
	{
        $query = $this->db->get($this->table);
        return count($query->result_array());

	}

	public function all($limit,$first)
	{
		$query = $this->db->get($this->table,$limit,$first);
        return $query->result_array();
	}

	public function contenttype_listofType($type)
	{

		//$this->db->order_by('orders', 'asc');
		$this->db->order_by('parentid', 'asc');
		$query = $this->db->get($this->table);
        return $query->result_array();
	}

	public function contenttype_parentid($id)
	{
		$this->db->where('id',$id);
		$this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['parentid'];
	}

	public function contenttype_name_parent($id)
	{
		$this->db->where('id',$id);
		$this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['name'];
	}

	public function contenttype_count()
	{
        $query = $this->db->get($this->table);
        return count($query->result_array());
	}

	public function contenttype_list()
	{
		$query = $this->db->get($this->table);
        return $query->result_array();
	}

	public function contenttype_detail($id)
	{
		$this->db->where('id',$id);
		$query = $this->db->get($this->table);
        return $query->row_array();
	}

	//Thêm
	public function contenttype_insert($mydata)
	{
		$this->db->insert($this->table, $mydata);
	}

	//Cập nhật
	public function contenttype_update($mydata, $id)
	{
		$this->db->where('id',$id);
		$this->db->update($this->table, $mydata);
	}

	public function contenttype_delete($id)
	{
		$this->db->where('id',$id);
		$this->db->delete($this->table);
	}

	public function contenttype_trash($limit, $first)
	{
		$query = $this->db->get($this->table, $limit, $first);
        return $query->result_array();
	}

	public function contenttype_trash_count()
	{
        $query = $this->db->get($this->table);
        return count($query->result_array());
	}

	public function contenttype_restore($id)
	{
		$this->db->where('id',$id);
		$this->db->update($this->table, $data);
	}

	public function contenttype_name($id)
    {
        $this->db->where('id', $id);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['name'];
    }

    public function contenttype_type($id)
    {
        $this->db->where('id', $id);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['type'];
    }
}

/* End of file mcontenttype.php */
/* Location: ./application/models/mcontenttype.php */