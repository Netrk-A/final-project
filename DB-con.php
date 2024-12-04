<?php
$servername = "93.127.203.247"; 
$username = "mod1"; 
$password = "12312300Gg#@"; 
$dbname = "auction";

$conn = new mysqli($servername, $username, $password, $dbname);
mysqli_set_charset($conn, "utf8");


// Check connection

if (!$conn) { 
    die("Connection failed: " . mysqli_connect_error()); 
}

