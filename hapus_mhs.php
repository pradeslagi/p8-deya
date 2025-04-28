<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_dea";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

$id = $_POST['id'];

$sql = "DELETE FROM tb_mhs WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);

if ($stmt->execute()) {
    echo "Data berhasil dihapus!";
} else {
    echo "Error: " . $conn->error;
}

$stmt->close();
$conn->close();
?>
