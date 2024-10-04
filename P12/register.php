<?php
require 'koneksi.php';
$nama      = $_POST["nama"];
$password   = $_POST["password"];

// Set role automatically to 'user'
$role = 'user';

// Include the 'role' column in your SQL query
$query_sql = "INSERT INTO user ( nama, password, role) 
            VALUES ( '$nama', '$password', '$role')";

if (mysqli_query($conn, $query_sql)) {
    header("Location: index.html"); 
} else {
    echo "Pendaftaran Gagal : " . mysqli_error($conn);
}
?>