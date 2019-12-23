<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Vendor extends Base_Controller
{

    /**
     * List of Products
     *
     * @access 	public
     * @param 	
     * @return 	view
     */

    // public function __construct()
    // {
    //     parent::__construct();
    //     // $this->load->model('Material_model', 'material');
    //     // $this->load->model('Vendor_model', 'vendor');

    // }

    public function index()
    {
        $this->load->model('Project_m', 'project');
        $this->data['title'] = 'Vendor';
        $this->data['vendor'] = $this->db->get('tbl_vendor')->result_array();
        $this->data['subview'] = 'vendor/main';
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
        $data['index'] = $this->input->post('index');
        $this->load->view('vendor/form', $data);
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
        $this->load->model('vendor_m');
        echo json_encode($this->vendor_m->getJson($this->input->post()));
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
                'field' => 'kode',
                'label' => 'Kode',
                'rules' => 'required'
            ],
            [
                'field' => 'nama',
                'label' => 'Nama',
                'rules' => 'required'
            ],
            [
                'field' => 'alamat',
                'label' => 'Alamat',
                'rules' => 'required'
            ],
            [
                'field' => 'no_hp',
                'label' => 'NO HP',
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
        $data['kode']     = $this->input->post('kode');
        $data['nama']     = $this->input->post('nama');
        $data['no_hp']    = $this->input->post('no_hp');
        $data['alamat']   = $this->input->post('alamat');
        $this->db->insert('tbl_vendor', $data);

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
        $data['kode']     = $this->input->post('kode');
        $data['nama']     = $this->input->post('nama');
        $data['no_hp']    = $this->input->post('no_hp');
        $data['alamat']   = $this->input->post('alamat');
        $this->db->where('id', $this->input->post('id'));
        $this->db->update('tbl_vendor', $data);

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
        $this->db->delete('tbl_vendor');
    }

    function getProject($id = null)
    {
        $this->db->select('*');
        if ($id) {
            $this->db->where('id', $id);
        }
        return $this->db->get('tbl_proyek');
    }

    function getMaterial($no_proyek = null)
    {
        $this->db->select('A.*, B.nama');
        $this->db->join('tbl_material B', 'A.material_id = B.id');
        $this->db->where('A.proyek_no', $no_proyek);
        return $this->db->get('tbl_proyek_material A');
    }

    function getMesinProyek($no_proyek = null)
    {
        $this->db->select('A.*, B.nama');
        $this->db->join('tbl_mesin B', 'A.mesin_id = B.id');
        $this->db->where('A.proyek_no', $no_proyek);
        return $this->db->get('tbl_proyek_mesin A');
    }

    function getRuanganProyek($no_proyek = null)
    {
        $this->db->select('A.*, B.nama');
        $this->db->join('tbl_ruangan B', 'A.ruangan_id = B.id');
        $this->db->where('A.proyek_no', $no_proyek);
        return $this->db->get('tbl_proyek_ruangan A');
    }

    function saveProject()
    {
        $data_ruangan = [];
        $data_mesin = [];
        $data_material = [];

        $dateTime = date('Y-m-d H:i:s');

        $ruangan = $this->input->post('ruangan');
        $mesin = $this->input->post('mesin');
        $item = $this->input->post('item');
        $qty = $this->input->post('qty');
        $no_proyek = $this->input->post('proyek_no');

        $data = [
            'proyek_no' => $no_proyek,
            'nama' => $this->input->post('nama'),
            'deskripsi' => $this->input->post('deskripsi'),
            'tgl_mulai' => $this->input->post('tgl_mulai'),
            'tgl_selesai' => $this->input->post('tgl_selesai'),
            'tgl_selesai' => $this->input->post('tgl_selesai'),
            'tgl_input' => $dateTime
        ];

        for ($i = 0; $i < count($ruangan); $i++) {
            $data_ruangan[] = [
                'proyek_no' => $no_proyek,
                'ruangan_id' => $ruangan[$i],
                'deskripsi' => $this->input->post('deskripsi')
            ];
        }

        for ($j = 0; $j < count($mesin); $j++) {
            $data_mesin[] = [
                'proyek_no' => $no_proyek,
                'mesin_id' => $mesin[$j]
            ];
        }

        for ($k = 0; $k < count($item); $k++) {
            $data_material[] = [
                'proyek_no' => $no_proyek,
                'material_id' => $item[$k],
                'qty' => $qty[$k],
                'tgl_input' => $dateTime
            ];
        }


        $this->db->trans_begin();

        $this->db->insert_batch('tbl_proyek_ruangan', $data_ruangan);
        $this->db->insert_batch('tbl_proyek_mesin', $data_mesin);
        $this->db->insert_batch('tbl_proyek_material', $data_material);
        $this->db->insert('tbl_proyek', $data);

        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Project gagal ditambahkan! </div>');
        } else {
            $this->db->trans_commit();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Project berhasil ditambahkan! </div>');
        }
    }


    function getMesin($id = null)
    {
        $this->db->select('*');
        if ($id) {
            $this->db->where('id', $id);
        }
        return $this->db->get('tbl_mesin');
    }

    function saveMesin($id = null)
    {
        $data = [
            'nama' => $this->input->post('nama'),
            'deskripsi' => $this->input->post('deskripsi')
        ];
        if ($id) {
            $this->db->update('tbl_mesin', $data, ['id' => $id]);
        } else {
            $this->db->insert('tbl_mesin', $data);
        }
    }

    function getRuangan($id = null)
    {
        $this->db->select('*');
        if ($id) {
            $this->db->where('id', $id);
        }
        return $this->db->get('tbl_ruangan');
    }

    function saveRuangan($id = null)
    {
        $data = [
            'nama' => $this->input->post('nama'),
            'deskripsi' => $this->input->post('deskripsi')
        ];
        if ($id) {
            $this->db->update('tbl_ruangan', $data, ['id' => $id]);
        } else {
            $this->db->insert('tbl_ruangan', $data);
        }
    }
}
