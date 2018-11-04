<?php 

class database{

	var $host = "localhost";
	var $uname = "root";
	var $pass = "";
	var $db = "database"; //isi sesuai nama database anda

	function __construct(){
		$this->conn = mysqli_connect($this->host, $this->uname, $this->pass, $this->db);//buatlah koneksi secara OOP

		if ($this->conn){
			echo "Koneksi database berhasil:)";
		}else{
			echo "Koneksi database gagal:(";
		}	
	}

	public function tampil_data(){
		$data = mysqli_query($this->conn, "SELECT * FROM tabel_user");//lengkapilah method tampil data
		//query select user

		while($d = mysqli_fetch_array($data)){
			$hasil[] = $d;
		}
		return $hasil++;
	}

	function input($nama, $alamat, $usia, $genre, $wisata){
		$gnr = implode(", ", $genre);
		$wst = implode(", ", $wisata);
		$arr = mysqli_query($this->conn,"INSERT INTO tabel_user(nama, alamat, usia, id, genre, wisata) VALUES ('$nama', '$alamat', ' ', '$usia', '$gnr', '$wst')");//buatlah method input
		//query inset into user
	}

	function hapus($id){//buatlah method hapus
		$arr = mysqli_query($this->conn, "DELETE FROM tabel_user where id='$id'");//query delete from id where id ='$id'
	}

	function edit($id){//lengkapilah method edit
		$data = mysqli_query($this->conn, "SELECT * FROM tabel_user WHERE id='$id'");//query select from user where id ='$id'
		while($d = mysqli_fetch_array($data)){
			$hasil[] = $d;
		}
		return $hasil;
	}

	function update($id, $nama, $alamat, $usia, $genre, $wisata){//buatlah method update
		$gnr = implode(", ", $genre);
		$wst = implode(", ", $wisata);
		$arr = mysqli_query($this->conn,"UPDATE tabel_user SET nama='$nama', alamat='$alamat', usia='$usia', genre='$gnr', wisata='$wst' WHERE id='$id'");
		//query update user set blablabla where id='$id'
	}
} 

?>