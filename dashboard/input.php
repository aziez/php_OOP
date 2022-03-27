<!DOCTYPE html>
<html lang="en">
<head>
    <title>Tambah Data</title>
</head>
<body>
    <h2>Tambah Data</h2>

    <form action="proses.php?aksi=tambah" method="POST">
        <table>
            <tr>
                <td>NIK</td>
                <td><input type="text" name="nik"></td>
            </tr>
            <tr>
                <td>Bank</td>
                <td><input type="text" name="bank" ></td>
            </tr>
            <tr>
                <td>Rekening</td>
                <td><input type="text" name="rekening"></td>
            </tr>
            <tr>
                <td>Pengirim</td>
                <td><input type="text" name="pengirim"></td>
            </tr>
            <tr>
                <td>Rekening</td>
                <td><input type="text" name="rekening"></td>
            </tr>
            <tr>
                <td>file</td>
                <td><input type="text" name="file"></td>
            <tr>
                <td>Tanggal</td>
                <td><input type="date" name="tanggal"></td>
            </tr>

            <tr>
                <td></td>
                <td><input type="submit" value="Simpan"></td>
            </tr>
        </table>
    </form>
</body>
</html>