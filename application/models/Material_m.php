<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Material_m extends CI_Model
{
    public function getMaterial($id = null)
    {
        $this->db->select('*');
        if ($id) {
            $this->db->where('id', $id);
        }
        return $this->db->get('tbl_material');
    }

    function addMaterial()
    {
        $data = [
            'kode' => $this->input->post('kode'),
            'nama' => $this->input->post('nama'),
            'jumlah' => $this->input->post('jumlah'),
            'satuan' => $this->input->post('satuan'),
            'harga_unit' => $this->input->post('harga_unit'),
            'ukuran' => $this->input->post('ukuran')
        ];

        // print_r($data);
        // die;
        $this->db->insert('tbl_material', $data);
    }

    function deleteMaterial($id)
    {
        $this->db->delete('tbl_material', ['id' => $id]);
    }

    function updateMaterial($id = null)
    {
        $data = [
            'kode' => $this->input->post('kode'),
            'nama' => $this->input->post('nama'),
            'satuan' => $this->input->post('satuan'),
            'harga_unit' => $this->input->post('harga_unit'),
            'ukuran' => $this->input->post('ukuran')
        ];
        $this->db->update('tbl_material', $data, ['id' => $id]);
    }

    function getPasokMaterial($id = null)
    {
        $this->db->select('A.id AS id,A.qty AS jumlah_pembelian, A.tgl_beli, A.no_pembelian,  B.nama AS nama_barang, B.kode AS kode_barang, C.nama AS nama_vendor ');
        if ($id) {
            $this->db->where('id', $id);
        }
        $this->db->join('tbl_material B', 'A.material_id = B.id');
        $this->db->join('tbl_vendor C', 'A.vendor_id = C.id');
        return $this->db->get('tbl_pasok A');
    }

    function addPasok()
    {
        $data = [
            'no_pembelian' => $this->input->post('no_pembelian'),
            'vendor_id' => $this->input->post('vendor_id'),
            'material_id' => $this->input->post('material_id'),
            'tgl_beli' => $this->input->post('tgl_beli'),
            'qty' => $this->input->post('qty')
        ];
        $this->db->insert('tbl_pasok', $data);
    }
}
