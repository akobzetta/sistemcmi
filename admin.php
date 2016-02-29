	<?php
		$page_admin = "selected";
		require_once("head.php");
		if(!isset($_SESSION["userlogin"]))
		{
			header("Location:".$url);
		}
	?>
	<?php
	$checkrank = mysqli_query($conn, "SELECT * FROM users WHERE username = '{$_SESSION["userlogin"]}'");
	while($check = mysqli_fetch_assoc($checkrank))
	{
	if($check["rank"] == 3)
	{
	if(isset($_POST["adduser"]))
	{
		if($_POST["username"] != null && $_POST["pwd"] != null && $_POST["rank"] != null)
		{
		$username = mysqli_real_escape_string($conn, $_POST["username"]);
		$pwd = mysqli_real_escape_string($conn, $_POST["pwd"]);
		$password = password_hash($pwd, PASSWORD_DEFAULT);
		$rank = mysqli_real_escape_string($conn, $_POST["rank"]);
		$usercheck = mysqli_query($conn, "SELECT * FROM users WHERE username = '{$username}' LIMIT 1");
		if(mysqli_num_rows($usercheck) >= 1)
		{
			?>
		<div class="alert alert-danger">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Error!</strong> User Exist.
						</div>
		<?php
		}
		else
		{
			
		mysqli_query($conn, "INSERT INTO users (username, password, rank) VALUES ('{$username}', '{$password}', '{$rank}')");
		
		?>
		<div class="alert alert-success">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Success!</strong> User added.
						</div>
		<?php
		}
		}
		else
		{
			?>
			<div class="alert alert-danger">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Error!</strong> Fill all form.
			</div>
			<?php
		}
	}
	if(isset($_POST["deleteuser"]))
		{
			?>
			<div class="panel panel-danger">
  <div class="panel-heading">Delete user confirmation</div>
  <div class="panel-body">
  <form action="#" method="post">
  <input name="id" type="number" value="<?php echo $_POST['id'];?>" hidden="hidden" style="display: none;">
  <button name="dodeleteuser" type="submit" class="btn btn-success">Delete</button>
  <button name="" type="submit" class="btn btn-danger">Cancel</button>
  </form>
  </div>
</div>
			<?php
		}
		if(isset($_POST["dodeleteuser"]))
		{
			mysqli_query($conn, "DELETE FROM users WHERE id = '{$_POST["id"]}'");
			?>
			<div class="alert alert-success">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Success!</strong> user deleted.
						</div>
			<?php
		}
	?>
	
	<div class="panel panel-default">
  <div class="panel-heading">Add user</div>
  <div class="panel-body">
  <form role="form" action="#" method="post">
  <div class="form-group">
    <label for="username"><span class="glyphicon glyphicon-user"></span> Name:</label>
    <input type="text" class="form-control" id="username" name="username">
  </div>
  <div class="form-group">
    <label for="pwd"><span class="glyphicon glyphicon-lock"></span> Password:</label>
    <input name="pwd" type="password" class="form-control" id="pwd">
  </div>
     <label for="sel1"><span class="glyphicon glyphicon-star-empty"></span> Rank:</label>
      <select name="rank" class="form-control" id="sel1">
        <option value="1">User</option>
        <option value="3">Admin</option>
      </select>
	  <br>
  <button name="adduser" type="submit" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span> Add</button>
</form>
  </div>
  </div>
  
  	<div class="panel panel-default">
  <div class="panel-heading">User List</div>
  <div class="panel-body">
  
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Rank</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
	<?php $get1 = mysqli_query($conn, "SELECT * FROM users WHERE username != '{$_SESSION["userlogin"]}' ORDER BY id DESC");
	while($log = mysqli_fetch_assoc($get1))
	{
	?>
      <tr>
        <td><?php echo $log["id"]; ?></td>
        <td><?php echo $log["username"]; ?></td>
        <td><?php 
		if($log["rank"] == 1)
		{
			echo "User";
		}
		if($log["rank"] == 3)
		{
			echo "Admin";
		}

			?></td>
		<td>
		<form action="#" method="post">
		<input name="id" type="number" value="<?php echo $log['id'];?>" hidden="hidden" style="display: none;">
		<div class="btn-group">
		<button name="deleteuser" type="submit" class="btn btn-primary" data-toggle="collapse" data-target="#deleteuser"><span class="glyphicon glyphicon-erase"></span> Delete</button>
		
		</div>
		</form>
		</td>
        
      </tr>
	<?php
	}
	?>
    </tbody>
  </table>


  </div>
</div>

	
	<div class="panel panel-default">
  <div class="panel-heading">Login Log</div>
  <div class="panel-body">
  <button class="btn btn-info" data-toggle="collapse" data-target="#login_log">Login Log</button>

<div id="login_log" class="collapse">

  <table class="table table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Time</th>
      </tr>
    </thead>
    <tbody>
	<?php $get1 = mysqli_query($conn, "SELECT * FROM login_log ORDER BY id DESC");
	while($log = mysqli_fetch_assoc($get1))
	{
	?>
      <tr>
        <td><?php echo $log["name"]; ?></td>
        <td><?php echo date("d/m/Y h:i:sa", $log["time"]); ?></td>
      </tr>
	<?php
	}
	?>
    </tbody>
  </table>

</div>
  </div>
</div>
	<?php } 
	else
	{
		echo "Error: !!!";
	}
	}
	?>
<span class="glyphicon glyphicon-copyright-mark"></span> Sistem surat masuk CMI V3.1.3
	</div>
	</body>
