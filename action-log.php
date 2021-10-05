<?php 
session_start();
 
include 'config.php';
 
$username = $_POST['username'];
$password = $_POST['password'];
 
$data = mysqli_query($db,"select * from User where Username='$username' and Password='$password'");
$dataa = mysqli_fetch_array ($data);

$cek = mysqli_num_rows($data);
 
if($cek > 0){
	$_SESSION['User'] = $username;
	$_SESSION['status'] = "login";
	$_SESSION['id'] = $dataa[0]['id'];
	header("location:home.php?pesan=sukses");	

}
else{
	header("location:index.php?pesan=gagal");
}
?>


