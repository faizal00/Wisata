<?php

include("config.php");

if(isset($_POST['tambah'])){

    $nama = $_POST['nama'];
    $lokasi = $_POST['lokasi'];
    $jenis = $_POST['jenis'];

    $sql = "INSERT INTO Tempat  (Nama_Tempat, Lokasi, Jenis) VALUE ('$nama', '$lokasi', '$jenis')";
    $query = mysqli_query($db, $sql);

    if( $query ) {
        header('Location: home.php?status=sukses');
    } else {
        header('Location: home.php?status=gagal');
    }


} else {
    die("Akses dilarang...");
}

?>