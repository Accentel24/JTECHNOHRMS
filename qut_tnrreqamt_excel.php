<?php include_once('config.php'); 
include('PHPExcel-1.8/Classes/PHPExcel.php');
include 'PHPExcel-1.8/Classes/PHPExcel/Writer/Excel2007.php';
 $tsname=$_GET['user'];

	if(($tsname=='admin') or ($tsname=='durgarao') or ($tsname=='accounts') or ($tsname=='sumanthpotluri')  ){
    $y="select distinct quet_num,user from tnrequest_amnt where confirm!='Yes' order by id desc";
    }else{
   $y="select distinct quet_num,user  from tnrequest_amnt where confirm!='Yes' and user='$tsname' order by id desc";
	 }

$objPHPExcel	=	new	PHPExcel();
$objPHPExcel->getActiveSheet()->mergeCells('A1:T1');
 $objPHPExcel->getActiveSheet()->getStyle("A1:T1")->getFill()->setFillType(PHPExcel_Style_Fill::FILL_SOLID)
        ->getStartColor()->setRGB('0000FF');
 $objPHPExcel->getActiveSheet()->getStyle("A1:T1")->getFont()->setBold(true)->getColor()->setRGB('ffffff');
 $objPHPExcel->getActiveSheet()->setCellValue('A1', 'JS TECHNICAL SERVICE');
 $objPHPExcel->getActiveSheet()->getStyle("A1:T1")->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
 $objPHPExcel->getActiveSheet()->mergeCells('A4:T4');
 $objPHPExcel->getActiveSheet()->getStyle("A4:T4")->getFill()->setFillType(PHPExcel_Style_Fill::FILL_SOLID)
        ->getStartColor()->setRGB('0000FF');
        $objPHPExcel->getActiveSheet()->getStyle("A4:T4")->getFont()->setBold(true)->getColor()->setRGB('ffffff');

 $objPHPExcel->getActiveSheet()->setCellValue('A4', 'TAMILNADU REQUEST AMOUNT LIST');
 $objPHPExcel->getActiveSheet()->getStyle("A4:T4")->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
 $objPHPExcel->setActiveSheetIndex(0);
$objPHPExcel->getActiveSheet()->SetCellValue('A6', 'SNo');
$objPHPExcel->getActiveSheet()->SetCellValue('B6', 'Quotation No');
$objPHPExcel->getActiveSheet()->SetCellValue('C6', 'Supervisor');
$objPHPExcel->getActiveSheet()->SetCellValue('D6', 'Coordinator');
$objPHPExcel->getActiveSheet()->SetCellValue('E6', 'Store Name');
$objPHPExcel->getActiveSheet()->SetCellValue('F6', 'Store Code');
$objPHPExcel->getActiveSheet()->SetCellValue('G6', 'Store Type');
$objPHPExcel->getActiveSheet()->SetCellValue('H6', 'Ro Num');
$objPHPExcel->getActiveSheet()->SetCellValue('I6', 'Ro Date');
$objPHPExcel->getActiveSheet()->SetCellValue('J6', 'Fault Description');
$objPHPExcel->getActiveSheet()->SetCellValue('K6', 'RO Amount');
$objPHPExcel->getActiveSheet()->SetCellValue('L6', 'Service Fee');
$objPHPExcel->getActiveSheet()->SetCellValue('M6', 'GST');
$objPHPExcel->getActiveSheet()->SetCellValue('N6', 'Total');
$objPHPExcel->getActiveSheet()->SetCellValue('O6', 'Advance');
$objPHPExcel->getActiveSheet()->SetCellValue('P6', 'Requested Amount');
$objPHPExcel->getActiveSheet()->SetCellValue('Q6', 'Balance');
$objPHPExcel->getActiveSheet()->SetCellValue('R6', 'GST Type');
$objPHPExcel->getActiveSheet()->SetCellValue('S6', 'Whoom');
$objPHPExcel->getActiveSheet()->SetCellValue('T6', 'User');

$objPHPExcel->getActiveSheet()->getStyle("A6:T6")->getFill()->setFillType(PHPExcel_Style_Fill::FILL_SOLID)
        ->getStartColor()->setRGB('0000FF');
       // $objPHPExcel->getActiveSheet()->getRowDimension('6')->setRowHeight(30);
       $objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(22);
        $objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(12);
        $objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(25);
        $objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(20);
        $objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(20);
        $objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(16);
        $objPHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(13);
        $objPHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(12);
        $objPHPExcel->getActiveSheet()->getColumnDimension('J')->setWidth(14);
        $objPHPExcel->getActiveSheet()->getColumnDimension('K')->setWidth(13);
        $objPHPExcel->getActiveSheet()->getColumnDimension('L')->setWidth(13);
        $objPHPExcel->getActiveSheet()->getColumnDimension('M')->setWidth(13);
        $objPHPExcel->getActiveSheet()->getColumnDimension('N')->setWidth(13);
        $objPHPExcel->getActiveSheet()->getColumnDimension('O')->setWidth(13);
        $objPHPExcel->getActiveSheet()->getColumnDimension('P')->setWidth(13);
        $objPHPExcel->getActiveSheet()->getColumnDimension('Q')->setWidth(18);
        $objPHPExcel->getActiveSheet()->getColumnDimension('R')->setWidth(18);
        $objPHPExcel->getActiveSheet()->getColumnDimension('S')->setWidth(18);
         $objPHPExcel->getActiveSheet()->getColumnDimension('T')->setWidth(18);
 
$objPHPExcel->getActiveSheet()->getStyle("A6:T6")->getFont()->setBold(true)->getColor()->setRGB('ffffff');
$result			=	$db->query($y) or die(mysql_error());
$i=1;
$rowCount	=	7;
while($row	=	$result->fetch_assoc()){
    $qot=$row['quet_num'];
    $a="select * from add_tnqot where quet_num='$qot'";
    $result1=$db->query($a) or die(mysql_error());
    $row2=$result1->fetch_assoc();
    $str_code=$row2['store_code'];
    $ds="select * from dpr where store_code='$str_code'";
	$result2=$db->query($ds) or die(mysql_error());
	$row1=$result2->fetch_assoc();
	$objPHPExcel->getActiveSheet()->SetCellValue('A'.$rowCount, mb_strtoupper($i,'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('B'.$rowCount, mb_strtoupper($qot,'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('C'.$rowCount, mb_strtoupper($row1['superwisor'],'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('D'.$rowCount, mb_strtoupper($row1['coordinator'],'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('E'.$rowCount, mb_strtoupper($row1['store_name'],'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('F'.$rowCount, mb_strtoupper($str_code,'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('G'.$rowCount, mb_strtoupper($row1['format_type'],'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('H'.$rowCount, mb_strtoupper($row2['ro_no'],'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('I'.$rowCount, mb_strtoupper(date('d-m-Y',strtotime($row2['ro_date'])),'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('J'.$rowCount, mb_strtoupper($row2['falt_desc'],'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('K'.$rowCount, mb_strtoupper($row2['tot_base'],'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('L'.$rowCount, mb_strtoupper($row2['tot_ser'],'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('M'.$rowCount, mb_strtoupper($row2['tot_gst'],'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('N'.$rowCount, mb_strtoupper($row2['net'],'UTF-8'));
	$ty5="select sum(approve_amnt) as samt from tnrequest_amnt where quet_num='$qot'";
    $result3=$db->query($ty5) or die(mysql_error());
    $row3=$result3->fetch_assoc();      
	$objPHPExcel->getActiveSheet()->SetCellValue('O'.$rowCount, mb_strtoupper($row3['samt'],'UTF-8'));
	$tyy="select sum(req_amnt+gstamt) as rsamt from tnrequest_amnt where quet_num='$qot' and confirm='Pending'";
    $result3=$db->query($tyy) or die(mysql_error());
    $row4=$result3->fetch_assoc(); 
  	$objPHPExcel->getActiveSheet()->SetCellValue('P'.$rowCount, mb_strtoupper($row4['rsamt'],'UTF-8'));
	$objPHPExcel->getActiveSheet()->SetCellValue('Q'.$rowCount, mb_strtoupper($row2['bal'],'UTF-8'));
	
	$yt1="select gsttype,gstamt from tnrequest_amnt where quet_num='$qot'";
    $result5=$db->query($yt1) or die(mysql_error());
    $array1='';
                                        while($row5=$result5->fetch_assoc()){
                                            $at1=$row5['gstamt'];
                                            $sc1=$row5['gsttype'];
                                            //$rdate=date('d-m-Y',strtotime($row4['req_date']));
                                            $array1 .=$sc1."-".$at1.",";
                                            
                                            
                                        }
                                                            
                                                            
	$objPHPExcel->getActiveSheet()->SetCellValue('R'.$rowCount, ($array1));
	
	
	
	
	$yt="select req_amnt,gstamt,ac_det,req_date from tnrequest_amnt where quet_num='$qot'";
    $result4=$db->query($yt) or die(mysql_error());
    $array='';
                                        while($row4=$result4->fetch_assoc()){
                                            $at=$row4['req_amnt']+$row4['gstamt'];
                                            $sc=$row4['ac_det'];
                                            $rdate=date('d-m-Y',strtotime($row4['req_date']));
                                            $array .=$sc."-".$at."(".$rdate."),";
                                            
                                            
                                        }
                                                            
                                                            
	$objPHPExcel->getActiveSheet()->SetCellValue('S'.$rowCount, ($array));
	$objPHPExcel->getActiveSheet()->SetCellValue('T'.$rowCount, ($row['user']));
	
	
	

	

	$rowCount++;
$i++; }
$objWriter	=	new PHPExcel_Writer_Excel2007($objPHPExcel);


header('Content-Type: application/vnd.ms-excel'); //mime type
header('Content-Disposition: attachment;filename="tnreqamountlist.xlsx"'); //tell browser what's the file name
header('Cache-Control: max-age=0'); //no cache
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');  
$objWriter->save('php://output');
?>