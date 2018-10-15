<html>
<head> <title> Upload New Song </title> <head>
<body>
<?php

	$id=$_GET["id"];
	$album=$_GET["album"];
	$artist=$_GET["artist"];
	$title=$_GET["title"];
	$link=$_GET["link"];

	$conn=mysqli_connect("localhost" , "root" , "" , "music2");
  if (mysqli_connect_errno())
  {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
	$rows=mysqli_query($conn, "insert into mp3s values('$id','$album','$artist','$title', '$link')");

         
   
	mysqli_close($conn);

  header("location:form.html");
?>
</body>
</html>

