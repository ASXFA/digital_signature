<?php

// use phpseclib\Crypt\RSA;
// use phpseclib\Crypt\PublicKeyLoader;
use phpseclib3\Crypt\RSA;
use phpseclib3\Crypt\RSA\Formats\Keys\PKCS8;
use phpseclib3\Crypt\RSA\PrivateKey;
use phpseclib3\Crypt\RSA\PublicKey;
use phpseclib3\Crypt\PublicKeyLoader;
use phpseclib3\Math\BigInteger;


defined('BASEPATH') or exit('No direct script access allowed');


class Signature extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->isLogin = $this->session->userdata('isLogin');
        if ($this->isLogin == 0) {
            redirect(base_url());
        }
        $this->id = $this->session->userdata('id_akun_login');
        $this->id_user = $this->session->userdata('id_user_akun_login');
        $this->email = $this->session->userdata('email_akun_login');
        $this->level = $this->session->userdata('level_akun_login');
        $this->load->model('model_level');
        $level = $this->model_level->getBy(array('id_level' => $this->level))->row();
        $this->content = array(
            'base_url' => base_url(),
            'id_akun_login' => $this->id,
            'id_user_akun_login' => $this->id_user,
            'email_akun_login' => $this->email,
            'level_akun_login' => $this->level,
            'nama_level_akun_login' => $level->nama_level
        );

        $this->load->model('model_user');
        $this->load->model('model_mhs');

        $aktor = array();

        // ambil data lengkap aktor login
        if ($this->level != 3) {
            $get = $this->model_user->getBy(array('id_user' => $this->id_user))->row();
            $this->content['nama_akun_login'] = $get->nama_user;
            $this->content['jabatan_akun_login'] = $get->jabatan_user;
            $this->content['nomor_induk_akun_login'] = $get->nip_user;
        } else if ($this->level == 3) {
            $get = $this->model_mhs->getBy(array('id_mhs' => $this->id_user))->row();
            $this->content['nama_akun_login'] = $get->nama_mhs;
            $this->content['jabatan_akun_login'] = 'Mahasiswa';
            $this->content['nomor_induk_akun_login'] = $get->npm_mhs;
        }
        $this->load->model('model_pengajuan');
        $this->load->model('model_pengajuan_detail');
    }

    public function sign()
    {
        $id_pengajuan = $this->input->post('id');
        $pengajuan = $this->model_pengajuan->getBy(array('id_pengajuan' => $id_pengajuan))->row();
        $detail = $this->model_pengajuan_detail->getBy(array('id_pengajuan' => $id_pengajuan, 'id_pengesah' => $this->id_user))->row();
        $key = PublicKeyLoader::loadPrivateKey(file_get_contents('./assets/file/key/' . $pengajuan->private_key_pengajuan), $password = false);
        $key2 = PublicKeyLoader::load(file_get_contents('./assets/file/key/' . $pengajuan->public_key_pengajuan), $password = false);
        $sign = $key->sign($this->id_user . '_' . $id_pengajuan);
        $this->load->library('ciqrcode');

        $config['cacheable']    = true; //boolean, the default is true
        $config['cachedir']     = './assets/'; //string, the default is application/cache/
        $config['errorlog']     = './assets/'; //string, the default is application/logs/
        $config['imagedir']     = './assets/file/images/'; //direktori penyimpanan qr code
        $config['quality']      = true; //boolean, the default is true
        $config['size']         = '1024'; //interger, the default is 1024
        $config['black']        = array(224, 255, 255); // array, default is array(255,255,255)
        $config['white']        = array(70, 130, 180); // array, default is array(0,0,0)
        $this->ciqrcode->initialize($config);

        $image_name = password_hash($this->id_user, PASSWORD_DEFAULT) . '.png';

        $params['data'] = $sign;
        $params['level'] = 'H';
        $params['size'] = 10;
        $params['savename'] = FCPATH . $config['imagedir'] . $image_name;
        $this->ciqrcode->generate($params);

        $data = array('digital_signature' => $sign, 'qr_code' => $image_name, 'status' => 1);
        $process = $this->model_pengajuan_detail->edit(array('id_pengajuan' => $id_pengajuan, 'id_pengesah' => $this->id_user), $data);
        $output = array();
        if ($process) {
            $output['cond'] = '1';
            $output['msg'] = "Berhasil menandatangani !";
        } else {
            $output['cond'] = '0';
            $output['msg'] = "Gagal menandatangani !";
        }

        echo json_encode($output);
        // var_dump($key2->verify('zzzz', $key->sign('zzzz')));

        // $this->twig->display('dashboard.html', $this->content);
    }

    public function signed()
    {
        // $private = RSA::createKey()->withMGFHash('sha256');
        // $public = $private->getPublicKey()->withMGFHash('sha256');
        // $data = $private->toString('PSS');
        // $data2 = $public->toString('PSS');
        // $q = sha1('private') . '.pem';
        // write_file('./assets/file/key/' . $q, $data);
        // $p = sha1('public') . '.pem';
        // write_file('./assets/file/key/' . $p, $data2);
        //     $this->load->library('ciqrcode');
        //     $config['cacheable']    = true; //boolean, the default is true
        //     $config['cachedir']     = './assets/'; //string, the default is application/cache/
        //     $config['errorlog']     = './assets/'; //string, the default is application/logs/
        //     $config['imagedir']     = './assets/images/'; //direktori penyimpanan qr code
        //     $config['quality']      = true; //boolean, the default is true
        //     $config['size']         = '1024'; //interger, the default is 1024
        //     $config['black']        = array(224, 255, 255); // array, default is array(255,255,255)
        //     $config['white']        = array(70, 130, 180); // array, default is array(0,0,0)
        //     $this->ciqrcode->initialize($config);

        //     $image_name = sha1($this->id_user) . '.png';

        //     $params['data'] = '123';
        //     $params['level'] = 'H';
        //     $params['size'] = 10;
        //     $params['savename'] = FCPATH . $config['imagedir'] . $image_name;
        //     $this->ciqrcode->generate($params);
    }
}
