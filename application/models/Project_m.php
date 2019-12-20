<?php

class Project_m extends CI_Model
{

    function __construct()
    {
        parent::__construct();
        $this->load->library('datagrid');
    }

    /**
     * Datagrid Data
     *
     * @access  public
     * @param   
     * @return  json(array)
     */

    public function getJson($input)
    {
        $table  = 'products as a';
        $select = 'a.*';

        $replace_field  = [
            ['old_name' => 'product_name', 'new_name' => 'a.product_name']
        ];

        $param = [
            'input'     => $input,
            'select'    => $select,
            'table'     => $table,
            'replace_field' => $replace_field
        ];

        $data = $this->datagrid->query($param, function ($data) use ($input) {
            return $data;
        });

        return $data;
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
