<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mcontent extends CI_Model {

	public function __construct(){
            parent::__construct();
            $this->table = $this->db->dbprefix('content');
    }


    public function content_chude($limit,$first){
        $this->db->where('trash', 1);
        $this->db->where('status', 1);
        $this->db->order_by('created', 'desc');
        $query=$this->db->get($this->table, $limit,$first);
        return $query->result_array();
    }

    public function content_chude_count(){
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function content_detail($link){
        $this->db->select('content.*,db_content_type.name as typename,db_content_type.slug as typeslug');
        $this->db->join('db_content_type', 'content.id_type = db_content_type.id');
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->where('alias', $link);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        return $query->row_array();
    }

    public function content_news($limit){
        $this->db->where('status',1);
        $this->db->where('trash',1);
        $this->db->limit($limit);
        $this->db->order_by('created', 'desc');
        $query=$this->db->get($this->table);
        return $query->result_array();
    }
}

/* End of file mcontent.php */
/* Location: ./application/models/mcontent.php */