<?php
class Mproduct extends CI_Model {
    public function __construct()
    {
        parent::__construct();
        $this->table = $this->db->dbprefix('product');
    }

    //Trang chủ
    public function product_home($limit)
    {
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->limit($limit);
        $this->db->order_by('id', 'acs');
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function livesearch($key){
        $this->db->select('product.*');
        $this->db->like('product.name', $key);
        $this->db->limit(10, 0);
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function get_all_option($id)
    {
        $this->db->select('db_product_option.*, db_product_option.sale as op_sale, db_product_option.price_sale as op_price_sale, db_product_option.price as op_price');
        $this->db->join('db_product_instance', 'db_product_instance.id_product = product.id');
        $this->db->join('db_product_option', 'db_product_option.id = db_product_instance.id_option');
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->where('product.id', $id);
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function product_sanpham($limit,$first,$f,$od)
    {       
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->order_by($f, $od);
        $query = $this->db->get($this->table, $limit,$first);
        return $query->result_array();
    }

    public function product_sanpham_count()
    {
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function product_listcat_limit($listcat, $limit,$first,$f,$od)
    {
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->group_start();
        //$d=0;
        foreach ($listcat as $value) {
            $this->db->or_where('catid', $value);
        }
        $this->db->group_end();
        //$this->db->order_by('created', 'asc');
        $this->db->order_by($f, $od);
        $query = $this->db->get($this->table, $limit,$first);
        return $query->result_array();
    }

    public function product_home_limit($listcat, $limit)
    {
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->group_start();
        foreach ($listcat as $value) {
            $this->db->or_where('catid', $value);
        }
        $this->db->group_end();
        $this->db->limit($limit);
        $this->db->order_by('id', 'asc');
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function product_chude_count($listcat)
    {
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $d=0;
        foreach ($listcat as $value) {
            if($d==0)
            {
                    $this->db->where('catid', $value);
            }
            else
            {
                   $this->db->or_where('catid', $value); 
            }
            $d++;
        }
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function product_parentid($catid, $parentid)
    {
        $this->db->where('catid', $catid);
        $this->db->where('parentid', $parentid);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->order_by('created', 'desc');
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function product_sale($limit)
    {
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->limit($limit);
        $this->db->order_by('sale', 'desc');
        //$this->db->order_by('created', 'desc');
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function product_detail($alias)
    {     
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->where('alias', $alias);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        return $query->row_array();   
    }

    public function product_detail_id($id)
    { 
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->where('id', $id);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        return $query->row_array();   
    }

    public function product_similar($catid, $id, $limit)
    {
        $this->db->where('catid', $catid);
        $this->db->where('id !=', $id);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->limit($limit);
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function product_search($name,$limit,$first){
        $this->db->like('name', $name);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->order_by('created', 'desc');
        $query = $this->db->get($this->table,$limit,$first);
        return $query->result_array();
    }

    public function product_search_count($name){
        $this->db->like('name', $name);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->order_by('created', 'desc');
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }
}