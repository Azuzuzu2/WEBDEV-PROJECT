<html>
<head>
        <title> Password Process </title>
</head>
<body>
<?php
	$username=$_GET["username"];
	$password=$_GET["password"];
	$error = 0;
	$con=mysqli_connect("localhost" , "root" , "" , "music2");
	$rows=mysqli_query($con , "select * from users where username='$username' and password=md5($password)");
	$count=mysqli_num_rows($rows);
	mysqli_close($con);

	if (empty($username)){
	$username_err = "Please enter a username.";
	$error +=1; 
	}
	if (empty($password)){
		$username_err = "Please enter a password.";
		$error +=1; 
	}
	if ($error == 0){
		$pass = md5($password);
		if($count == 1){
			echo "Francis";
		}else{
			$query = "select * from users where username = '$username' and password = '$password'";

			if($username == "Admin" || $username == "admin")
			{
			header("location:form.html");
			
		}	else{
				header("location:songList.php");

	}
}
}
else {
	header("location:index.php");
}


	
	