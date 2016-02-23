<?php
$page_search = "selected";
require_once ("head.php");

if (!isset($_COOKIE["userlogin"]))
{
	header("Location:" . $url);
}

?>
	<div class="panel panel-default">
  <div class="panel-heading"><span class="glyphicon glyphicon-search"></span> Search</div>
  <div class="panel-body">
  <form action="" method="post">
 <div class="form-group has-feedback">
  <label for="search">Cari:</label>
  <input type="text" name="search" class="form-control" id="search" value="<?php

if (isset($_POST["sperkara"]) || isset($_POST["sdari"]) || isset($_POST["skepada"]))
{
	echo $_POST["search"];
} ?>">
  <span class="glyphicon glyphicon-search form-control-feedback"></span>
</div> 
<div class="btn-group-vertical btn-group-vertical-justified">
  <div class="btn-group-vertical">
    <button type="submit" name="sperkara" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> Perkara</button>
  </div>
  <div class="btn-group-vertical">
    <button type="submit" name="sdari" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> Dari</button>
  </div>
  <div class="btn-group-vertical">
    <button type="submit" name="skepada" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> Kepada</button>
  </div>
</div>
  </form>
  <hr>
  <label for="">Cari dari tarikh:</label>
  <form action="#" method="post" class="form-inline" role="form">
							<div class="form-group">
								<label for="tarikh"><span class="glyphicon glyphicon-calendar"></span> Tarikh:</label>
								<input name="search" type="date" class="form-control" id="tarikh" value="<?php

if (isset($_POST["stterima"]) || isset($_POST["stsurat"]))
{
	echo $_POST["search"];
} ?>">
							</div>
							<div class="btn-group-vertical">
								<button type="submit" name="stterima" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> Tarikh Terima</button>
							</div>
							<div class="btn-group-vertical">
								<button type="submit" name="stsurat" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> Tarikh Surat</button>
							</div>
  </form>
  <hr>
  <label for="">Cari antara tarikh:</label>
  <form action="#" method="post" class="form-inline" role="form">
							<div class="form-group">
								<label for="tarikh"><span class="glyphicon glyphicon-calendar"></span> Antara Tarikh:</label>
								<input name="searcha" type="date" class="form-control" id="tarikh" value="<?php

if (isset($_POST["satterima"]) || isset($_POST["satsurat"]))
{
	echo $_POST["searcha"];
} ?>">
							</div>
							<div class="form-group">
								<label for="tarikh"><span class="glyphicon glyphicon-calendar"></span> Dan Tarikh:</label>
								<input name="searchb" type="date" class="form-control" id="tarikh" value="<?php

if (isset($_POST["satterima"]) || isset($_POST["satsurat"]))
{
	echo $_POST["searchb"];
} ?>">
							</div>
							<div class="btn-group-vertical">
								<button type="submit" name="satterima" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> Tarikh Terima</button>
							</div>
							<div class="btn-group-vertical">
								<button type="submit" name="satsurat" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> Tarikh Surat</button>
							</div>
  </form>
  <hr>
    <label for="">Cari dari bulan:</label>
  <form action="#" method="post" class="form-inline" role="form">
							<div class="form-group">
								<label for="tarikh"><span class="glyphicon glyphicon-calendar"></span> Tarikh:</label>
								<input name="search" type="month" class="form-control" id="tarikh" value="<?php

if (isset($_POST["bstterima"]) || isset($_POST["bstsurat"]))
{
	echo $_POST["search"];
} ?>">
							</div>
							<div class="btn-group-vertical">
								<button type="submit" name="bstterima" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> Tarikh Terima</button>
							</div>
							<div class="btn-group-vertical">
								<button type="submit" name="bstsurat" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> Tarikh Surat</button>
							</div>
							</form>
    <hr>
  <label for="">Cari dari klt:</label>
  <form action="#" method="post" class="form-inline" role="form">
							<div class="form-group">
								<label for="klt"><span class="glyphicon glyphicon-calendar"></span> klt:</label>
								<input name="search" type="number" class="form-control" id="klt" value="<?php

if (isset($_POST["sklt"]))
{
	echo $_POST["search"];
} ?>">
							</div>
							
							<div class="btn-group-vertical">
								<button type="submit" name="sklt" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> Cari</button>
							</div>
  </form>
  </div>
</div>
<?php

if (isset($_POST["delete"]))
{
?>
					<div class="panel panel-danger">
						<div class="panel-heading">Pengesahan Pemadaman</div>
						<div class="panel-body">
							<form action="#" method="post">
								<input name="id" type="number" value="<?php
	echo $_POST["id"]; ?>" hidden="hidden" style="display: none;">
								<button name="do-delete" type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span> Padam</button>
								<button name="" type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Batal</button>
							</form>
						</div>
					</div>
					<?php
}

if (isset($_POST["do-delete"]))
{
	mysqli_query($conn, "DELETE FROM record WHERE id = '{$_POST["id"]}';");
?>
	<div class="alert alert-success">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Success!</strong> Data deleted.
</div>
	<?php
}

if (isset($_POST["edit"]))
{
	$edit = mysqli_query($conn, "SELECT * FROM record WHERE id = '{$_POST["id"]}'");
	while ($edit1 = mysqli_fetch_assoc($edit))
	{
		echo "<div class=\"panel panel-info\">
  <div class=\"panel-heading\"> Ubah</div>
  <div class=\"panel-body\">
  
  <form class=\"form-inline\" role=\"form\" action=\"#\" method=\"post\">
  <input name=\"id\" type=\"number\" value=\"" . $_POST["id"] . "\" hidden=\"hidden\" style=\"display: none;\">
  <center>
  <div class=\"form-group\">
    <label for=\"tterima\"><span class=\"glyphicon glyphicon-calendar\"></span> Tarikh Terima:</label>
    <input name=\"tterima\" type=\"date\" class=\"form-control\" id=\"tterima\" value=\"{$edit1["tterima"]}\">
  </div>
  <div class=\"form-group\">
  <label for=\"klt\"><span class=\"glyphicon glyphicon-file\"></span> klt.:</label>
    <input name=\"klt\" type=\"number\"  class=\"form-control\" id=\"klt\" value=\"{$edit1["klt"]}\">
  </div><br />
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
  <br />
  <div class=\"form-group\">
  <label for=\"perkara\"><span class=\"glyphicon glyphicon-book\"></span> Perkara:</label>
  <textarea name=\"perkara\" class=\"form-control\" rows=\"5\" id=\"perkara\"> {$edit1["perkara"]}</textarea>
</div>
<br />
<br />
  <button name=\"save\" type=\"submit\" class=\"btn btn-success\"><span class=\"glyphicon glyphicon-floppy-disk\"></span> Simpan</button>
  <button name=\"\" type=\"submit\" class=\"btn btn-warning\"><span class=\"glyphicon glyphicon-remove\"></span> Batal</button>
  </center>
</form>
  
  </div>
</div>";
	}
}

if (isset($_POST["save"]))
{
	$tterima = mysql_real_escape_string($_POST["tterima"]);
	$klt = mysql_real_escape_string($_POST["klt"]);
	$tsurat = mysql_real_escape_string($_POST["tsurat"]);
	$dari = mysql_real_escape_string($_POST["dari"]);
	$perkara = mysql_real_escape_string($_POST["perkara"]);
	$kepada = mysql_real_escape_string($_POST["kepada"]);
	mysqli_query($conn, "UPDATE record SET tterima = '{$tterima}', klt = '{$klt}', tsurat = '{$tsurat}', dari = '{$dari}', perkara = '{$perkara}', kepada = '{$kepada}' WHERE id = '{$_POST['id']}'");
?>
<div class="alert alert-success">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Success!</strong> Data Updated.
</div>
<?php
}

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

if (isset($_POST["sperkara"]))
{
	$search = mysql_real_escape_string($_POST["search"]);
	$select = mysqli_query($conn, "SELECT * FROM record WHERE perkara LIKE '%{$search}%' ORDER BY id DESC;");
	while ($row = mysqli_fetch_assoc($select))
	{
		echo '
			  <tr>
        <td>' . $row["no"] . '</td>
        <td>' . date("d-m-Y", strtotime($row["tterima"])) . '</td>
        <td>' . date("d-m-Y", strtotime($row["tsurat"])) . '</td>
        <td>' . $row["dari"] . '</td>
        <td>' . $row["kepada"] . '</td>
        <td>' . $row["perkara"] . '</td>
        <td>' . $row["klt"] . '</td>
        <td>
		<form action="#" method="post">
		<input name="id" type="number" value="' . $row["id"] . '" hidden="hidden" style="display: none;">
		<div class="btn-group-vertical">
		<button name="edit" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Ubah</button>
		<button name="delete" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-erase"></span> Padam</button>
		
		</div>
		</form>
		</td>
      </tr>';
	}
}

if (isset($_POST["sdari"]))
{
	$search = mysql_real_escape_string($_POST["search"]);
	$select = mysqli_query($conn, "SELECT * FROM record WHERE dari LIKE '%{$search}%';");
	while ($row = mysqli_fetch_assoc($select))
	{
		echo '
			  <tr>
        <td>' . $row["no"] . '</td>
        <td>' . date("d-m-Y", strtotime($row["tterima"])) . '</td>
        <td>' . date("d-m-Y", strtotime($row["tsurat"])) . '</td>
        <td>' . $row["dari"] . '</td>
        <td>' . $row["kepada"] . '</td>
        <td>' . $row["perkara"] . '</td>
        <td>' . $row["klt"] . '</td>
        <td>
		<form action="#" method="post">
		<input name="id" type="number" value="' . $row["id"] . '" hidden="hidden" style="display: none;">
		<div class="btn-group-vertical">
		<button name="edit" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Ubah</button>
		<button name="delete" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-erase"></span> Padam</button>
		
		</div>
		</form>
		</td>
      </tr>';
	}
}

if (isset($_POST["skepada"]))
{
	$search = mysql_real_escape_string($_POST["search"]);
	$select = mysqli_query($conn, "SELECT * FROM record WHERE kepada LIKE '%{$search}%';");
	while ($row = mysqli_fetch_assoc($select))
	{
		echo '
			  <tr>
        <td>' . $row["no"] . '</td>
        <td>' . date("d-m-Y", strtotime($row["tterima"])) . '</td>
        <td>' . date("d-m-Y", strtotime($row["tsurat"])) . '</td>
        <td>' . $row["dari"] . '</td>
        <td>' . $row["kepada"] . '</td>
        <td>' . $row["perkara"] . '</td>
        <td>' . $row["klt"] . '</td>
        <td>
		<form action="#" method="post">
		<input name="id" type="number" value="' . $row["id"] . '" hidden="hidden" style="display: none;">
		<div class="btn-group-vertical">
		<button name="edit" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Ubah</button>
		<button name="delete" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-erase"></span> Padam</button>
		
		</div>
		</form>
		</td>
      </tr>';
	}
}

if (isset($_POST["stterima"]))
{
	$search = mysql_real_escape_string($_POST["search"]);
	$select = mysqli_query($conn, "SELECT * FROM record WHERE tterima = '{$search}';");
	while ($row = mysqli_fetch_assoc($select))
	{
		echo '
			  <tr>
        <td>' . $row["no"] . '</td>
        <td>' . date("d-m-Y", strtotime($row["tterima"])) . '</td>
        <td>' . date("d-m-Y", strtotime($row["tsurat"])) . '</td>
        <td>' . $row["dari"] . '</td>
        <td>' . $row["kepada"] . '</td>
        <td>' . $row["perkara"] . '</td>
        <td>' . $row["klt"] . '</td>
        <td>
		<form action="#" method="post">
		<input name="id" type="number" value="' . $row["id"] . '" hidden="hidden" style="display: none;">
		<div class="btn-group-vertical">
		<button name="edit" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Ubah</button>
		<button name="delete" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-erase"></span> Padam</button>
		
		</div>
		</form>
		</td>
      </tr>';
	}
}

if (isset($_POST["stsurat"]))
{
	$search = mysql_real_escape_string($_POST["search"]);
	$select = mysqli_query($conn, "SELECT * FROM record WHERE tsurat = '{$search}';");
	while ($row = mysqli_fetch_assoc($select))
	{
		echo '
			  <tr>
        <td>' . $row["no"] . '</td>
        <td>' . date("d-m-Y", strtotime($row["tterima"])) . '</td>
        <td>' . date("d-m-Y", strtotime($row["tsurat"])) . '</td>
        <td>' . $row["dari"] . '</td>
        <td>' . $row["kepada"] . '</td>
        <td>' . $row["perkara"] . '</td>
        <td>' . $row["klt"] . '</td>
        <td>
		<form action="#" method="post">
		<input name="id" type="number" value="' . $row["id"] . '" hidden="hidden" style="display: none;">
		<div class="btn-group-vertical">
		<button name="edit" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Ubah</button>
		<button name="delete" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-erase"></span> Padam</button>
		
		</div>
		</form>
		</td>
      </tr>';
	}
}
if (isset($_POST["satterima"]))
{
	$searcha = mysql_real_escape_string($_POST["searcha"]);
	$searchb = mysql_real_escape_string($_POST["searchb"]);
	$select = mysqli_query($conn, "SELECT * FROM record WHERE tterima BETWEEN '{$searcha}' AND '{$searchb}';");
	while ($row = mysqli_fetch_assoc($select))
	{
		echo '
			  <tr>
        <td>' . $row["no"] . '</td>
        <td>' . date("d-m-Y", strtotime($row["tterima"])) . '</td>
        <td>' . date("d-m-Y", strtotime($row["tsurat"])) . '</td>
        <td>' . $row["dari"] . '</td>
        <td>' . $row["kepada"] . '</td>
        <td>' . $row["perkara"] . '</td>
        <td>' . $row["klt"] . '</td>
        <td>
		<form action="#" method="post">
		<input name="id" type="number" value="' . $row["id"] . '" hidden="hidden" style="display: none;">
		<div class="btn-group-vertical">
		<button name="edit" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Ubah</button>
		<button name="delete" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-erase"></span> Padam</button>
		
		</div>
		</form>
		</td>
      </tr>';
	}
}

if (isset($_POST["satsurat"]))
{
	$searcha = mysql_real_escape_string($_POST["searcha"]);
	$searchb = mysql_real_escape_string($_POST["searchb"]);
	$select = mysqli_query($conn, "SELECT * FROM record WHERE tsurat BETWEEN '{$searcha}' AND '{$searchb}';");
	while ($row = mysqli_fetch_assoc($select))
	{
		echo '
			  <tr>
        <td>' . $row["no"] . '</td>
        <td>' . date("d-m-Y", strtotime($row["tterima"])) . '</td>
        <td>' . date("d-m-Y", strtotime($row["tsurat"])) . '</td>
        <td>' . $row["dari"] . '</td>
        <td>' . $row["kepada"] . '</td>
        <td>' . $row["perkara"] . '</td>
        <td>' . $row["klt"] . '</td>
        <td>
		<form action="#" method="post">
		<input name="id" type="number" value="' . $row["id"] . '" hidden="hidden" style="display: none;">
		<div class="btn-group-vertical">
		<button name="edit" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Ubah</button>
		<button name="delete" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-erase"></span> Padam</button>
		
		</div>
		</form>
		</td>
      </tr>';
	}
}
if (isset($_POST["sklt"]))
{
	$search = mysql_real_escape_string($_POST["search"]);
	$select = mysqli_query($conn, "SELECT * FROM record WHERE klt = '{$search}';");
	while ($row = mysqli_fetch_assoc($select))
	{
		echo '
			  <tr>
        <td>' . $row["no"] . '</td>
        <td>' . date("d-m-Y", strtotime($row["tterima"])) . '</td>
        <td>' . date("d-m-Y", strtotime($row["tsurat"])) . '</td>
        <td>' . $row["dari"] . '</td>
        <td>' . $row["kepada"] . '</td>
        <td>' . $row["perkara"] . '</td>
        <td>' . $row["klt"] . '</td>
        <td>
		<form action="#" method="post">
		<input name="id" type="number" value="' . $row["id"] . '" hidden="hidden" style="display: none;">
		<div class="btn-group-vertical">
		<button name="edit" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Ubah</button>
		<button name="delete" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-erase"></span> Padam</button>
		
		</div>
		</form>
		</td>
      </tr>';
	}
}

if (isset($_POST["bstsurat"]))
{
	$myArray = explode('-', $_POST["search"]);
	foreach($myArray as $my_Array)
	{
		if ($my_Array > 13)
		{
			$year = $my_Array;
		}
		else
		{
			$month = $my_Array;
		}
	}

	$select = mysqli_query($conn, "SELECT * FROM record WHERE Month(tsurat) = '{$month}' AND Year(tsurat) = '{$year}';");
	while ($row = mysqli_fetch_assoc($select))
	{
		echo '
			  <tr>
        <td>' . $row["no"] . '</td>
        <td>' . date("d-m-Y", strtotime($row["tterima"])) . '</td>
        <td>' . date("d-m-Y", strtotime($row["tsurat"])) . '</td>
        <td>' . $row["dari"] . '</td>
        <td>' . $row["kepada"] . '</td>
        <td>' . $row["perkara"] . '</td>
        <td>' . $row["klt"] . '</td>
        <td>
		<form action="#" method="post">
		<input name="id" type="number" value="' . $row["id"] . '" hidden="hidden" style="display: none;">
		<div class="btn-group-vertical">
		<button name="edit" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Ubah</button>
		<button name="delete" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-erase"></span> Padam</button>
		
		</div>
		</form>
		</td>
      </tr>';
	}
}

if (isset($_POST["bstterima"]))
{
	$myArray = explode('-', $_POST["search"]);
	foreach($myArray as $my_Array)
	{
		if ($my_Array > 13)
		{
			$yearw = $my_Array;
		}
		else
		{
			$month = $my_Array;
		}
	}

	$select = mysqli_query($conn, "SELECT * FROM record WHERE Month(tterima) = '{$month}' AND Year(tterima) = '{$yearw}';");
	while ($row = mysqli_fetch_assoc($select))
	{
		echo '
			  <tr>
        <td>' . $row["no"] . '</td>
        <td>' . date("d-m-Y", strtotime($row["tterima"])) . '</td>
        <td>' . date("d-m-Y", strtotime($row["tsurat"])) . '</td>
        <td>' . $row["dari"] . '</td>
        <td>' . $row["kepada"] . '</td>
        <td>' . $row["perkara"] . '</td>
        <td>' . $row["klt"] . '</td>
        <td>
		<form action="#" method="post">
		<input name="id" type="number" value="' . $row["id"] . '" hidden="hidden" style="display: none;">
		<div class="btn-group-vertical">
		<button name="edit" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Ubah</button>
		<button name="delete" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-erase"></span> Padam</button>
		
		</div>
		</form>
		</td>
      </tr>';
	}
}

?>
    </tbody>
  </table>
  
			</div>
	</body>