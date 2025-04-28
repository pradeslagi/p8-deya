<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_dea";

// Koneksi
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Ambil data
$sql = "SELECT * FROM tb_mhs ORDER BY id ASC";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Data Mahasiswa - Editable & Hapus</title>
    <style>
        body {
            background: #f4f6f8;
            font-family: 'Poppins', sans-serif;
        }
        .container {
            width: 95%;
            max-width: 1200px;
            margin: 40px auto;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .subtitle {
            text-align: center;
            font-size: 13px;
            color: #777;
            margin-bottom: 25px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 15px;
        }
        th, td {
            padding: 10px 14px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background: #4CAF50;
            color: white;
        }
        td[contenteditable="true"] {
            background: #f9f9f9;
            cursor: pointer;
        }
        td[contenteditable="true"]:hover {
            background: #eef;
        }
        button {
            padding: 5px 10px;
            background: #ff4d4d;
            border: none;
            color: white;
            border-radius: 6px;
            cursor: pointer;
        }
        button:hover {
            background: #e60000;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Data Mahasiswa</h2>
    <div class="subtitle">(klik untuk edit)</div>

    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Nama</th>
                <th>NIM</th>
                <th>Kelas</th>
                <th>Alamat</th>
                <th>Desa</th>
                <th>Kecamatan</th>
                <th>Opsi</th>
            </tr>
        </thead>
        <tbody>
            <?php 
            if ($result->num_rows > 0) {
                $no = 1;
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>".$no++."</td>";
                    echo "<td contenteditable='true' onBlur=\"updateData(this, 'nama', ".$row['id'].")\">".$row['nama']."</td>";
                    echo "<td contenteditable='true' onBlur=\"updateData(this, 'nim', ".$row['id'].")\">".$row['nim']."</td>";
                    echo "<td contenteditable='true' onBlur=\"updateData(this, 'kelas', ".$row['id'].")\">".$row['kelas']."</td>";
                    echo "<td contenteditable='true' onBlur=\"updateData(this, 'alamat', ".$row['id'].")\">".$row['alamat']."</td>";
                    echo "<td contenteditable='true' onBlur=\"updateData(this, 'desa', ".$row['id'].")\">".$row['desa']."</td>";
                    echo "<td contenteditable='true' onBlur=\"updateData(this, 'kecamatan', ".$row['id'].")\">".$row['kecamatan']."</td>";
                    echo "<td><button onclick=\"hapusData(".$row['id'].")\">Hapus</button></td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='8'>Tidak ada data mahasiswa</td></tr>";
            }
            ?>
        </tbody>
    </table>
</div>

<script>
// Fungsi Update
function updateData(element, column, id) {
    var value = element.innerText.trim();
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "update_mhs.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            console.log("Update berhasil:", xhr.responseText);
        }
    }
    xhr.send("id=" + id + "&column=" + column + "&value=" + encodeURIComponent(value));
}

// Fungsi Hapus
function hapusData(id) {
    if (confirm("Yakin mau hapus data ini?")) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "hapus_mhs.php", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                alert("Data berhasil dihapus!");
                location.reload();
            }
        }
        xhr.send("id=" + id);
    }
}
</script>

</body>
</html>

<?php
$conn->close();
?>
