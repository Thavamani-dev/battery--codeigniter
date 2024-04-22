<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Orders_model extends CI_Model {


    function insert_Orders($data)
    {
        $this->db->insert("orders_tbl",$data);
        return $this->db->insert_id();
    }
    function insert_Orders_battery($data)
    {
        $this->db->insert("order_battery_tbl",$data);
        return $this->db->insert_id();
    }

    function select_Orders()
    {
        $qry=$this->db->get('orders_tbl');
        if($qry->num_rows()>0)
        {
            $result=$qry->result_array();
            return $result;
        }
    }

    function select_Orders_byID($id)
    {

        $this->db->where('id',$id);
        $qry=$this->db->get('orders_tbl');
        if($qry->num_rows()>0)
        {
            $result=$qry->result_array();
            return $result;
        }
    }

    function delete_Orders($id)
    {
        $this->db->where('id', $id);
        $this->db->delete("orders_tbl");
        $this->db->affected_rows();
    }

    

    function update_department($data,$id)
    {
        $this->db->where('id', $id);
        $this->db->update('orders_tbl',$data);
        $this->db->affected_rows();
    }

    




}
