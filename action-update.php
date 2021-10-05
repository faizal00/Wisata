<?php

include("config.php");

if(isset($_POST['upd'])){

    $id = $_POST['id'];
    $nama=$_POST['nama'];
    $lokasi=$_POST['lokasi'];
    $jenis=$_POST['jenis'];

    $sql = "UPDATE Tempat SET Nama_Tempat='$nama' , Jenis='$jenis', Lokasi='$lokasi' WHERE id=$id";
    $query = mysqli_query($db, $sql);

    if( $query ) {
        header('Location: edit-wisata.php?pesan=edit');
    } else {
        die("Gagal menyimpan perubahan...");
    }


} else {
    die("Akses dilarang...");
}

?>