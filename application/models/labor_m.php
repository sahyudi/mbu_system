<?php

class Labor_m extends CI_Model
{

    function __construct()
    {
        parent::__construct();
        $this->load->library('datagrid');
    }

    public function all()
    {
        $groups = $this->db->get('tbl_ruangan')->result();
        return $groups;
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
        $table  = 'tbl_ruangan as a';
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
