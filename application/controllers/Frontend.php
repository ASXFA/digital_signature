<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Frontend extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->content = array(
            'base_url' => base_url()
        );
    }

    public function cekDokumen($id = "")
    {
        $this->load->model('model_pengajuan');
        $this->load->model('model_pengajuan_detail');
        $idDecode = base64_decode(urldecode($id));
        $pengajuan = $this->model_pengajuan->getBy(array('id_pengajuan' => $idDecode))->row();
        $detail = $this->model_pengajuan_detail->getBy(array('id_pengajuan' => $idDecode))->result();
        $this->content['page'] = 'Detail Pengajuan';
        $this->content['pengajuan'] = $pengajuan;
        $this->content['detail'] = $detail;
        if (!empty($pengajuan)) {
            $this->twig->display('cekDokumen.html', $this->content);
        } else {
            echo "<h2> DATA TIDAK DITEMUKAN </h2>";
        }
    }
}
