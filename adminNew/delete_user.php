<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "project";

$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) 
{
  die("Connection failed: " . mysqli_connect_error());
}
$sql = "DELETE FROM `users` WHERE id=" . $_GET['uid'];

if (mysqli_query($conn, $sql)) {
  header("Location:delete.php");
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);



?>
