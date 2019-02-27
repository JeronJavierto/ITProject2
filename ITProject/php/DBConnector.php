<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "database";

	$conn = new mysqli($servername, $username, $password, $dbname);
	if (!isset($_SESSION)) {
		session_start();
	}

	if ($conn -> connect_error) {
		die("Connection failed: " . $conn -> connect_error);
	}
?>