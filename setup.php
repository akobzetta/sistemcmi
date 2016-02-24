<?php
$page_setting = "selected";
require_once ("head.php");

?>
<?php

if (isset($_POST["pass"]))
{
	$pwd = mysqli_real_escape_string($conn, ($_POST["pwd"]));
	$password = password_hash($pwd, PASSWORD_DEFAULT);
	mysqli_query($conn, "INSERT INTO users (username, password, rank) VALUES ('Admin', '{$password}', '3');");
	echo "done: <br />Username: Admin<br />Password: {$pwd}";
?>
		  <div class="panel panel-default">
  <div class="panel-heading">Log Masuk</div>
  <div class="panel-body">
  
  <form role="form" action="#" method="post">
  <div class="form-group">
    <label for="username"><span class="glyphicon glyphicon-user"></span> Nama Pengguna:</label>
    <input type="text" name="username" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="pwd"><span class="glyphicon glyphicon-lock"></span> Katalaluan:</label>
    <input type="password" name="pwd" class="form-control" id="pwd">
  </div>
  
  <button type="submit" name="loginuser" class="btn btn-default"><span class="glyphicon glyphicon-ok-sign"></span> Log Masuk</button>
</form>
  
  </div>
</div>
<?php
	unlink("setup.php");
}

if (!isset($_POST["pass"]))
{
?>
<form action="" method="post">
 <div class="form-group">
	<div class="input-group">
	<span class="input-group-addon" >Username</span>
    <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Admin" disabled>
	 </div>
  </div>
 <div class="form-group">
	<div class="input-group">
	<span class="input-group-addon" >Password</span>
    <input type="password" class="form-control" id="pwd" name="pwd">
	 </div>
  </div>
<input name="pass" type="submit" value="Setup!" class='btn btn-success'>
</form>
<?php
} ?>
