<!DOCTYPE html>

<head>

</head>

<body>
<?php


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "project";


$fname=$_POST['name'];
$email=$_POST['email'];
$pass = $_POST['pass'];
$bdate = $_POST['dob'];
$add = $_POST['addr'];




// Create connection   "localhost","root","","fertilizer"
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) 
{
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO `users`(`Firstname`, `Email`, `Password`, `DOB`, `Address`) 
VALUES ('$fname','$email','$pass','$bdate','$add')";


//$sql = "INSERT INTO login (first_name, last_name,user_email,user_password,user_mobile,user_bdate,user_type,user_gender,security_q1,security_a1,user_address,user_dac,user_laa)
//VALUES ('fname', 'lname', 'email','pass','986','25/02/2000','1','1','What is your favourite food?','mango','add','15-11-2020','15-12-2020')";

if(mysqli_query($conn, $sql)) {
  echo '<script>alert("Record Added Sucessfully")</script>';
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

header("location:index_login.html?login=1");
/*
//Get highest user_id number from the table in order to assign it to image name of the user 

$sql = "SELECT MAX(user_id) as uid FROM login";

$result = mysqli_query($conn, $sql);


if (mysqli_num_rows($result) > 0) 
{
  // output data of each row
   $row = mysqli_fetch_assoc($result);
   $img_name = $row['uid'] + 1;
  
} else {
  echo "0 results";
}
*/
mysqli_close($conn);

?>
</body>
</html>

