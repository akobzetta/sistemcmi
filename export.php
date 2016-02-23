
	<?php
		$page_export = "selected";
		require_once("head.php");
		if(!isset($_COOKIE["userlogin"]))
		{
			header("Location:".$url);
		}
	?>
	<form action='#' method="post" id="noprint">
	<input name="month" type="month">
	<button name="tterima" type="submit" >Cari bulan tarikh terima</button>
	<button name="tsurat" type="submit" >Cari bulan tarikh surat</button>
	</form>
	

<?php

error_reporting(E_ALL);
ini_set('display_errors', TRUE); /** Error reporting */
ini_set('display_startup_errors', TRUE);
define('EOL',(PHP_SAPI == 'cli') ? PHP_EOL : '<br />');
require_once dirname(__FILE__) . '/Classes/PHPExcel.php'; /* Include PHPExcel */
$objPHPExcel = new PHPExcel(); // Create new PHPExcel object
$objPHPExcel->getProperties()->setCreator("Sistem Surat Masuk") // Set document properties
							 ->setLastModifiedBy("CMI")
							 ->setTitle("Sistem Surat Masuk")
							 ->setSubject("Data Surat Masuk")
							 ->setDescription("Document sistem surat masuk.")
							 ->setKeywords("Generate by sistem surat masuk.")
							 ->setCategory("Surat Masuk");
							 $objPHPExcel->setActiveSheetIndex(0);
							 $objPHPExcel->getActiveSheet()->setCellValue('A1', 'No.')
														   ->setCellValue('B1', 'Tarikh Terima')
														   ->setCellValue('C1', 'Tarikh Surat')
														   ->setCellValue('D1', 'Dari')
														   ->setCellValue('E1', 'Kepada')
														   ->setCellValue('F1', 'Perkara')
														   ->setCellValue('G1', 'Klt.');
							$objPHPExcel->getActiveSheet()->getPageSetup()->setRowsToRepeatAtTopByStartAndEnd(1, 1);
		$objPHPExcel->getActiveSheet()->getStyle('A1:G1')->applyFromArray(
		array(
			'font'    => array(
				'bold'      => true
			),
			'borders' => array(
				'allborders'     => array(
 					'style' => PHPExcel_Style_Border::BORDER_THICK,
					'rgb' => '808080'
 				)
			),
			'fill' => array(
	 			'type'       => PHPExcel_Style_Fill::FILL_GRADIENT_LINEAR,
	  			'rotation'   => 90,
	 			'startcolor' => array(
	 				'argb' => 'FFA0A0A0'
	 			),
	 			'endcolor'   => array(
	 				'argb' => 'FFFFFFFF'
	 			)
	 		),
			'alignment' => array(
						'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
						'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER,
					)
		)
);

							// $objPHPExcel->getActiveSheet()->getStyle('A1:G1')->getFont()->setBold(true);


?>

<center><h3>Surat masuk bulan <?php if(isset($_POST["tterima"]) || isset($_POST["tsurat"])) 
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
	echo $month."/".$year; } ?></h3></center>
<div id="dvData">
<table class="table table-striped well" border="1">

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
			$i = 1;
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
				
				$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);
				$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(7);
				$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(7);
				$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(20);
				$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(11);
				$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(33);
				$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setAutoSize(true);
				$i += 1;
				$Ptterima = date("d-m-Y", strtotime($row["tterima"]));
				$Ptsurat = date("d-m-Y", strtotime($row["tsurat"]));
				$objPHPExcel->getActiveSheet()->getStyle('A'.$i.':G'.$i)->applyFromArray(
				array(
					'borders' => array(
					'allborders'     => array(
						'style' => PHPExcel_Style_Border::BORDER_THIN,
						'rgb' => '808080'
						)
					)
				)
				);
				 $objPHPExcel->setActiveSheetIndex(0);
				 $objPHPExcel->getActiveSheet()->setCellValue('A'.$i, $row["no"])
											   ->setCellValue('B'.$i, $Ptterima)
											   ->setCellValue('C'.$i, $Ptsurat)
											   ->setCellValue('D'.$i, $row["dari"])
											   ->setCellValue('E'.$i, $row["kepada"])
											   ->setCellValue('F'.$i, $row["perkara"])
											   ->setCellValue('G'.$i, $row["klt"]);
				$objPHPExcel->getActiveSheet()->getPageSetup()->setPaperSize(PHPExcel_Worksheet_PageSetup::PAPERSIZE_A4);
				$objPHPExcel->getActiveSheet()->getStyle('B1:B'.$i)->getAlignment()->setWrapText(true);
				$objPHPExcel->getActiveSheet()->getStyle('C1:C'.$i)->getAlignment()->setWrapText(true);
				$objPHPExcel->getActiveSheet()->getStyle('F1:F'.$i)->getAlignment()->setWrapText(true);
				$objPHPExcel->getActiveSheet()->getStyle('D1:D'.$i)->getAlignment()->setWrapText(true);
				
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
				$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);
				$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(7);
				$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(6);
				$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(20);
				$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(11);
				$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(33);
				$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setAutoSize(true);
				$i += 1;
				$Ptterima = date("d-m-Y", strtotime($row["tterima"]));
				$Ptsurat = date("d-m-Y", strtotime($row["tsurat"]));
				$objPHPExcel->getActiveSheet()->getStyle('A'.$i.':G'.$i)->applyFromArray(
				array(
					'borders' => array(
					'allborders'     => array(
						'style' => PHPExcel_Style_Border::BORDER_THIN,
						'rgb' => '808080'
						)
					)
				)
				);
				 $objPHPExcel->setActiveSheetIndex(0);
				 $objPHPExcel->getActiveSheet()->setCellValue('A'.$i, $row["no"])
											   ->setCellValue('B'.$i, $Ptterima)
											   ->setCellValue('C'.$i, $Ptsurat)
											   ->setCellValue('D'.$i, $row["dari"])
											   ->setCellValue('E'.$i, $row["kepada"])
											   ->setCellValue('F'.$i, $row["perkara"])
											   ->setCellValue('G'.$i, $row["klt"]);
				$objPHPExcel->getActiveSheet()->getPageSetup()->setPaperSize(PHPExcel_Worksheet_PageSetup::PAPERSIZE_A4);
				$objPHPExcel->getActiveSheet()->getStyle('B1:B'.$i)->getAlignment()->setWrapText(true);
				$objPHPExcel->getActiveSheet()->getStyle('C1:C'.$i)->getAlignment()->setWrapText(true);
				$objPHPExcel->getActiveSheet()->getStyle('F1:F'.$i)->getAlignment()->setWrapText(true);
				$objPHPExcel->getActiveSheet()->getStyle('D1:D'.$i)->getAlignment()->setWrapText(true);
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
			
			
			// Rename worksheet
$objPHPExcel->getActiveSheet()->setTitle('Data Surat Masuk');
// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
$objWriter->save(str_replace('.php', '.xls', __FILE__));

			
			
if(isset($_POST["tterima"]) || isset($_POST["tsurat"])) 
{			
	echo "<a href='./export.xls' class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-save\"></span> Download</a>";
}
			
			
			?>
			<!-- end body -->
			</table>
			</div>
</div>

</body>
</html>
