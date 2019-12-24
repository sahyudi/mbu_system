<?php

class Mesin_m extends CI_Model
{

    function __construct()
    {
        parent::__construct();
        $this->load->library('datagrid');
    }

    /**
     * Get List of Groups
     *
     * @access 	public
     * @param 	
     * @return 	json(array)
     */

    public function all()
    {
        $groups = $this->db->get('tbl_mesin')->result();
        return $groups;
    }

    /**
     * Get Group by ID
     *
     * @access  public
     * @param   
     * @return  json(array)
     */

    public function get_group($id)
    {
        $query = $this->db->from('groups g')
            ->select('g.*')
            ->where('g.id', $id)
            ->get();

        return $query->row();
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
        $table  = 'tbl_mesin as a';
        $select = 'a.*';

        $replace_field  = [
            ['old_name' => 'nama', 'new_name' => 'a.nama']
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
}
