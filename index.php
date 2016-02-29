
	<?php
	
		$page_home = "selected";
		require_once("head.php");
	?>
			<!-- -->
			<?php
				if(isset($_POST["record"]))
				{	
					//if($_POST["tterima"] != null && $_POST["klt"] != null && $_POST["tsurat"] != null && $_POST["dari"] != null && $_POST["perkara"] != null) 
					//{
						$nocheck = mysqli_query($conn, "SELECT * FROM record ORDER BY id DESC LIMIT 1");
						if(mysqli_num_rows($nocheck) == 0)
						{
							$no = 1;
						}
						while($nocheck2 = mysqli_fetch_assoc($nocheck))
						{
							if($nocheck2["klt"] == $_POST["klt"])
							{
								$no = $nocheck2["no"]+1;
							}
							else
							{
								$no = 1;
							}
						}	
						$tterima = mysqli_real_escape_string($conn, $_POST["tterima"]);
						$klt = mysqli_real_escape_string($conn, $_POST["klt"]);
						$tsurat = mysqli_real_escape_string($conn, $_POST["tsurat"]);
						$dari = mysqli_real_escape_string($conn, $_POST["dari"]);
						$perkara = mysqli_real_escape_string($conn, $_POST["perkara"]);
						$kepada = mysqli_real_escape_string($conn, $_POST["kepada"]);
						mysqli_query($conn, "INSERT INTO record (no, tterima, klt, tsurat, dari, perkara, kepada, time) VALUES ('{$no}', '{$tterima}', '{$klt}', '{$tsurat}', '{$dari}', '{$perkara}', '{$kepada}', '".time()."')");
						?>
						<div class="alert alert-success">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>!</strong> Data ditambah.
						</div>
						<?php 
				//	} 
				//	else
				//	{
				//		echo "
				//		<div class=\"alert alert-danger\">
				//			<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>
				//			<strong>!</strong> Sila isi semua Borang.
				//		</div>
				//		";
				//	}
				}
				?>
				
<div id="loginModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Log Masuk</h4>
      </div>
      <div class="modal-body">
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
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove-sign"></span> Batal</button>
      </div>
    </div>

  </div>
</div>
			<!-- -->
		<?php
			
			if(isset($_SESSION["userlogin"]))
			{
			?>
			<div class="panel panel-default">
				<div class="panel-heading">Record: </div>
				<div class="panel-body">
					<form class="form-inline" role="form" action="#" method="post">
						<center>
							<div class="form-group">
								<label for="tterima"><span class="glyphicon glyphicon-calendar"></span> Tarikh Terima:</label>
								<input name="tterima" type="date" class="form-control" id="tterima" value="<?php 
								$klt1 = mysqli_query($conn, "SELECT * FROM record ORDER BY id DESC LIMIT 1");
								while($klt2 = mysqli_fetch_assoc($klt1))
								{
									echo $klt2["tterima"];
								}
								?>">
							</div>
							<div class="form-group">
								<label for="klt"><span class="glyphicon glyphicon-file"></span> klt.:</label>
								<input name="klt" type="number"  class="form-control" id="klt" value="<?php 
								$klt1 = mysqli_query($conn, "SELECT * FROM record ORDER BY id DESC LIMIT 1");
								while($klt2 = mysqli_fetch_assoc($klt1))
								{
									echo $klt2["klt"];
								}
								?>">
							</div>
							<br>
							<div class="form-group">
								<label for="tsurat"><span class="glyphicon glyphicon-calendar"></span> Tarikh Surat:</label>
								<input name="tsurat" type="date" class="form-control" id="tsurat">
							</div>
							<div class="form-group">
								<label for="dari"><span class="glyphicon glyphicon-save-file"></span> Dari:</label>
								<input name="dari" type="text" class="form-control" id="dari">
							</div>
							<div class="form-group">
								<label for="kepada"><span class="glyphicon glyphicon-open-file"></span> Kepada:</label>
								<input name="kepada" type="text" class="form-control" id="kepada">
							</div>
							<br>
							<div class="form-group">
								<label for="perkara"><span class="glyphicon glyphicon-book"></span> Perkara:</label>
								<textarea name="perkara" class="form-control" rows="5" id="perkara"></textarea>
							</div>
							<br>
							<br>
							<button name="record" type="submit" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span> Record</button>
						</center>
					</form>
				</div>
			</div>
			<?php
				if(isset($_POST["delete"]))
				{
					?>
					<div class="panel panel-danger">
						<div class="panel-heading">Pengesahan pemadaman</div>
						<div class="panel-body">
							<form action="#" method="post">
								<input name="id" type="number" value="<?php echo $_POST["id"]; ?>" hidden="hidden" style="display: none;">
								<button name="do-delete" type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span> Padam</button>
								<button name="" type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Batal</button>
							</form>
						</div>
					</div>
					<?php
				}
if(isset($_POST["do-delete"]))
{
	mysqli_query($conn, "DELETE FROM record WHERE id = '{$_POST["id"]}';");
	?>
	<div class="alert alert-success">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>!</strong> Data dipadam.
</div>
	<?php
}
if(isset($_POST["edit"]))
{
	$edit = mysqli_query($conn, "SELECT * FROM record WHERE id = '{$_POST["id"]}'");
	while($edit1 = mysqli_fetch_assoc($edit))
	{
		echo "<div class=\"panel panel-info\">
  <div class=\"panel-heading\">Ubah</div>
  <div class=\"panel-body\">
  
  <form class=\"form-inline\" role=\"form\" action=\"#\" method=\"post\">
  <input name=\"id\" type=\"number\" value=\"".$_POST["id"]."\" hidden=\"hidden\" style=\"display: none;\">
  <center>
  <div class=\"form-group\">
    <label for=\"tterima\"><span class=\"glyphicon glyphicon-calendar\"></span> Tarikh Terima:</label>
    <input name=\"tterima\" type=\"date\" class=\"form-control\" id=\"tterima\" value=\"{$edit1["tterima"]}\">
  </div>
  <div class=\"form-group\">
  <label for=\"klt\"><span class=\"glyphicon glyphicon-file\"></span> klt.:</label>
    <input name=\"klt\" type=\"number\"  class=\"form-control\" id=\"klt\" value=\"{$edit1["klt"]}\">
  </div><br>
  <div class=\"form-group\">
    <label for=\"tsurat\"><span class=\"glyphicon glyphicon-calendar\"></span> Tarikh Surat:</label>
    <input name=\"tsurat\" type=\"date\" class=\"form-control\" id=\"tsurat\" value=\"{$edit1["tsurat"]}\">
  </div>
  <div class=\"form-group\">
    <label for=\"dari\"><span class=\"glyphicon glyphicon-save-file\"></span> Dari:</label>
    <input name=\"dari\" type=\"text\" class=\"form-control\" id=\"dari\" value=\"{$edit1["dari"]}\">
  </div>
  <div class=\"form-group\">
    <label for=\"kepada\"><span class=\"glyphicon glyphicon-open-file\"></span> Kepada:</label>
    <input name=\"kepada\" type=\"text\" class=\"form-control\" id=\"kepada\" value=\"{$edit1["kepada"]}\">
  </div>
  <br>
  <div class=\"form-group\">
  <label for=\"perkara\"><span class=\"glyphicon glyphicon-book\"></span> Perkara:</label>
  <textarea name=\"perkara\" class=\"form-control\" rows=\"5\" id=\"perkara\"> {$edit1["perkara"]}</textarea>
</div>
<br>
<br>
  <button name=\"save\" type=\"submit\" class=\"btn btn-success\"><span class=\"glyphicon glyphicon-floppy-disk\"></span> Simpan</button>
  <button name=\"\" type=\"submit\" class=\"btn btn-warning\"><span class=\"glyphicon glyphicon-remove\"></span> Batal</button>
  </center>
</form>
  
  </div>
</div>";
	}
}
if(isset($_POST["save"]))
{
	$tterima = mysqli_real_escape_string($conn, $_POST["tterima"]);
	$klt = mysqli_real_escape_string($conn, $_POST["klt"]);
	$tsurat = mysqli_real_escape_string($conn, $_POST["tsurat"]);
	$dari = mysqli_real_escape_string($conn, $_POST["dari"]);
	$perkara = mysqli_real_escape_string($conn, $_POST["perkara"]);
	$kepada = mysqli_real_escape_string($conn, $_POST["kepada"]);
	mysqli_query($conn, "UPDATE record SET tterima = '{$tterima}', klt = '{$klt}', tsurat = '{$tsurat}', dari = '{$dari}', perkara = '{$perkara}', kepada = '{$kepada}' WHERE id = '{$_POST['id']}'");
?>
<div class="alert alert-success">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Berjaya!</strong> Data di tambah.
</div>
<?php
	}
?>
<?php
$limit = 10;
$ttl1 = mysqli_query($conn, "SELECT * FROM record");
$total = mysqli_num_rows($ttl1);
$totalpage = ceil($total/$limit);
if(isset($_GET["page"]))
{
	$getpage = $_GET["page"];
}
else
{
	$getpage = 1;
}
$nextpage = $getpage+1;
$prevpage = $getpage-1;
$nextpage1 = $getpage+2;
$prevpage1 = $getpage-2;
$nextpage2 = $getpage+3;
$prevpage2 = $getpage-3;
$pregetpage = $getpage-1;
$offset = $limit*$pregetpage;
echo "
<ul class=\"pagination\">

  <li ";
  if($getpage == 1)
  {
	  echo "class=\"active\"";
  }
  echo "><a href=\"?page=1\">Pertama</a></li>";
  if($getpage > 3){
  echo "<li>
      <a href=\"?page={$prevpage}\" aria-label=\"Previous\">
        <span aria-hidden=\"true\">&laquo;</span>
      </a>
    </li>";
  }
  if($getpage == $totalpage && $totalpage > 8)
  {
	  $this2 = $prevpage2-4;
	   echo "<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage > ($totalpage-2) && $totalpage > 9)
  {
	  $this2 = $prevpage2-3;
	   echo "<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage > ($totalpage-3) && $totalpage > 10)
  {
	  $this2 = $prevpage2-2;
	   echo "<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage > ($totalpage-4) && $totalpage > 11)
  {
	  $this2 = $prevpage2-1;
	   echo "<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage > 4)
  {
	   echo "<li><a href=\"?page={$prevpage2}\">{$prevpage2}</a></li>";
  }
  if($getpage > 3){
 echo" <li><a href=\"?page={$prevpage1}\">{$prevpage1}</a></li>";
  }
  if($getpage > 2){
  echo"<li><a href=\"?page={$prevpage}\">{$prevpage}</a></li>";
  }
  if($getpage != 1 && $getpage != $totalpage)
  {
	echo "<li class=\"active\"><a href=\"?page={$getpage}\">{$getpage}</a></li>";
  }
  if($nextpage < $totalpage && $totalpage > 1)
  {
  echo "<li><a href=\"?page={$nextpage}\">{$nextpage}</a></li>";
  }
  if($nextpage1 < $totalpage && $totalpage > 2)
  {
  echo "<li><a href=\"?page={$nextpage1}\">{$nextpage1}</a></li>";
  }
  if($nextpage2 < $totalpage && $totalpage > 3)
  {
  echo "<li><a href=\"?page={$nextpage2}\">{$nextpage2}</a></li>";
  }
  if($getpage == 1 && $totalpage > 4)
  {
	  $this1 = $nextpage2+1;
	echo "<li><a href=\"?page={$this1}\">{$this1}</a></li>";
  }
  if($getpage < 5 && $totalpage > 8){
	  $this2 = $nextpage2+1;
	   echo "<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage < 4 && $totalpage > 8){
	  $this2 = $nextpage2+2;
 echo" <li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage < 3 && $totalpage > 8){
	  $this2 = $nextpage2+3;
  echo"<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage < 2 && $totalpage > 8){
	  $this2 = $nextpage2+4;
  echo"<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($nextpage < ($totalpage-1))
  {
   echo "<li>
      <a href=\"?page={$nextpage}\" aria-label=\"Previous\">
        <span aria-hidden=\"true\">&raquo;</span>
      </a>
    </li>";
  }
    if($totalpage > 1)
  {
 echo "<li ";
  if($getpage == $totalpage)
  {
	  echo "class=\"active\"";
  }

  echo "><a href=\"?page={$totalpage}\">Akhir</a></li>
 ";
  }
  echo 
  "

</ul>
<ul class=\"pagination\">
<li><span>Muka ".$getpage."/".$totalpage."</span>
  </li>
  </ul>
";
if($totalpage == 0)
{
	$percent = 100;
}
else
{
$percent = ($getpage/$totalpage)*100;
}
echo "<div class=\"progress\">
<div class=\"progress-bar progress-bar-info\" role=\"progressbar\" style=\"width:{$percent}%\">
  </div>
   
  </div>";
?>
<table class="table table-striped well">
    <thead>
      <tr>
        <th><span class="glyphicon glyphicon-sort-by-attributes"></span> No.</th>
        <th><span class="glyphicon glyphicon-calendar"></span> Tarikh Terima</th>
        <th><span class="glyphicon glyphicon-calendar"></span> Tarikh Surat</th>
        <th><span class="glyphicon glyphicon-save-file"></span> Dari</th>
        <th><span class="glyphicon glyphicon-open-file"></span> Kepada</th>
        <th><span class="glyphicon glyphicon-book"></span> Perkara</th>
        <th><span class="glyphicon glyphicon-file"></span> klt.</th>
        <th><span class="glyphicon glyphicon-flash"></span> Tindakan</th>
      </tr>
    </thead>
    <tbody>
	
	
	<?php
	
	$select = mysqli_query($conn, "SELECT * FROM record ORDER BY klt DESC , no DESC LIMIT $offset, $limit");
	
	
	while($row = mysqli_fetch_assoc($select))
	{
		echo '
		<tr>
        <td>'.$row["no"].'</td>
        <td>'.date("d-m-Y", strtotime($row["tterima"])).'</td>
        <td>'.date("d-m-Y", strtotime($row["tsurat"])).'</td>
        <td>'.$row["dari"].'</td>
        <td>'.$row["kepada"].'</td>
        <td>'.$row["perkara"].'</td>
        <td>'.$row["klt"].'</td>
        <td>
		<form action="#" method="post">
		<input name="id" type="number" value="'.$row["id"].'" hidden="hidden" style="display: none;">
		<div class="btn-group-vertical">
		<button name="edit" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Ubah</button>
		<button name="delete" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-erase"></span> Padam</button>
		
		</div>
		</form>
		</td>
      </tr>
		';
	}
	?>
    </tbody>
  </table>
  
<?php
$limit = 10;
$ttl1 = mysqli_query($conn, "SELECT * FROM record");
$total = mysqli_num_rows($ttl1);
$totalpage = ceil($total/$limit);
if(isset($_GET["page"]))
{
	$getpage = $_GET["page"];
}
else
{
	$getpage = 1;
}
$nextpage = $getpage+1;
$prevpage = $getpage-1;
$nextpage1 = $getpage+2;
$prevpage1 = $getpage-2;
$nextpage2 = $getpage+3;
$prevpage2 = $getpage-3;
$pregetpage = $getpage-1;
$offset = $limit*$pregetpage;
echo "
<ul class=\"pagination\">

  <li ";
  if($getpage == 1)
  {
	  echo "class=\"active\"";
  }
  echo "><a href=\"?page=1\">Pertama</a></li>";
  if($getpage > 3){
  echo "<li>
      <a href=\"?page={$prevpage}\" aria-label=\"Previous\">
        <span aria-hidden=\"true\">&laquo;</span>
      </a>
    </li>";
  }
  if($getpage == $totalpage && $totalpage > 8)
  {
	  $this2 = $prevpage2-4;
	   echo "<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage > ($totalpage-2) && $totalpage > 9)
  {
	  $this2 = $prevpage2-3;
	   echo "<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage > ($totalpage-3) && $totalpage > 10)
  {
	  $this2 = $prevpage2-2;
	   echo "<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage > ($totalpage-4) && $totalpage > 11)
  {
	  $this2 = $prevpage2-1;
	   echo "<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage > 4)
  {
	   echo "<li><a href=\"?page={$prevpage2}\">{$prevpage2}</a></li>";
  }
  if($getpage > 3){
 echo" <li><a href=\"?page={$prevpage1}\">{$prevpage1}</a></li>";
  }
  if($getpage > 2){
  echo"<li><a href=\"?page={$prevpage}\">{$prevpage}</a></li>";
  }
  if($getpage != 1 && $getpage != $totalpage)
  {
	echo "<li class=\"active\"><a href=\"?page={$getpage}\">{$getpage}</a></li>";
  }
  if($nextpage < $totalpage && $totalpage > 1)
  {
  echo "<li><a href=\"?page={$nextpage}\">{$nextpage}</a></li>";
  }
  if($nextpage1 < $totalpage && $totalpage > 2)
  {
  echo "<li><a href=\"?page={$nextpage1}\">{$nextpage1}</a></li>";
  }
  if($nextpage2 < $totalpage && $totalpage > 3)
  {
  echo "<li><a href=\"?page={$nextpage2}\">{$nextpage2}</a></li>";
  }
  if($getpage == 1 && $totalpage > 4)
  {
	  $this1 = $nextpage2+1;
	echo "<li><a href=\"?page={$this1}\">{$this1}</a></li>";
  }
  if($getpage < 5 && $totalpage > 8){
	  $this2 = $nextpage2+1;
	   echo "<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage < 4 && $totalpage > 8){
	  $this2 = $nextpage2+2;
 echo" <li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage < 3 && $totalpage > 8){
	  $this2 = $nextpage2+3;
  echo"<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($getpage < 2 && $totalpage > 8){
	  $this2 = $nextpage2+4;
  echo"<li><a href=\"?page={$this2}\">{$this2}</a></li>";
  }
  if($nextpage < ($totalpage-1))
  {
   echo "<li>
      <a href=\"?page={$nextpage}\" aria-label=\"Previous\">
        <span aria-hidden=\"true\">&raquo;</span>
      </a>
    </li>";
  }
    if($totalpage > 1)
  {
 echo "<li ";
  if($getpage == $totalpage)
  {
	  echo "class=\"active\"";
  }

  echo "><a href=\"?page={$totalpage}\">Akhir</a></li>
 ";
  }
  echo 
  "

</ul>
<ul class=\"pagination\">
<li><span>Muka ".$getpage."/".$totalpage."</span>
  </li>
  </ul>
";
?>
  
  <form action="#" method="post">
	<button type="submit" name="showall" class="btn btn-primary">Semua</button>
  </form>
  <?php
			}
  else
	  
	  {
		  
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
	  }
  ?>
</div>

</body>
</html>
