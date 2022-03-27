<?php
include '../database.php';
$db = new database();
?>

<h3>Edit Data</h3>
<form action="proses.php?aksi=update" method="POST">
    <?php
    foreach ($db->Edit($_GET['nik']) as $data) { ?>
        <table>
            <tr>
                <td>NIK</td>
                <td>
                    <input type="text" name="nik" value="<?php echo $data['nik']; ?>" disabled>
                </td>
            </tr>
            <tr>
                <td>Bank</td>
                <td>
                    <input type="text" name="bank" value="<?php echo $data['nm_bank_pengirim']; ?>">
                </td>
            </tr>
            <tr>
                <td>Pengirim</td>
                <td>
                    <input type="text" name="pengirim" value="<?php echo $data['nm_pengirim']; ?>">
                </td>
            </tr>
            <tr>
                <td>Rekening</td>
                <td>
                    <input type="text" name="rekening" value="<?php echo $data['norek_pengirim']; ?>">
                </td>
            </tr>
            <tr>
                <td>file</td>
                <td>
                    <input type="text" name="file" value="<?php echo $data['file']; ?>">
                </td>
            </tr>
            <tr>
                <td>Tanggal</td>
                <td>
                    <input type="date" name="tanggal" value="<?php echo $data['tgl_uploads']; ?>">
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Simpan"></td>
            </tr>
        </table>
    <?php } ?>
</form>