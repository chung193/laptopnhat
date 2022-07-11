<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mproduct_option extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->table = $this->db->dbprefix('product_option');
	}

	public function product_option_sanpham_count()
    {
       
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function product_option_count_parentid($catid)
    {
    	$this->db->where('catid', $catid);
    	
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function product_option_sanpham($limit,$first)
    {
        $this->db->select('db_product.*, db_product_instance.*, db_product_instance.id as instanceid, db_product_instance.id_product as pr_id, db_product_option.*, db_product_option.sale as option_sale,db_product_option.price as option_price, db_product_option.price_sale as option_pricesale');
		$this->db->join('db_product_instance', 'db_product_instance.id_option =  db_product_option.id');
		$this->db->join('db_product', 'db_product.id =  db_product_instance.id_product');
        $query = $this->db->get($this->table, $limit,$first);
        return $query->result_array();
    }

	public function product_option_detail($id)
    {
		$this->db->join('db_product_instance', 'db_product_instance.id_option =  db_product_option.id');
		$this->db->where('db_product_option.id', $id);
        $query = $this->db->get($this->table);
        return $query->row_array();   
    }

    public function product_option_delete_detail($id)
    {
        $this->db->where('id', $id);
        $query = $this->db->get($this->table);
        return $query->row_array();   
    }

	public function product_option_trash($limit, $first)
	{
		
		$query = $this->db->get($this->table, $limit, $first);
        return $query->result_array();
	}

	public function product_option_trash_count()
	{
        
        $query = $this->db->get($this->table);
        return count($query->result_array());
	}

	public function product_option_insert($mydata)
	{
		$this->db->insert($this->table,$mydata);
		$insertId = $this->db->insert_id();
		return $insertId;
	}

	public function product_option_update($mydata,$id)
	{
		$this->db->where('id',$id);
		$this->db->update($this->table, $mydata);
	}

	public function product_instance_update($mydata,$id)
	{
		$this->db->where('id',$id);
		$this->db->update('db_product_instance', $mydata);
	}

	public function product_option_restore($id)
	{
		
		$this->db->where('id',$id);
		$this->db->update($this->table, $data);
	}
	public function product_option_delete($id)
	{
		$this->db->where('id',$id);
		$this->db->delete($this->table);
	}

}

/* End of file mproduct_option.php */
/* Location: ./application/models/mproduct_option.php */