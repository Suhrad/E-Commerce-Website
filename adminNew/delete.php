<?php
session_start();
include("config.php");
if(!(isset($_SESSION['adminUser'])))
{
			header("location:index.php");		
}
?>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Vegefoods</title>
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!-- Fontawesome core CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!--GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!--Slide Show Css -->
    <link href="assets/ItemSlider/css/main-style.css" rel="stylesheet" />
    <!-- custom CSS here -->
    <link href="assets/css/style.css" rel="stylesheet" />
	
</head>
<body>
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><strong>Vegefoods</strong></a>
            </div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                <ul class="nav navbar-nav navbar-right">
                    <li><a href="delete.php">delete user</a></li>
					<li><a href="index.php?logout=1">Logout</a></li>
					<li><a href="updateProduct.php">Update Existing Product</a></li>
		</ul>
	</div>
    <style>
	
    table {
      border-collapse: collapse;
      border-spacing: 0;
      width: 100%;
      border: 2px solid #ddd;
    }
    
    th, td {
      text-align: left;
      padding: 10px;
    }
    
    tr:nth-child(even) {
      background-color: #f0f0f0;
    }
 </style>


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
    
    $sql = "SELECT * FROM users";
    $result = mysqli_query($conn, $sql);
    
    if (mysqli_num_rows($result) > 0) 
    {
      // output data of each row
      echo "<h3 style='text-align:center'> List of Users </h3>";
      echo '<table>
                              <tr>
                                <th>ID</th>
                                <th>First Name</th>
                                <th>Email </th>
                              </tr>';
      while($row = mysqli_fetch_assoc($result)) 
      {
        echo "<tr><td>" .  $row['id'] .  "</td><td>" . "<a href='delete_user.php?uid=" .  $row['id'] . "'>" . $row['Firstname'] . "</a></td><td>" .  $row['Email'] ."</td><td>";
      }
      echo "</table>";
    } 
    
        else 
        {
          echo "0 results";
        }
    
        mysqli_close($conn);
 ?>
<h5 style='text-align:left;color:red'> Click on the name to delete the user</h5>
</body>
</html>    