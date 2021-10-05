<?php

include("config.php");

if(isset($_POST['hps'])){

    $id = $_POST['id'];
    $sql = "DELETE FROM Tempat WHERE id=$id";
    $query = mysqli_query($db, $sql);
    if( $query ) {
        header('Location: kelola-wisata.php?pesan=hapus');
    } else {
        die("Gagal menyimpan perubahan...");
    }


} else {
    die("Akses dilarang...");
}

?>