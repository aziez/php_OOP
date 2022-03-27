<?php
    class database{
        var $host = "localhost";
        var $username = "root";
        var $password = "Ajis13";
        var $dbname = "pelatihan_abdul_aziz";
        var $koneksi;

        function __construct(){
            $this->koneksi = mysqli_connect($this->host, $this->username, $this->password, $this->dbname);
        }

        function TampilData(){
            $data = mysqli_query($this->koneksi, "SELECT * FROM tbl_bayar");
            if(mysqli_num_rows($data) > 0){
                while($d = mysqli_fetch_array($data)){
                    $hasil[] = $d;
                }
                return $hasil;
            }
        }

        function input($nik, $bank, $pengirim, $rekening, $file, $tanggal){
         mysqli_query($this->koneksi, "INSERT INTO tbl_bayar (nik, nm_bank_pengirim, nm_pengirim, norek_pengirim, file, tgl_uploads) VALUES ('$nik','$bank','$pengirim','$rekening','$file','$tanggal')");
         
        }


        function Update($nik, $bank, $pengirim, $rekening, $file, $tanggal){
          mysqli_query($this->koneksi, "UPDATE tbl_bayar SET nik='$nik', nm_bank_pengirim='$bank', nm_pengirim='$pengirim', norek_pengirim='$rekening', file='$file', tgl_uploads='$tanggal' WHERE nik='$nik'");
         
        }

        function Edit($nik){
            $data = mysqli_query($this->koneksi, "SELECT * FROM tbl_bayar WHERE nik='$nik'");
            while($d = mysqli_fetch_array($data)){
                $hasil[] = $d;
            }

            return $hasil;

        }

        function DeleteData($nik){
          mysqli_query($this->koneksi, "DELETE FROM tbl_bayar WHERE nik='$nik'");
        
        }

    }

    ?>