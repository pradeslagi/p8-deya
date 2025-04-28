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
$column = $_POST['column'];
$value = $_POST['value'];

$sql = "UPDATE tb_mhs SET $column = ? WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("si", $value, $id);

if ($stmt->execute()) {
    echo "Data berhasil diupdate!";
} else {
    echo "Error: " . $conn->error;
}

$stmt->close();
$conn->close();
?>
