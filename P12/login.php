<?php
require 'koneksi.php';
$nama = $_POST["nama"];
$password = $_POST["password"];

$query_sql = "SELECT * FROM user
            WHERE nama = '$nama' AND password = '$password'";

$result = mysqli_query($conn, $query_sql);

if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    if ($row['role'] == 'admin') {
        header("Location: back.png");
    } elseif ($row['role'] == 'user') {
        header("Location: bcg.jpg");
    }
} else {
    echo "<center><h1>Email atau Password Anda Salah. Silahkan Coba Login Kembali.</h1>
            <button><strong><a href='login.html'>Login</a></strong></button></center>";
}
?>