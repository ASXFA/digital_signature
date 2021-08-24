<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Mhs extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->isLogin = $this->session->userdata('isLogin');
        if ($this->isLogin == 0) {
            redirect(base_url());
        }
        // set timezone 
        date_default_timezone_set("Asia/Bangkok");
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

        $this->load->model('model_log');
    }

    public function listMhs()
    {
        $dariDB = $this->model_mhs->cekKode();
        $nourut = substr($dariDB, 3, 4);
        $kode = $nourut + 1;
        if ($kode <= 9) {
            $id_mhs = 'MHS000' . strval($kode);
        } else if ($kode > 9 && $kode <= 99) {
            $id_mhs = 'MHS00' . strval($kode);
        } else if ($kode > 99 && $kode <= 999) {
            $id_mhs = 'MHS0' . strval($kode);
        } else {
            $id_mhs = 'MHS' . strval($kode);
        }
        $this->content['page'] = 'Data Mahasiswa';
        $this->content['level'] = $this->model_level->getAll();
        $this->content['kode'] = $id_mhs;
        $this->twig->display('mhs.html', $this->content);
    }

    public function mhsLists()
    {
        $mhs = $this->model_mhs->make_datatables();
        $data = array();
        $no = 0;
        if (!empty($mhs)) {
            foreach ($mhs as $row) {
                if ($this->id_user != $row->id_mhs && $row->deleted_at == NULL) {
                    $sub_data = array();
                    $sub_data[] = $no + 1;
                    $sub_data[] = $row->id_mhs;
                    $sub_data[] = $row->nama_mhs;
                    $sub_data[] = $row->npm_mhs;
                    $sub_data[] = $row->prodi_mhs;
                    $sub_data[] = $row->no_hp_mhs;
                    // $sub_data[] = date('d F Y', strtotime($row->created_at));
                    // $sub_data[] = $row->created_by;
                    $sub_data[] = '<div class="btn-group dropleft">
                    <button class="btn btn-light btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-ellipsis-h"></i>
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item detail" id="' . $row->id_mhs . '" href="#"><i class="fas fa-eye"></i> Detail</a>
                        <a class="dropdown-item hapus" id="' . $row->id_mhs . '" href="#"><i class="fas fa-trash"></i> Hapus</a>
                    </div>
                    </div>';
                    $data[] = $sub_data;
                    $no++;
                }
            }
        }
        // <a class="dropdown-item edit" id="' . $row->id_mhs . '" href="#"><i class="fas fa-edit"></i> Edit</a> fungsi edit
        $output = array(
            'draw' => intval($_POST['draw']),
            'recordsTotal' => $no,
            'recordsFiltered' => $no,
            'data' => $data
        );

        echo json_encode($output);
    }

    public function mhsById()
    {
        $id = $this->input->post('id');
        $this->load->model('model_akun');
        $akun = $this->model_akun->getBy(array('id_user_akun' => $id))->row();
        $mhs = $this->model_mhs->getBy(array('id_mhs' => $id))->row();
        $level = $this->model_level->getBy(array('id_level' => $akun->level_akun))->row();
        $output = array(
            'id_mhs' => $mhs->id_mhs,
            'nama_mhs' => $mhs->nama_mhs,
            'prodi_mhs' => $mhs->prodi_mhs,
            'npm_mhs' => $mhs->npm_mhs,
            'no_hp_mhs' => $mhs->no_hp_mhs,
            'created_at' => $mhs->created_at,
            'created_by' => $mhs->created_by,
            'updated_at' => $mhs->updated_at,
            'updated_by' => $mhs->updated_by,
            'deleted_at' => $mhs->deleted_at,
            'deleted_by' => $mhs->deleted_by,
            'email_akun' => $akun->email_akun,
            'level_akun' => $level->nama_level,
        );
        echo json_encode($output);
    }

    // public function gantiStatusUsers()
    // {
    //     $id = $this->input->post('id');
    //     $data = array('status' => $this->input->post('status'));
    //     $process = $this->model_users->editUsers($id, $data);
    //     echo json_encode($process);
    // }

    public function doMhs()
    {
        $this->load->model('model_akun');
        $operation = $this->input->post('operation');
        $output = array();
        if ($operation == "Tambah") {
            $data = array(
                'id_mhs' => $this->input->post('id_mhs'),
                'nama_mhs' => $this->input->post('nama_mhs'),
                'prodi_mhs' => $this->input->post('prodi_mhs'),
                'npm_mhs' => $this->input->post('npm_mhs'),
                'no_hp_mhs' => $this->input->post('no_hp_mhs'),
                'created_by' => $this->content['nama_akun_login']
            );
            $insertmhs = $this->model_mhs->insert($data);

            $data2 = array(
                'id_user_akun' => $this->input->post('id_mhs'),
                'email_akun' => $this->input->post('email_akun'),
                'password_akun' => password_hash($this->input->post('email_akun'), PASSWORD_DEFAULT),
                'level_akun' => $this->input->post('level_akun'),
                'created_by' => $this->content['nama_akun_login']
            );
            $process = $this->model_akun->insert($data2);

            // Masukan ke log
            $log2 = array(
                'nama_aktor_log' => $this->content['nama_akun_login'],
                'aksi_log' => 'Menambahkan Mahasiswa denga ID ' . $this->input->post('id_mhs') . ' dan Akunnya'
            );
            $this->model_log->insert($log2);

            if ($process) {
                $output['cond'] = '1';
                $output['msg'] = 'Menambahkan data berhasil !';
            } else {
                $output['cond'] = '0';
                $output['msg'] = 'Menambahkan data gagal !';
            }
        } else if ($operation == "Edit") {
            $id = $this->input->post('id_mhs');
            $data = array(
                'nama_mhs' => $this->input->post('nama_mhs'),
                'prodi_mhs' => $this->input->post('prodi_mhs'),
                'npm_mhs' => $this->input->post('npm_mhs'),
                'no_hp_mhs' => $this->input->post('no_hp_mhs'),
                'updated_at' => date('Y-m-d h:i:sa'),
                'updated_by' => $this->content['nama_akun_login']
            );
            $editmhs = $this->model_mhs->edit(array('id_mhs' => $id), $data);

            $data2 = array(
                'email_akun' => $this->input->post('email_akun'),
                'level_akun' => $this->input->post('level_akun'),
                'updated_at' => date('Y-m-d h:i:sa'),
                'updated_by' => $this->content['nama_akun_login']
            );
            $process = $this->model_akun->edit(array('id_user_akun' => $id), $data2);
            // Masukan ke log
            $log1 = array(
                'nama_aktor_log' => $this->content['nama_akun_login'],
                'aksi_log' => 'Edit Mahasiswa dengan ID ' . $id . ' beserta Akunnya'
            );
            $this->model_log->insert($log1);

            if ($process) {
                $output['cond'] = '1';
                $output['msg'] = 'Edit Data Berhasil !';
            } else {
                $output['cond'] = '0';
                $output['msg'] = 'Edit Data Gagal !';
            }
        }
        echo json_encode($output);
    }

    public function deleteMhs()
    {
        $this->load->model('model_akun');
        $id = $this->input->post('id');
        $data = array(
            'deleted_at' => date('Y-m-d h:i:sa'),
            'deleted_by' => $this->content['nama_akun_login']
        );
        $this->model_akun->edit(array('id_user_akun' => $id), $data);
        $this->model_log->insert(array('nama_aktor_log' => $this->content['nama_akun_login'], 'aksi_log' => 'Hapus Sementara User dengan ID ' . $id . ' dan Akunnya'));
        $process = $this->model_mhs->edit(array('id_mhs' => $id), $data);
        if ($process) {
            $output['cond'] = '1';
            $output['msg'] = 'Hapus Data Sementara Berhasil !';
        } else {
            $output['cond'] = '0';
            $output['msg'] = 'Hapus Data Sementara Gagal !';
        }
        echo json_encode($output);
    }

    public function viewHapusMhs()
    {
        $this->content['page'] = 'List Data Hapus';
        $this->twig->display('listHapusMhs.html', $this->content);
    }

    public function listHapusMhs()
    {
        $mhs = $this->model_mhs->make_datatables();
        $data = array();
        $no = 0;
        if (!empty($mhs)) {
            foreach ($mhs as $row) {
                if ($this->id_user != $row->id_mhs && $row->deleted_at != NULL) {
                    $sub_data = array();
                    $sub_data[] = $no + 1;
                    $sub_data[] = $row->id_mhs;
                    $sub_data[] = $row->nama_mhs;
                    $sub_data[] = $row->npm_mhs;
                    $sub_data[] = $row->prodi_mhs;
                    $sub_data[] = $row->no_hp_mhs;
                    $sub_data[] = date('d F Y', strtotime($row->created_at));
                    $sub_data[] = $row->created_by;
                    $sub_data[] = '<div class="btn-group dropleft">
                <button class="btn btn-light btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-ellipsis-h"></i>
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item detail" id="' . $row->id_mhs . '" href="#"><i class="fas fa-eye"></i> Detail</a>
                    <a class="dropdown-item restore" id="' . $row->id_mhs . '" href="#"><i class="fas fa-undo"></i> Restore</a>
                </div>
              </div>';
                    $data[] = $sub_data;
                    $no++;
                }
            }
        }
        $output = array(
            'draw' => intval($_POST['draw']),
            'recordsTotal' => $no,
            'recordsFiltered' => $no,
            'data' => $data
        );

        echo json_encode($output);
    }

    public function restoreMhs()
    {
        $this->load->model('model_akun');
        $output = array();
        $id = $this->input->post('id');
        $data = array(
            'deleted_at' => NULL,
            'deleted_by' => NULL
        );
        $this->model_mhs->edit(array('id_mhs' => $id), $data);
        $process = $this->model_akun->edit(array('id_user_akun' => $id), $data);

        // Masukan ke log
        $log2 = array(
            'nama_aktor_log' => $this->content['nama_akun_login'],
            'aksi_log' => 'Restore Data User dengan ID ' . $id . ' dan Akun'
        );
        $this->model_log->insert($log2);
        if ($process) {
            $output['cond'] = '1';
            $output['msg'] = 'Restore berhasil !';
        } else {
            $output['cond'] = '0';
            $output['msg'] = 'Restore gagal !';
        }
        echo json_encode($output);
    }

    public function profilMhs()
    {
        $this->load->model('model_akun');
        $mhs = $this->model_mhs->getBy(array('id_mhs' => $this->id_user))->row();
        $akun = $this->model_akun->getBy(array('id_user_akun' => $this->id_user))->row();
        $level = $this->model_level->getBy(array('id_level' => $akun->level_akun))->row();
        $this->content['mhs'] = $mhs;
        $this->content['page'] = 'Profil Saya';
        $this->content['akun'] = $akun;
        $this->content['level'] = $level;
        $this->twig->display('profilMhs.html', $this->content);
    }
}
