<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pengadaan extends Base_Controller
{

    /**
     * List of Products
     *
     * @access 	public
     * @param 	
     * @return 	view
     */

    public function __construct()
    {
        parent::__construct();
        $this->load->model('material_m');
        $this->load->model('vendor_m');
    }

    public function index()
    {
        $this->data['title'] = 'Vendor';
        $this->data['subview'] = 'pengadaan/main';
        $this->load->view('components/main', $this->data);
    }

    /**
     * Product Form
     *
     * @access 	public
     * @param 	
     * @return 	view
     */

    public function form()
    {
        $data['vendor'] = $this->vendor_m->all();
        $data['material'] = $this->material_m->all();
        $data['index'] = $this->input->post('index');
        $this->load->view('pengadaan/form', $data);
    }

    /**
     * Datagrid Data
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

    public function data()
    {
        header('Content-Type: application/json');
        $this->load->model('pengadaan_m');
        echo json_encode($this->pengadaan_m->getJson($this->input->post()));
    }

    /**
     * Validate Input
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

    public function validate()
    {
        $rules = [
            [
                'field' => 'vendor_id',
                'label' => 'Vendor',
                'rules' => 'required'
            ],
            [
                'field' => 'no_pembelian',
                'label' => 'No Surat',
                'rules' => 'required'
            ],
            [
                'field' => 'material_id',
                'label' => 'Material',
                'rules' => 'required'
            ],
            [
                'field' => 'tgl_beli',
                'label' => 'Tanggal',
                'rules' => 'required'
            ],
            [
                'field' => 'qty',
                'label' => 'Quantity',
                'rules' => 'required'
            ]
        ];

        $this->form_validation->set_rules($rules);
        if ($this->form_validation->run()) {
            header("Content-type:application/json");
            echo json_encode('success');
        } else {
            header("Content-type:application/json");
            echo json_encode($this->form_validation->get_all_errors());
        }
    }

    /**
     * Create Update Action
     *
     * @access 	public
     * @param 	
     * @return 	method
     */

    public function action()
    {
        if (!$this->input->post('id')) {
            $this->create();
        } else {
            $this->update();
        }
    }

    /**
     * Create a New Product
     *
     * @access 	public
     * @param 	
     * @return 	json(string)
     */

    public function create()
    {
        $data = [
            'no_pembelian' => $this->input->post('no_pembelian'),
            'vendor_id' => $this->input->post('vendor_id'),
            'qty' => $this->input->post('qty'),
            'tgl_beli' => $this->input->post('tgl_beli'),
            'material_id' => $this->input->post('material_id')
        ];
        $this->db->insert('tbl_pasok', $data);

        header('Content-Type: application/json');
        echo json_encode('success');
    }

    /**
     * Update Existing Product
     *
     * @access 	public
     * @param 	
     * @return 	json(string)
     */

    public function update()
    {
        $data = [
            'no_pembelian' => $this->input->post('no_pembelian'),
            'vendor_id' => $this->input->post('vendor_id'),
            'qty' => $this->input->post('qty'),
            'tgl_beli' => $this->input->post('tgl_beli'),
            'material_id' => $this->input->post('material_id')
        ];
        $this->db->where('id', $this->input->post('id'));
        $this->db->update('tbl_pasok', $data);

        header('Content-Type: application/json');
        echo json_encode('success');
    }

    /**
     * Delete a Product
     *
     * @access 	public
     * @param 	
     * @return 	redirect
     */

    public function delete()
    {
        $this->db->where('id', $this->input->post('id'));
        $this->db->delete('tbl_pasok');
    }
}
