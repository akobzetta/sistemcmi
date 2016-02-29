
	<?php
		$page_setting = "selected";
		require_once("head.php");
		if(!isset($_SESSION["userlogin"]))
		{
			header("Location:".$url);
		}
	?>
			<!-- start body -->
			<script>
			 function changeType()
    {
        document.setting.current.type=(document.setting.showcurrent.value=(document.setting.showcurrent.value==1)?'-1':'1')=='1'?'text':'password';
    }
	 function changeType2()
    {
        document.setting.new.type=(document.setting.shownew2.value=(document.setting.shownew2.value==1)?'-1':'1')=='1'?'text':'password';
    }
	 function changeType3()
    {
        document.setting.new1.type=(document.setting.shownew3.value=(document.setting.shownew3.value==1)?'-1':'1')=='1'?'text':'password';
    }
	
			</script>
			<?php
			if(isset($_POST["savesetting"]))
			{
				if($_POST["current"] != null && $_POST["new"] != null && $_POST["new1"] != null)
				{
					if($_POST["new"] == $_POST["new1"])
					{
						$current = mysqli_real_escape_string($conn, $_POST["current"]);
						$new = mysqli_real_escape_string($conn, $_POST["new"]);
						$new1 = mysqli_real_escape_string($conn, $_POST["new1"]);
						$select = mysqli_query($conn, "SELECT * FROM users WHERE username = '{$_SESSION["userlogin"]}'");
						while($row = mysqli_fetch_assoc($select))
						{
							$password = password_hash($new, PASSWORD_DEFAULT);
							if (password_verify($current, $row["password"])) 
							{
								mysqli_query($conn, "UPDATE users SET password = '{$password}' WHERE username =  '{$_SESSION["userlogin"]}'");
								echo "<div class=\"alert alert-success\">
						<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>
						<strong>Berjaya!</strong> Katalaluan baru disimpan.
						</div>";
							}
							else
							{
								echo "<div class=\"alert alert-danger\">
					<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>
					<strong>!</strong> Katalaluan semasa tidak sepadan.
					</div>";
							}
						}
						
					}
					else
					{
						echo "<div class=\"alert alert-danger\">
					<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>
					<strong>!</strong>Katalaluan baru tidak sepadan.
					</div>";
					}
				}
				else
				{
					?>
					<div class="alert alert-danger">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong>!</strong> Isi semua maklumat.
					</div>
					<?php
				}
			}
			?>
			<div class="panel panel-default">
				<div class="panel-heading"><span class="glyphicon glyphicon-lock"></span> Tetapan Katalaluan</div>
				<div class="panel-body">
					<form name="setting" class="form-inline" role="form" action="#" method="post">
  <div class="form-group">
    <label for="email"><span class="glyphicon glyphicon-lock"></span> katalaluan Semasa:</label>
    <input name="current" type="password" class="form-control" id="email">
  </div>
  <div class="checkbox">
    <label><input name="showcurrent" type="checkbox" onchange="changeType()"> Tunjuk</label>
  </div><br>
  <div class="form-group">
    <label for="pwd"><span class="glyphicon glyphicon-lock"></span> Katalaluan Baru:</label>
    <input name="new" type="password" class="form-control" id="pwd">
  </div>
  <div class="checkbox">
    <label><input name="shownew2" type="checkbox" onchange="changeType2()"> Tunjuk</label>
  </div><br>
    <div class="form-group">
    <label for="pwd"><span class="glyphicon glyphicon-lock"></span> Ulang Katalaluan Baru:</label>
    <input name="new1" type="password" class="form-control" id="pwd">
  </div>
  <div class="checkbox">
    <label><input name="shownew3" type="checkbox" onchange="changeType3()"> Tunjuk</label>
  </div><br>
  <button name="savesetting" type="submit" class="btn btn-success"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
</form>
				</div>
			</div>
			<!-- end body -->
			
</div>

</body>
</html>
