<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Orders extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        if ( ! $this->session->userdata('logged_in'))
        { 
            redirect(base_url().'login');
        }
    }

    public function index()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/add-Orders');
        $this->load->view('admin/footer');
    }

    public function manage_Orders()
    {
        $data['content']=$this->Orders_model->select_Orders();
        $this->load->view('admin/header');
        $this->load->view('admin/manage-Orders',$data);
        $this->load->view('admin/footer');
    }

    public function insert()
    {
        $person=$this->input->post('slcperson');
        $area=$this->input->post('slcarea');
        $dealer=$this->input->post('slcdealer');
        $odate=$this->input->post('txtodate');
        $urgent=$this->input->post('urgent');
        $comment=$this->input->post('txtcomment');
        $battery=$this->input->post('battery');
        $qty=$this->input->post('qty');
       // $orders_id=$this->Orders_model->get_last_id();
        $order=$this->Orders_model->insert_Orders_battery(array('battery_id'=>$battery,'battery_Qty'=>$qty,'orders_id'=>$orders_id));
        if($order>0)
        {
        $data=$this->Orders_model->insert_Orders(array('salesper_id'=>$person,'area_id'=>$area,'dealer_id'=>$dealer,'date'=>$odate,'urgent'=>$urgent,'comment'=>$comment));
        }
        if($data==true)
        {
            $this->session->set_flashdata('success', "New Orders Added Succesfully"); 
        }else{
            $this->session->set_flashdata('error', "Sorry, New Orders Adding Failed.");
        }
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function update()
    {
        $id=$this->input->post('txtid');
        $Orders=$this->input->post('txtOrders');
        $data=$this->Orders_model->update_Orders(array('Orders_name'=>$Orders),$id);
        if($this->db->affected_rows() > 0)
        {
            $this->session->set_flashdata('success', "Orders Updated Succesfully"); 
        }else{
            $this->session->set_flashdata('error', "Sorry, Orders Update Failed.");
        }
        redirect(base_url()."Orders/manage_Orders");
    }


    function edit($id)
    {
        $data['content']=$this->Orders_model->select_Orders_byID($id);
        $this->load->view('admin/header');
        $this->load->view('admin/edit-Orders',$data);
        $this->load->view('admin/footer');
    }


    function delete($id)
    {
        $data=$this->Orders_model->delete_Orders($id);
        if($this->db->affected_rows() > 0)
        {
            $this->session->set_flashdata('success', "Orders Deleted Succesfully"); 
        }else{
            $this->session->set_flashdata('error', "Sorry, Orders Delete Failed.");
        }
        redirect($_SERVER['HTTP_REFERER']);
    }



}
