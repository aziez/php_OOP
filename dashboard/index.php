<?php
//menambahkan file database.php
    include '../database.php';
//membuat object dari class yang bernama database
    $db = new database();
?>

<h2>Data Bayar</h2>

<a href="input.php">Tambah Data</a>

<table border="1">
    <tr>
        <th>No</th>
        <th>NIK</th>
        <th>Bank</th>
        <th>Pengirim</th>
        <th>Rekening</th>
        <th>file</th>
        <th>Tanggal</th>
        <th>Aksi</th>
    </tr>

    <?php
        $no = 1;
        if(!empty($db->TampilData())) {
            foreach($db->TampilData() as $data) { ?>
            <tr>
            <td><?php echo $no++; ?></td>
            <td><?php echo $data['nik']; ?></td>
            <td><?php echo $data['nm_bank_pengirim']; ?></td>
            <td><?php echo $data['nm_pengirim']; ?></td>
            <td><?php echo $data['norek_pengirim']; ?></td>
            <td><?php echo $data['file']; ?></td>
            <td><?php echo $data['tgl_uploads']; ?></td>
            <td>
                <a href="edit.php?nik=<?php echo $data['nik']; ?>&aksi=edit">Edit</a>
                <a href="proses.php?nik=<?php echo $data['nik']; ?>&aksi=delete">Delete</a>
            </td>
            </tr>
            <?php } } ?>
</table>