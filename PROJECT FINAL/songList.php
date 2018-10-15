<html>

<head>
	<title>Song List</title>

	<meta charset="UTF-8">


	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

	<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

	<link rel="stylesheet" href="css/style.css">


</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<div style="display:flex;justify-content:center;align-items:center;width:100%;height:30%;background-color:white;align:center;">

		<table>
			<tr>
				<th>SongID</th>
				<th>Album</th>
				<th>Artist</th>
				<th>Title</th>
				<th>Youtube Link</th>
			</tr>
			<?php

$conn = mysqli_connect("localhost","root","","music2");
if($conn -> connect_error){
    die("Connection Failed:". $conn-> connect_error);

}

$sql = "SELECT * FROM mp3s";
$sql2 = "SELECT link, title FROM mp3s";
$result = $conn -> query($sql);
$result2 = mysqli_query($conn, $sql2);
$options = "";

if($result -> num_rows > 0 ){
    while($row = $result ->  fetch_assoc()){
        echo "<tr><td>".$row["id"]."&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   ".$row["album"].
        "&nbsp&nbsp&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp".$row["artist"].
        "&nbsp&nbsp&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp".$row["title"].
        "&nbsp&nbsp&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp".$row["link"]."</td></tr>";
        
    }
    echo "</table>";

}
else{
    echo "0 Result";
}
$conn -> close();

?>
	</div>
	<br>
	<br>
	<div>
		<br>
		<br>
	</div>
	<br>
	<br>
	<div>
		<form method="POST">
			<select name="video" style="width: 100%;">

				<?php while($row1 = mysqli_fetch_array($result2)):;?>

				<option value="<?php echo $row1[0];?>">
					<?php echo $row1[1];?>
				</option>

				<?php endwhile;?>

			</select>
			<br>
			<input type="submit" value="View Video">
         
		</form>
        
		
	</div>
    <?php 
            if (isset ($_POST['video'])) 
            {
                $text = $_POST['video'];
                $text = preg_replace("#.*youtube\.com/watch\?v=#", "", $text);
                $text = "<iframe width='420' height='345' src='https://www.youtube.com/embed/" .$text. "' frameborder='0' allowfullscreen></iframe>";
                echo $text;
            }
        ?>
	<br>
	<br>
	<div class="input-group input-group-icon">
		<a href="logout.php">
			<input type="button" value="Logout" autofocus>
		</a>
	</div>
	</div>
	</table>

	</div>
</body>

</html>