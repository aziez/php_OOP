<?php
    include '../database.php';
    $db = new database();

    $aksi = $_GET['aksi'];

    if($aksi == "tambah"){
        $nik =  $_POST['nik'];
        $bank = $_POST['bank'];
        $pengirim = $_POST['pengirim'];
        $rekening = $_POST['rekening'];
        $file = $_POST['file'];
        $tanggal = $_POST['tanggal'];

        $db->input($nik, $bank, $pengirim, $rekening, $file, $tanggal);

        header("location:index.php");

    }elseif($aksi == "update"){

        $nik = $_POST['nik'];
        $bank = $_POST['bank'];
        $pengirim = $_POST['pengirim'];
        $rekening = $_POST['rekening'];
        $file = $_POST['file'];
        $tanggal = $_POST['tanggal'];

        $db->Update($nik, $bank, $pengirim, $rekening, $file, $tanggal);
        header("location:index.php");
        
    }elseif($aksi == "delete"){
        $nik = $_GET['nik'];
        $db->DeleteData($nik);
        header("location:index.php");
    }
?>