<?php
	date_default_timezone_set("Asia/Kuala_Lumpur");
	$url = "index";
	$servername = "localhost";
	$username = "root";
	$password = "test123";
	$db = "suratmasuk";
	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $db);
	// Check connection
	if (!$conn) 
	{
		die("Connection failed: " . mysqli_connect_error());
	}
	
?>
<!DOCTYPE html>
<html lang="my">
	<head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<title>Sistem Surat Masuk</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</head>
	<body>
	<!-- Body style area -->
	<style>
body
{
	font-size: 12px;
	background: red; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(left, red , yellow); /* For Safari 5.1 to 6.0 */
  background: -o-linear-gradient(right, red, yellow); /* For Opera 11.1 to 12.0 */
  background: -moz-linear-gradient(right, red, yellow); /* For Firefox 3.6 to 15 */
  background: linear-gradient(to bottom, white , #00E5FF, white); /* Standard syntax */
}
</style>
	<!-- Body style area end -->
<div class="container">

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Surat Masuk</a>
		</div>
		<ul class="nav navbar-nav">
			<li <?php 
				if(isset($page_home))
				{
					echo "class='active'";
				}
			?>>
				<a href="<?php echo $url; ?>"><span class="glyphicon glyphicon-home"></span> Utama</a>
			</li>
			<li <?php 
				if(isset($page_search))
				{
					echo "class='active'";
				}
			?>>
				<a href="search"><span class="glyphicon glyphicon-search"></span> Cari</a>
			</li>
			<li <?php 
				if(isset($page_print))
				{
					echo "class='active'";
				}
			?>>
				<a href="print"><span class="glyphicon glyphicon-print"></span> Cetak</a>
			</li>
			<li <?php 
				if(isset($page_export))
				{
					echo "class='active'";
				}
			?>>
				<a href="export"><span class="glyphicon glyphicon-save"></span> Eksport</a>
			</li>
			<?php
				if(isset($_COOKIE["userlogin"]))
				{
					$rankcheck = mysqli_query($conn, "SELECT * FROM users WHERE username = '{$_COOKIE["userlogin"]}' LIMIT 1");
					while($rank = mysqli_fetch_assoc($rankcheck))
					{
						if($rank["rank"] == 3)
						{
			?>
			<li <?php 
							if(isset($page_admin))
							{
								echo "class='active'";
							}
			?>>
				<a href="admin"><span class="glyphicon glyphicon-cog"></span> Admin</a>
			</li>
			<?php
						}
					}
				}
			?>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<?php
			if(isset($_COOKIE["userlogin"]))
			{ ?>
				<li class="<?php 
							if(isset($page_setting))
							{
								echo "active";
							}
			?> dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> <?php
					$user1 = mysqli_query($conn, "SELECT * FROM users WHERE username = '{$_COOKIE["userlogin"]}' LIMIT 1");
					while($user2 = mysqli_fetch_assoc($user1))
					{
						echo $user2["username"];
					}					
					?>
					<span class="caret "></span></a>
					<ul class="dropdown-menu">
						<form action="#" method="post">
							<li><a href="setting"><span class="glyphicon glyphicon-wrench"></span> Tetapan</a></li>
							<li><a href="?logout"><span class="glyphicon glyphicon-log-out"></span> Log keluar</a></li>
						</form>
					</ul>
				</li>
			<?php
			}
			else
			{
				?>
				<li>
					<a href="#"  data-toggle="modal" data-target="#loginModal"><span class="glyphicon glyphicon-log-in"></span> Log Masuk</a>
				</li>
			<?php
			}
			?>
		</ul>
	</div>
</nav>

<?php
if(isset($_GET["logout"]))
	{
		setcookie("userlogin", $username, time() - (86400 * 30));
		header("Refresh: 0;  url=".$url);
		?>
		<div class="alert alert-success">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong><span class="glyphicon glyphicon-ok"></span> Berjaya!</strong> Log keluar.
							</div>
		<?php
	}
if(isset($_POST["loginuser"]))
				{
					if($_POST["username"] != null && $_POST["pwd"] != null)
					{
						$username = mysqli_real_escape_string($conn, $_POST["username"]);
						$pwd = mysqli_real_escape_string($conn, $_POST["pwd"]);
						$login1 = mysqli_query($conn, "SELECT * FROM users WHERE username = '{$username}'");
						if(mysqli_num_rows($login1) < 1)
						{
							?>
							<div class="alert alert-danger">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong><span class="glyphicon glyphicon-warning-sign"></span> !</strong> Nama pengguna tidak dijumpai.
						</div>
							<?php
						}
						while($login2 = mysqli_fetch_assoc($login1))
						{
							if (password_verify($pwd, $login2["password"])) 
							{
								mysqli_query($conn, "INSERT INTO login_log (name, time) VALUES ('{$username}', '".time()."')");
								setcookie("userlogin", $username, time() + (86400 * 30));
								
								?>
								<div class="alert alert-success">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong><span class="glyphicon glyphicon-ok"></span> ! </strong> Berjaya log masuk.
							</div>
								<?php
								header("Refresh: 0");
							}
							else
							{
								?>
								<div class="alert alert-danger">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong><span class="glyphicon glyphicon-warning-sign"></span> !</strong> Katalaluan salah.
							</div>
								<?php
							}
						}
					}
					else
					{
						?>
						<div class="alert alert-danger">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong><span class="glyphicon glyphicon-warning-sign"></span> !</strong> Sila isi semua Borang.
						</div>
						<?php
					}
				}
?>
