<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function cekDokumen($id = "")
    {
        $this->load->model('model_pengajuan');
        $this->load->model('model_pengajuan_detail');
        $idDecode = base64_decode($id);

        $this->twig->display('dashboard.html', $this->content);
    }
}
