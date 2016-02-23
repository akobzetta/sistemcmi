
	<?php
		$page_print = "selected";
		require_once("head.php");
		if(!isset($_COOKIE["userlogin"]))
		{
			header("Location:".$url);
		}
	?>
	<style>
	td {
		font-size: 12px;
	}
	</style>
	<form action='#' method="post" id="noprint">
	<input name="month" type="month">
	<button name="tterima" type="submit" >Cari bulan tarikh terima</button>
	<button name="tsurat" type="submit" >Cari bulan tarikh surat</button>
	</form>

	<button onclick="myFunction()" id="noprint2"><span class="glyphicon glyphicon-print"></span> Print this page</button>
<script>
function myFunction() {
	$("#noprint").hide();
	$("#noprint2").hide();
    window.print();
}
</script>
<center><h3>Surat masuk bulan <?php if(isset($_POST["tterima"]) || isset($_POST["tsurat"])) {
$myArray = explode('-', $_POST["month"]);
				foreach($myArray as $my_Array)
				{
					if($my_Array > 13)
					{
						$year = $my_Array;
					}
					else
					{
						$month = $my_Array;  
					}
				}
	echo $month."/".$year;}?></h3></center>
<table border="1" class="table table-striped">

      <tr>
        <th>No.</th>
        <th>Tarikh Terima</th>
        <th>Tarikh Surat</th>
        <th>Dari</th>
        <th>Kepada</th>
        <th>Perkara</th>
        <th>klt.</th>
     
      </tr>
			<!-- start body -->
			<?php
			if(isset($_POST["tterima"]))
			{
				$myArray = explode('-', $_POST["month"]);
				foreach($myArray as $my_Array)
				{
					if($my_Array > 13)
					{
						$year = $my_Array;
					}
					else
					{
						$month = $my_Array;  
					}
				}
			$select = mysqli_query($conn, "SELECT * FROM record WHERE Month(tterima) = '{$month}' AND Year(tterima) = '{$year}'; ");
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
				</tr>
				';
			}
			}
			if(isset($_POST["tsurat"]))
			{
				$myArray = explode('-', $_POST["month"]);
				foreach($myArray as $my_Array)
				{
					if($my_Array > 13)
					{
						$year = $my_Array;
					}
					else
					{
						$month = $my_Array;  
					}
				}
			$select = mysqli_query($conn, "SELECT * FROM record WHERE Month(tsurat) = '{$month}' AND Year(tsurat) = '{$year}'; ");
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
				</tr>
				';
			}
			}
			
			
			?>
			<!-- end body -->
			</table>
</div>

</body>
</html>
