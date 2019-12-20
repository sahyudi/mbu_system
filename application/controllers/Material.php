<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Material extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        // is_logged_in();
        $this->load->model('Material_m', 'material');
        // $this->load->model('Vendor_model', 'vendor');
    }

    function index()
    {
        $this->load->model('Project_m', 'project');
        $this->data['title'] = 'Project';
        $this->data['project'] = $this->project->getProject()->result_array();
        $this->data['subview'] = 'material/main';
        $this->load->view('components/main', $this->data);
    }

    function addMaterial()
    {
        $data['title'] = 'Add Material';
        $data['user'] = $this->db->get_where('tbl_user', ['username' => $this->session->userdata('username')])->row_array();
        $data['material'] = $this->material->getMaterial()->result_array();

        $this->form_validation->set_rules('kode', 'kode', 'required|trim|is_unique[tbl_material.kode]', [
            'is_unique' => 'Kode ini sudah digunakan!!'
        ]);
        $this->form_validation->set_rules('proyek_no', 'No Proyek', 'required|trim');
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('tgl_mulai', 'Tanggal Mulai', 'required|trim');
        $this->form_validation->set_rules('tgl_selesai', 'Tanggal Selesai', 'required|trim');
        $this->form_validation->set_rules('mesin', 'Mesin', 'required|trim');
        $this->form_validation->set_rules('ruangan', 'Ruangan', 'required|trim');
        $this->form_validation->set_rules('ruangan', 'Ruangan', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/navbar', $data);
            $this->load->view('material/form-add', $data);
            $this->load->view('template/footer');
        } else {
            $this->material->addMaterial();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Material berhasil ditambahkan! </div>');
            redirect('material');
        }
    }


    function deleteMaterial($id = null)
    {
        if ($id) {
            if ($this->material->deleteMaterial($id)) {
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Material berhasil dihapus! </div>');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Material gagal dihapus!!</div>');
            }
            redirect('Material');
        }
    }

    function editMaterial($id = null)
    {
        if ($id) {
            $data = $this->material->getMaterial($id)->row_array();
            echo json_encode($data);
        }
    }

    function updateMaterial()
    {
        $id = $this->input->post('id');

        if ($id) {
            $this->material->updateMaterial($id);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Material berhasil diperbarui! </div>');
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Material gagal diperbarui!!</div>');
        }

        redirect('material');
    }


    function pasok()
    {
        $data['title'] = 'Pasok Material';
        $data['user'] = $this->db->get_where('tbl_user', ['username' => $this->session->userdata('username')])->row_array();
        $data['pasokMaterial'] = $this->material->getPasokMaterial()->result_array();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/navbar', $data);
        $this->load->view('material/pasok', $data);
        $this->load->view('template/footer');
    }

    function addPasok()
    {
        $data['title'] = 'Add Material';
        $data['user'] = $this->db->get_where('tbl_user', ['username' => $this->session->userdata('username')])->row_array();
        $data['material'] = $this->material->getMaterial()->result_array();
        $data['vendor'] = $this->vendor->getVendor()->result_array();



        $this->form_validation->set_rules('vendor_id', 'Vendor', 'required|trim');
        $this->form_validation->set_rules('material_id', 'Material', 'required|trim');
        $this->form_validation->set_rules('qty', 'Quantity', 'required|trim');
        $this->form_validation->set_rules('tgl_beli', 'Tanggal', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/navbar', $data);
            $this->load->view('material/form-add-pasok', $data);
            $this->load->view('template/footer');
        } else {
            $this->material->addPasok();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Material berhasil ditambahkan! </div>');
            redirect('material/pasok');
        }
    }
}
