<?php

class Pengadaan_m extends CI_Model
{

	function __construct()
	{
		parent::__construct();
		$this->load->library('datagrid');
	}

	/**
	 * Check User Credentials
	 *
	 * @access 	public
	 * @param 	
	 * @return 	json(array)
	 */

	public function attempt($input)
	{
		$query = $this->db->from('users u')
			->select('u.*, g.group_name')
			->where('email', $input['email'])
			->where('password', $input['password'])
			->join('groups as g', 'g.id = u.id', 'left')
			->get();

		return $query->row();
	}
	
	/**
	 * Datagrid Data
	 *
	 * @access 	public
	 * @param 	
	 * @return 	json(array)
	 */

	public function getJson($input)
	{
		$table  = 'tbl_pasok as a';
		$select = 'a.*, m.nama as nama_material, v.nama as nama_vendor';

		$replace_field  = [
			['old_name' => 'nama', 'new_name' => 'a.nama'],
		];

		$param = [
			'input'     => $input,
			'select'    => $select,
			'table'     => $table,
			'replace_field' => $replace_field
		];

		$data = $this->datagrid->query($param, function ($data) use ($input) {
            return $data->join('tbl_material as m', 'm.id = a.material_id', 'left')
                        ->join('tbl_vendor as v','v.id = a.vendor_id','left');
		});

		return $data;
	}
}
