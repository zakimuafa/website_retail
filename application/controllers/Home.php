<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Home extends CI_Controller {
    public function __construct(){
        parent::__construct();
        // Cek apakah terdapat session dengan nama authenticated
        if( ! $this->session->userdata('pid')) // Jika tidak ada
            redirect('login'); // Redirect ke halaman login
        $this->load->model('m_home');
    }
    public function index() {
        $home = $this->db->query('SELECT * FROM home ORDER BY id ASC')->result_array();
        // $edit = $this->db->query('SELECT * FROM home ORDER BY id ASC')->result_array();
    // print_r($home);exit;
        $data = [
            'breadcum'          => 'HOME WEBSITE',
            'link_edit'         => 'Home/home_edit',
            'link_tambah'       => 'Home/home_add',
            'home'              => $home
            // 'edit' => $edit
        ];
        $this->template->display('home/index', $data);
    }
    public function home_add()
    {
        // print_r('bebas');exit;
        $data = [
            'breadcum'          => 'Home home',
            'link_simpan'       => 'Home/simpan_home',
        ];
        $this->template->display('home/add', $data);
    }
    public function home_hapus() 
    {
        $ok = $this->m_home->delete_one_home();

        if($ok){
            die('<script>alert("Data berhasil di hapus"); window.location.replace("'.base_url("home/index").'");</script>');
        }else{
            die('<script>alert("Data gagal di hapus"); window.location.replace('.base_url("home/index").');</script>');
        }
    }
    public function home_create()
    {
        // print_r($_FILES);exit;
        $config['upload_path']="./assets/img/home";
        $config['allowed_types']='gif|jpg|png|jpeg';
        $this->load->library('upload', $config);
        if($this->upload->do_upload("gambar1")){
            $data1 = array('upload_data' => $this->upload->data());
            $gambar_1= $data1['upload_data']['file_name'];
        }else{
            $gambar_1= '';
        }
        if($this->upload->do_upload("gambar2")){
            $data2 = array('upload_data' => $this->upload->data());
            $gambar_2= $data2['upload_data']['file_name'];
        }else{
            $gambar_2= '';
        }
        
        //simpan header
        $datasimpan = [
            'judul'         => $this->input->post('judul'),
            'sub_judul'     => $this->input->post('sub_judul'),
            'gambar_1'      => $gambar_1,
            'gambar_2'      => $gambar_2,
        ];
        // print_r($datasimpan);exit;
        $ok = $this->db->insert('home', $datasimpan);
        //simpan detail
        
        if($ok){
            echo json_encode($ok);
        }
        
    
    }
    public function home_edit()
    {
        $data = [
            'breadcum'          => 'Home home',
            'link_simpan'       => 'home/simpan_edit_home',
            'home'           => $this->m_home->get_one_home(),
        ];
        $this->template->display('home/edit', $data);
    }
    public function home_update()
    {
        print_r($_FILES);exit;
        $config['upload_path']="./assets/img/home";
        $config['allowed_types']='gif|jpg|png|jpeg';
        $this->load->library('upload', $config);
        if($this->upload->do_upload("gambar1")) {
            $data1 = array('upload_data' => $this->upload->data());
            $gambar_1= $data1['upload_data']['file_name'];
        }else{
            $gambar_1= '';
        }
        if($this->upload->do_upload("gambar2")) {
            $data2 = array('upload_data' => $this->upload->data());
            $gambar_2= $data2['upload_data']['file_name'];
        }else{
            $gambar_2= '';
        }
        
        //update
        $update = [
            'judul'         => $this->input->post('judul'),
            'sub_judul'     => $this->input->post('sub_judul'),
            'gambar_1'      => $gambar_1,
            'gambar_2'      => $gambar_2,
        ];
        // print_r($datasimpan);exit;
        $this->db->where('id', $this->input->post('id'));
        $ok = $this->db->update('home', $update);
        //simpan detail
        
        if($ok){
            echo json_encode($ok);
        }
        
    
    }
    // ) {
//         $klien = $this->db->query('SELECT * FROM home ORDER BY id ASC')->result_array();

//         $data = [
//             'breadcum'          => 'Portofolio',
//         ];
//         $this->template->display('controlpanel/klien/index', $data);
//     }
//     // public function layanan()
//     // {
//     //     $layanan = $this->db->query('SELECT * FROM layanan ORDER BY id ASC')->result_array();

//     //     $data = [
//     //         'breadcum'          => 'Layanan',
//     //         'link_edit'       => 'Controlpanel/layanan_edit',
//     //         'layanan'           => $this->m_controlpanel->get_layanan_all(),
//     //     ];
//     //     $this->template->display('controlpanel/layanan/index', $data);
//     // }
//     public function produk()
//     {
//         $produk = $this->db->query('SELECT * FROM produk ORDER BY id ASC')->result_array();

//         $data = [
//             'breadcum'          => 'Produk',
//             'link_edit'       => 'Controlpanel/produk_edit',
//             'produk'           => $this->m_controlpanel->get_produk_all(),
//         ];
//         $this->template->display('controlpanel/produk/index', $data);
//     }
    
}


