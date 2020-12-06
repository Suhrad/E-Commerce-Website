<?php
session_start();
include_once("config.php");
$current_url = urlencode($url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
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
  
	<div class="col-md-4 text-center col-sm-6 col-xs-6">
        
	</div>
	<div class="col-md-4 text-center col-sm-6 col-xs-6">
        <div class="thumbnail product-box">
			 <form>
                    <div class="row">
                        <p><a href="index.php">Invalid Username/Password</a></p>
                    </div>
		
                </form>
		</div>
	</div>
</body>