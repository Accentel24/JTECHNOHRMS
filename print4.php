 <style>
 p{
	 height:5px;
	 top:0px;
 }
 h1,h3,h2{
	 height:8px;
 }
 .btn {
  background: #3498db;
  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
  background-image: -o-linear-gradient(top, #3498db, #2980b9);
  background-image: linear-gradient(to bottom, #3498db, #2980b9);
  -webkit-border-radius: 28;
  -moz-border-radius: 28;
  border-radius: 28px;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}
 </style>
 <script type="text/javascript">
            function printt()
            {
                document.getElementById("prt").style.display="none";
                document.getElementById("cls").style.display="none";
            window.print();
            }
            function closs()
            {
                window.close();
            }
        </script>
                               
                               
                                <?php
								include('dbconnection/connection.php');
//include('org2.php');
				 $id=$_GET['id'];
						 $id2=$_GET['id1'];
						 $Class=$_GET['id3'];
						 $Section=$_GET['id4'];
						 $Medium=$_GET['id5'];
						 $acd_year=$_GET['id6'];
				
						$sq=mysqli_query($link,"select * from marks_entry where Class='$Class' and Section='$Section' and Medium='$Medium' and  test='$id2' and acd_year='$acd_year' and roll_number='$id'");
						while($re=mysqli_fetch_array($sq)){
							$test=$re['test'];
							$sub=$re['sub'];
							$rnum=$re['roll_number'];
							$name=$re['frist_name1'];
							$med=$re['Medium']; 
							$marks=$re['marks'];
							$Class=$re['Class'];
							$Section=$re['Section'];
							$test=$re['test'];
						     	 	
						}
						?>
                       
                       
                        
                           <?php

$sql="select * from organization";
$res=mysqli_query($link,$sql) or die(mysqli_error());
while($row=mysqli_fetch_array($res)){
	$orgname=$row['orgname'];
	$oaddr=$row['address'];
	$phone=$row['phone'];
	
	
}
?>






 <?php				 	// $mna="select b.health,b.remarks, a.id, a.fname,a.flangruage,a.admno,b.Height,b.Weight,a.mname,a.Date_of_Birth  from student_register a ,height b  where a.Roll_Number='$id' and  a.Class='$Class' and a.section='$Section' and  a.Medium='$Medium' and a.Academic_Year='$acd_year'";
						
						 $mna="select
						* from student_register
						 where rollno='$id' and class='$Class' and section='$Section' and medium='$Medium'
						  and acyear='$acd_year'";
						
						
						$sql=mysqli_query($link,$mna);
						$r=mysqli_fetch_array($sql);
							 $fname=$r['fname'];
							 $roll=$r['rollno'];
						  $fat=$r['fname'];
						    $flang=$r['flangruage'];
							$Admission_No=$r['admno'];
							//echo $Height=$r['Height'];
							//echo  $Weight=$r['Weight'];
							//echo    $health=$r['health'];
							//echo	 $remarks=$r['remarks'];
							   $mname=$r['mname'];
							    $dob=$r['dob'];
								$pid=$r['id'];
						
						$mp=mysqli_query($link,"select * from photo where id1='$pid'");
						$nm=mysqli_fetch_array($mp);
						$photo=$nm['location'];
						?>

	 
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
  
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body style="float:center; ">
         <div align="center">
		 <div style="height:70;"></div>
		  <?php
		if($test=="Summative Assessment1"){ ?>
		
		
	  <p align="center"><h2>Performance Profile<br/>Term I:Academic Year <?php echo $acd_year; ?></h2></p>
	
	<?php	
		}else if($test=="Summative Assessment2"){?>
			
			
	  <p colspan="4" align="center"><h2>Performance Profile<br/>Term II:Academic Year <?php echo $acd_year; ?></h2></p>
	 
			
			
			
			<?php
		}else if($test=="Formative Assessment-1"){?>
			
	  <p colspan="4" align="center"><h2>Performance Profile<br/>Formative Assessment-1:Academic Year <?php echo $acd_year; ?></h2></p>
	
			
			<?php
		} else if($test=="Formative Assessment-2"){?>
			
	  <p colspan="4" align="center"><h2>Performance Profile<br/>Formative Assessment-2:Academic Year <?php echo $acd_year; ?></h2></p>
	
			
			<?php
		}else if($test=="Formative Assessment-3"){?>
			
	  <p colspan="4" align="center"><h2>Performance Profile<br/>Formative Assessment-3:Academic Year <?php echo $acd_year; ?></h2></p>
	
			
			<?php
		}else if($test=="Formative Assessment-4"){?>
			
	  <p colspan="4" align="center"><h2>Performance Profile<br/>Formative Assessment-4:Academic Year <?php echo $acd_year; ?></h2></p>
	
			
			<?php
		}else{
			
		}



	  ?>
		 </div>
<div >
    
	
      <table  width="800" align="center" > 
	  <tr style="height:20px;"></tr>
	 
	  <tr>
	  <td><b>Student Name</b></td>
	  <td><b><?php echo $name ?></b></td>
	   <td><b>Roll No</b></td>
	  <td><?php echo $rnum ?></td>
	  
	 <td colspan="2" rowspan="4"> <img src="<?php echo $photo; ?>" height="120"/></td>
	  </tr>
	  <tr>
	  <td><b>Father Name</b></td>
	  <td><?php echo $fname ?></td>
	  <td><b>Adm No</b></td>
	  <td><?php echo $Admission_No ?></td>
	  </tr>
	    <tr>
	  <td><b>Mother Name</b></td>
	  <td><?php echo $mname ?></td>
	  <td><b>Class</b></td>
	  <td><?php echo $Class ?></td>
	  </tr>
	  <tr>
	  <td><b>Date of Birth</b></td>
	  <td><?php echo $dob ?></td>
	   <td><b>Medium</b></td>
	  <td><?php echo $med ?></td>
	  </tr>
	 
	  
	   
	  
	
	   </table>
       
       <hr>
	 
	 
     <?php
	 $gr=mysqli_query($link,"select * from ex2");
	 while($gr1=mysqli_fetch_array($gr)){
		 
	 
	 $grade=$gr1['grade'];
	 $from=$gr1['from'];
	 $to=$gr1['to']; }
	
	 ?>
     
     <?php if(($test=="Formative Assessment-1") or ($test=="Formative Assessment-2") or ($test=="Formative Assessment-3") or ($test=="Formative Assessment-4")){
?>  
     <table border="1" align="center" width="708" cellpadding="0" cellspacing="0">
	 <tr><td align="center"><b>SUBJECT</b></td><td align="center"><b>Marks</b></td><?php if(  ($Class=="Nursery") or ($Class=="L.K.G") ){  } else{ ?><td align="center"><b>Grade</b></td><?php }?></tr>
  
  <?php
   $i=$_REQUEST['id'];
			 $tes=$_GET['id1'];
			 
			 $a="select sum(marks) as marks1 from marks_entry where Class='$Class' and Section='$Section' and Medium='$Medium' and  test='$id2' and acd_year='$acd_year' and roll_number='$id'";
    $sq1=mysqli_query($link,$a);
	 while($resu=mysqli_fetch_array($sq1)){
		// $sub1=$resu['sub'];
		 $tot=$resu['marks1'];
	 }?>
     
     <?php
	 	//echo $id=$_GET['id'];
		 $i=$_REQUEST['id'];
			 $tes=$_GET['id1'];
			 $ck=mysqli_query($link,"select subject	 from addsub where class='$Class' order by id ");
			 while($ck1=mysqli_fetch_array($ck)){
				 $subject=$ck1['subject'];
			 
	 $sq=mysqli_query($link,"select * from marks_entry where Class='$Class' and Section='$Section' and Medium='$Medium' and  test='$id2' and acd_year='$acd_year' and roll_number='$id' and sub='$subject'");
	 $cn=mysqli_num_rows($sq);
	 while($resu=mysqli_fetch_array($sq)){
		  $sub1=$resu['sub'];
		 $mrk=$resu['marks'];
		 $max_marks=$resu['max_marks'];
		 $max=$resu['max_marks'];
		 $m=$max_marks+$m;
		 
		 if($sub1=="PhysicalScience"){
			 $m1=$mrk;
			 
		 }
		 if($sub1=="BiologyScience"){
			 $m2=$mrk;
			 
		 }
		 if( $sub1=="BiologyScience"){
			 $mrk=$m1+$m2;
			 $sub1="General Science";
		
			 
		 }
		 
		 
		 if($sub1=="Hindi/Urdu"){   $sub1=$flang;}{ $sub1;}
		 ?>
		 
		 <?php 
		 
		
		  if(($mrk >= 18.5) && ($mrk <= 20))
		
		{
			$a='A1';
			//$a1='10';
		}
			else if(($mrk >=16.5)&& ($mrk <= 18)){
		$a='A2';
		//$a1='9';
	}

	else if(($mrk >= 14.5)&& ($mrk <= 16)){

		$a='B1';
		//$a1='8';
	}
	else if(($mrk >= 12.5)&& ($mrk <= 14)){
	
		$a='B2';
		//$a1='7';
	}
	else if(($mrk >=10.5)&& ($mrk <= 12)){

		$a='C1';
		//$a1='6';
	}
	else if(($mrk >=8.5)&& ($mrk <= 10)){
	
		$a='C2';
		//$a1='5';
	}
	else if(($mrk >=7)&& ($mrk <= 8)){
	
		$a='D';
		//$a1='4';
	}
	
		else if(($mrk >=9)&& ($mrk <= 10)){
		$a='D';
		$a1='3';
	}
	else if(($mrk >=0)&& ($mrk <= 7)){
		$a='E';
		//$a1='0';
	}
		 
		
	?>
         
		 
		        <?php   if($sub1=="PhysicalScience"){ ?>
         
     <tr style="display:none;"><td style="margin-left:20px;"><?php echo $sub1;  ?> </td><td align="center"><?php echo $mrk; ?></td>   <?php if(  ($Class=="Nursery") or ($Class=="L.K.G") ){  } else{ ?><td align="center"><?php echo $a?></td><?php }?>    </tr>
	 
	 <?php  } else {?>

	        <tr ><td style="padding-left:20px;" width="130"><?php echo $sub1?></td><td align="center"><?php echo $mrk; ?></td> <?php if(  ($Class=="Nursery") or ($Class=="L.K.G") ){  } else{ ?><td align="center"><?php echo $a?></td><?php }?></tr>
	   
	<?php } 
	

	
	
	  } 
	  
			 }?>
       </table>
	
	
  <?php }elseif($test=="Summative Assessment1"){?>
  <p align="center"><b>CURRICULAR AREAS</b></p>
  <table border="1" align="center" width="708" cellpadding="0" cellspacing="0">
  
  <tr><td align="center"><b>SUBJECT</b></td><td align="center"><b>SA - I<br/>(80%)</b></td> <td align="center"><b>FA1 & 2<br/>(20%)</b></td><td align="center"><b>Total<br/>(100%)</b></td>  <?php if(  ($Class=="Nursery") or ($Class=="L.K.G") ){  } else{ ?> <td align="center"><b>Grade</b></td><td align="center"><b>GPA</b></td><?php }?>         </tr>
	  <?php
    $i=$_REQUEST['id'];
			 $tes=$_GET['id1'];
   
	 	//echo $id=$_GET['id'];
		 $i=$_REQUEST['id'];
			 $tes=$_GET['id1'];
			 $ck2=mysqli_query($link,"select subject from addsub where class='$Class' order by id ");
			 while($ck3=mysqli_fetch_array($ck2)){
				 $subject1=$ck3['subject'];
			  $mn="select * from marks_entry where Class='$Class' and Section='$Section' and Medium='$Medium' and  test='$id2' and acd_year='$acd_year' and roll_number='$id' and sub='$subject1'";
	 $sq1=mysqli_query($link,$mn) or die(mysql_error());
	
		//$cs=0;
	$cn=mysqli_num_rows($sq);
	 while($resu1=mysqli_fetch_array($sq1)){
	 		$rno=$resu1['roll_number'];
		 $sub2=$resu1['sub'];
		 $mrk=$resu1['marks'];
		 $max_marks=$resu1['max_marks'];
		 $max=$resu1['max_marks'];
		 $m=$max_marks+$m;
		 
		 
		 if($sub2=="PhysicalScience"){
			 $m110=$mrk;
			 
		 }
		 
		 
		
		 
		 	 
		 
		 
		 $mn1="select * from marks_entry where Class='$Class' and Section='$Section' and Medium='$Medium' and  test='Formative Assessment-1' and acd_year='$acd_year' and roll_number='$rno' and sub='$sub2'";
		 $r=mysqli_query($link,$mn1);
		 $nn=mysqli_fetch_array($r);
		  $mark12=$nn['marks'];
		//  $s=$nn['sub'];
		  
		  if($sub2=="PhysicalScience"){
			 $m11=$mark12;
			 
		 }
		
		
		  
		  
$mn2="select * from marks_entry where Class='$Class' and Section='$Section' and Medium='$Medium' and  test='Formative Assessment-2' and acd_year='$acd_year' and roll_number='$rno' and sub='$sub2'";
		 $r1=mysqli_query($link,$mn2);
		 $nn1=mysqli_fetch_array($r1);
		  $mark123=$nn1['marks'];
		 
		 if($sub2=="PhysicalScience"){
			 $m01=$nn1['marks'];
			 
		 }
		 
		
		 
		
		 
		 

		 
		 if($sub2=="Hindi/Urdu"){  $sub2=$flang;}{ $sub2;}
		 
		 
		 $fmr=($mark12+$mark123)/2;
		
		
		  $tm1=$mrk+$fmr;
		 $tm=round($tm1);
		  
		 if($sub2=="BiologyScience"){
			 $m220=$mrk;
			 $mrk=$m110+$m220;
			$fmr=(($m01+$nn1['marks']+$m11+$nn['marks'])/2);
			 $p=(($m01+$nn1['marks']+$m11+$nn['marks'])/2);
			//echo $fmr=$p;
			  $tm1=$m110+$m220+$p;
			  $tm=round($tm1);
			 $sub2="General Science";
			
		 }
		 
		 
		 
		 
		 
		 
		 
		 
		if($sub2=="Telugu"){
		 if(($tm >= 91) && ($tm <= 100))
		
		{
			$a='A1';
			$a1='10';
		}
			else if(($tm >=80)&& ($tm <= 90)){
		$a='A2';
		$a1='9';
	}

	else if(($tm >= 68)&& ($tm <= 79)){

		$a='B1';
		$a1='8';
	}
	else if(($tm >= 56)&& ($tm <= 67)){
	
		$a='B2';
		$a1='7';
	}
	else if(($tm >=44)&& ($tm <= 55)){

		$a='C1';
		$a1='6';
	}
	else if(($tm >=32)&& ($tm <= 43)){
	
		$a='C2';
		$a1='5';
	}
	else if(($tm >=20)&& ($tm <= 31)){
	
		$a='D';
		$a1='4';
	}
	
		else if(($tm >=0)&& ($tm <= 19)){
		$a='E';
		$a1='3';
	}
	}else{
	
	
	if(($tm >= 91) && ($tm <= 100))
		
		{
			$a='A1';
			$a1='10';
		}
			else if(($tm >=81)&& ($tm <= 90)){
		$a='A2';
		$a1='9';
	}

	else if(($tm >= 71)&& ($tm <= 80)){

		$a='B1';
		$a1='8';
	}
	else if(($tm >= 61)&& ($tm <= 70)){
	
		$a='B2';
		$a1='7';
	}
	else if(($tm >=51)&& ($tm <= 60)){

		$a='C1';
		$a1='6';
	}
	else if(($tm >=41)&& ($tm <= 50)){
	
		$a='C2';
		$a1='5';
	}
	else if(($tm >=35)&& ($tm <= 40)){
	
		$a='D';
		$a1='4';
	}
	
		else if(($tm >=0)&& ($tm <= 34)){
		$a='E';
		$a1='3';
	}
	
	}
	?>
         
		 
		 
		 
		 
		 <?php   if($sub2=="PhysicalScience"){ ?>
         
     <tr style="display:none;"><td style="padding-left:20px;" width="50"><?php echo $sub2;  ?> </td><td align="center"><?php echo $mrk; ?></td>  <td align="center"><?php echo $fmr; ?></td>    <td align="center"><?php echo $tm; ?></td>   <?php if(  ($Class=="Nursery") or ($Class=="L.K.G") ){  } else{ ?> <td align="center"><?php echo $a?></td><td align="center"><?php echo $a1?></td><?php }?>                    </tr>
	 
	 <?php  } else {?>

	        <tr ><td style="padding-left:20px;" width="120"><?php echo $sub2?> </td><td align="center"><?php echo $mrk; ?></td>  <td align="center"><?php echo $fmr; ?></td><td align="center"><?php echo $tm; ?></td> <?php if(  ($Class=="Nursery") or ($Class=="L.K.G") ){  } else{ ?> <td align="center"><?php echo $a?></td><td align="center"><?php echo $a1?> <?php  $gpa=$gpa+$a1; ?><?php  $cs1=$cs1+1; ?> </td><?php }?></tr>
	   
	<?php } 
        // echo $gpa=($gpa+$a1);
			 }
			 } ?>
       <tr>
	   <td colspan="5" style="padding-left:20px;"> Cumulative Grade Point Average(CGPA)</td>
	   <td align="center">  <?php echo round($gpa/$cs1,1); ?></td>
	   </tr>

	 </table>
	 <p align="center"><b>CO-CURRICULAR AREAS</b></p>
	<table  border="1" align="center" width="508" cellpadding="0" cellspacing="0">
	
	<tr>
	<td align="center" width="100"><b>SUBJECT</b></td>
	<td  align="center" width="100"><b>SA-I 50 MARKS</b></td>
	<td align="center"  width="50"><b>GRADE</b></td>
	</tr>
	<?php
	 $qus="select * from coactivity where class='$Class' and sec='$Section' and med='$Medium' and test='$test' and roll_number='$id' and year='$acd_year'";
	$red=mysqli_query($link,$qus) or die(mysql_error());
$pf=mysqli_fetch_array($red);
	?>
	<tr>
	<td style="padding-left:20px;" width="150"><?php echo $pf['ve']; ?></td>
	<td align="center" width="50"><?php echo $pf['vem']; ?></td>
	<td align="center" width="50"><?php echo $pf['veg']; ?></td>
	</tr>
	<tr>
	<td style="padding-left:20px;" width="150"><?php echo $pf['cue']; ?></td>
	<td align="center" width="50"><?php echo $pf['cuem']; ?></td>
	<td align="center" width="50"><?php echo $pf['cueg']; ?></td>
	</tr>
	<tr>
	<td style="padding-left:20px;" width="150"><?php echo $pf['pe']; ?></td>
	<td align="center" width="50"><?php echo $pf['pem']; ?></td>
	<td align="center" width="50"><?php echo $pf['peg']; ?></td>
	</tr>
	<tr>
	<td style="padding-left:20px;" width="150"><?php echo $pf['ce']; ?></td>
	<td align="center" width="50"><?php echo $pf['cem']; ?></td>
	<td align="center" width="50"><?php echo $pf['ceg']; ?></td>
	</tr>
	</table>
	  
	  <?php 
	  
  }else{
  ?>
  <table border="1" align="center" width="708" cellpadding="0" cellspacing="0">
  <tr><td><b>SUBJECT</b></td><td align="center"><b>SA - II<br/>(80%)</b></td> <td align="center"><b>FA1 TO 4<br/>(20%)</b></td><td align="center"><b>Total<br/>(100%)</b></td><?php if(  ($Class=="Nursery") or ($Class=="L.K.G") ){  } else{ ?> <td align="center"><b >Grade</b></td><td align="center"><b>GPA</b></td><?php }?>   </tr>
	  <?php
    $i=$_REQUEST['id'];
			 $tes=$_GET['id1'];
   
	 	//echo $id=$_GET['id'];
		 $i=$_REQUEST['id'];
			 $tes=$_GET['id1'];
			 $ck4=mysql_query("select subject from addsub where class='$Class' order by id ");
			 while($ck5=mysql_fetch_array($ck4)){
				 $subject2=$ck5['subject'];
			  $mn="select * from marks_entry where Class='$Class' and Section='$Section' and Medium='$Medium' and  test='$id2' and acd_year='$acd_year' and roll_number='$id' and sub='$subject2'";
	 $sq1=mysqli_query($link,$mn) or die(mysql_error());
	 $cn=mysqli_num_rows($sq);
	 while($resu1=mysqli_fetch_array($sq1)){
	 		$rno=$resu1['roll_number'];
		 $sub2=$resu1['sub'];
		 $mrk=$resu1['marks'];
		  $max_marks=$resu1['max_marks'];
		 $max=$resu1['max_marks'];
		 $m=$max_marks+$m;
		 
		 if($sub2=="PhysicalScience"){
			 $ps1=$mrk;
			 
		 }
		 
		 
		 
		 
		  $mn3="select * from marks_entry where Class='$Class' and Section='$Section' and Medium='$Medium' and  test='Formative Assessment-1' and acd_year='$acd_year' and roll_number='$rno' and sub='$sub2'";
		 $r3=mysqli_query($link,$mn3);
		 $nn3=mysqli_fetch_array($r3);
		  $mark124=$nn3['marks'];
		  
		   if($sub2=="PhysicalScience"){
			 $m1=$mark124;
			 
		 }
		 
		  
		  
		  
		  
		  
		  
$mn4="select * from marks_entry where Class='$Class' and Section='$Section' and Medium='$Medium' and  test='Formative Assessment-2' and acd_year='$acd_year' and roll_number='$rno' and sub='$sub2'";
		 $r4=mysqli_query($link,$mn4);
		 $nn4=mysqli_fetch_array($r4);
		  $mark1234=$nn4['marks'];
		 
		 
		 
		 if($sub2=="PhysicalScience"){
			 $m2=$mark1234;
			 
		 }
		 
	
		 $mn1="select * from marks_entry where Class='$Class' and Section='$Section' and Medium='$Medium' and  test='Formative Assessment-3' and acd_year='$acd_year' and roll_number='$rno' and sub='$sub2'";
		 $r=mysqli_query($link,$mn1);
		 $nn=mysqli_fetch_array($r);
		  $mark12=$nn['marks'];
		  
		  
		  if($sub2=="PhysicalScience"){
			 $m3=$mark12;
			 
		 }
		 
		 
		  
$mn2="select * from marks_entry where Class='$Class' and Section='$Section' and Medium='$Medium' and  test='Formative Assessment-4' and acd_year='$acd_year' and roll_number='$rno' and sub='$sub2'";
		 $r1=mysqli_query($link,$mn2);
		 $nn1=mysqli_fetch_array($r1);
		  $mark123=$nn1['marks'];
		 
		 if($sub2=="PhysicalScience"){
			 $m4=$mark123;
			 
		 }
		
		 
		 
		 $fmr=($mark12+$mark123+$mark124+$mark1234)/4;
		  $tm1=$mrk+$fmr;
		  
		  
		   if($sub2=="Hindi/Urdu"){  $sub2=$flang;}{ $sub2;}
		
		$tm=round($tm1);
		
		
		
		
		 if($sub2=="BiologyScience"){
			 $m220=$mrk;
			 $mrk=$ps1+$m220;
			 $p=(($mark12+$mark123+$mark124+$mark1234+$m1+$m2+$m3+$m4)/4);
			 $fmr=(($mark12+$mark123+$mark124+$mark1234+$m1+$m2+$m3+$m4)/4);
			//echo $fmr=$p;
			  $tm1=$ps1+$m220+$p;
			  $tm=round($tm1);
			 $sub2="General Science";
			
				
			
		 }
		 
			
		
		if($sub2=="Telugu"){
		 if(($tm >= 91) && ($tm <= 100))
		
		{
			$a='A1';
			$a1='10';
		}
			else if(($tm >=80)&& ($tm <= 90)){
		$a='A2';
		$a1='9';
	}

	else if(($tm >= 68)&& ($tm <= 79)){

		$a='B1';
		$a1='8';
	}
	else if(($tm >= 56)&& ($tm <= 67)){
	
		$a='B2';
		$a1='7';
	}
	else if(($tm >=44)&& ($tm <= 55)){

		$a='C1';
		$a1='6';
	}
	else if(($tm >=32)&& ($tm <= 43)){
	
		$a='C2';
		$a1='5';
	}
	else if(($tm >=20)&& ($tm <= 31)){
	
		$a='D';
		$a1='4';
	}
	
		else if(($tm >=0)&& ($tm <= 19)){
		$a='E';
		$a1='3';
	}
	}else{
	
	
	if(($tm >= 91) && ($tm <= 100))
		
		{
			$a='A1';
			$a1='10';
		}
			else if(($tm >=81)&& ($tm <= 90)){
		$a='A2';
		$a1='9';
	}

	else if(($tm >= 71)&& ($tm <= 80)){

		$a='B1';
		$a1='8';
	}
	else if(($tm >= 61)&& ($tm <= 70)){
	
		$a='B2';
		$a1='7';
	}
	else if(($tm >=51)&& ($tm <= 60)){

		$a='C1';
		$a1='6';
	}
	else if(($tm >=41)&& ($tm <= 50)){
	
		$a='C2';
		$a1='5';
	}
	else if(($tm >=35)&& ($tm <= 40)){
	
		$a='D';
		$a1='4';
	}
	
		else if(($tm >=0)&& ($tm <= 34)){
		$a='E';
		$a1='3';
	}
	
	}
	
	
	?>
         
		 <?php   if($sub2=="PhysicalScience"){ ?>
         
     <tr style="display:none;"> <td style="padding-left:20px;"><?php echo $sub2?> </td><td align="center"><?php echo $mrk; ?></td>  <td align="center"><?php echo round($fmr); ?></td>    <td align="center"><?php echo $tm; ?></td>      <?php if(  ($Class=="Nursery") or ($Class=="L.K.G") ){  } else{ ?> <td><?php echo $a?></td><td><?php echo $a1?></td><?php }?>         </tr>
	 
	 <?php  } else {?>

	        <tr ><td style="padding-left:20px;" width="120"><?php echo $sub2?>  </td><td align="center"><?php echo $mrk; ?></td>  <td align="center"><?php echo round($fmr); ?></td>    <td align="center"><?php echo $tm; ?></td> <?php if(  ($Class=="Nursery") or ($Class=="L.K.G") ){  } else{ ?> <td align="center"><?php echo $a?></td><td align="center"><?php echo $a1?> <?php  $gpa=$gpa+$a1; ?> <?php  $cs1=$cs1+1; ?> </td><?php }?></tr>
	   
	<?php } 
		 
		 
		 
		 
		 
     
			 } }?>
       
<tr>
	   <td colspan="5" style="padding-left:20px;"> Cumulative Grade Point Average(CGPA)</td>
	   <td align="center">  <?php echo round($gpa/$cs1,1); ?></td>
	   </tr>
	 </table>
  <p align="center"><b>CO-CURRICULAR AREAS</b></p>
	<table  border="1" align="center" width="708" cellpadding="0" cellspacing="0">
	
	<tr>
	<td align="center" width="100"><b>SUBJECT</b></td>
	<td  align="center" width="100"><b>SA-I 50 MARKS</b></td>
	<td  align="center" width="100"><b>SA-II 50 MARKS</b></td>
	<td  align="center" width="100"><b>TOTAL</b></td>
	<td align="center"  width="50"><b>GRADE</b></td>
	</tr>
	<?php
	$qus="select * from coactivity where class='$Class' and sec='$Section' and med='$Medium' and test='Summative Assessment1' and roll_number='$id' and year='$acd_year'";
	$red=mysqli_query($link,$qus) or die(mysql_error());
$pf=mysqli_fetch_array($red);
$ts=$pf['test'];
$vem1=$pf['vem'];
$cuem1=$pf['cuem'];
$pem1=$pf['pem'];
$cem1=$pf['cem'];



$qus1="select * from coactivity where class='$Class' and sec='$Section' and med='$Medium' and test='Summative Assessment2' and roll_number='$id' and year='$acd_year'";
	$red1=mysqli_query($link,$qus1) or die(mysql_error());
$pf1=mysqli_fetch_array($red1);
$vem2=$pf1['vem'];
$cuem2=$pf1['cuem'];
$pem2=$pf1['pem'];
$cem2=$pf1['cem'];



$vem3=$vem1+$vem2;
if($vem3=="0"){$vem3="";}
$cuem3=$cuem1+$cuem2;
if($cuem3=="0"){$cuem3="";}
$pem3=$pem1+$pem2;
if($pem3=="0"){$pem3="";}
$cem3=$cem1+$cem2;
if($cem3=="0"){$cem3="";}



	?>
	<tr>
	<td style="padding-left:20px;" width="150"><?php echo $ve= $pf['ve']; ?></td>
	<td align="center" width="50"><?php  echo $vem1;?></td>
	<td align="center" width="50"><?php  echo $vem2?></td>
	<td align="center" width="50"><?php echo $vem3; ?></td>
	<td align="center" width="50">
	<?php if(  (($vem3 >= 85) && ($vem3 <= 100))   )
				{
					echo  $gd="A+";
					
				}else if ( (($vem3 >= 71) && ($vem3 <= 84))  )
				{
				echo	$gd="A";
					
				}else if  ( (($vem3 >= 56) && ($vem3 <= 70))   )
				{
				echo	$gd="B";
					
				}else if  ( (($vem3 >= 41) && ($vem3 <= 55))  )
				{
					echo $gd="C";
					
				}else if($vem3==''){
					
					echo	$gd="";
					
					
				} else{
					echo	$gd="D";
					}
	
	
	 ?></td>
	</tr>
	<tr>
	<td style="padding-left:20px;" width="150"><?php echo $cue= $pf['cue']; ?></td>
	<td align="center" width="50"><?php  echo $cuem1?></td>
	<td align="center" width="50"><?php  echo $cuem2?></td>
	<td align="center" width="50"><?php echo $cuem3; ?></td>
	<td align="center" width="50"><?php

if(  (($cuem3 >= 85) && ($cuem3 <= 100))    )
				{
				echo	 $gd="A+";
					
				}else if (   (($cuem3 >= 71) && ($cuem3 <= 84))     )
				{
				echo	$gd="A";
					
				}else if  (  (($cuem3 >= 56) && ($cuem3 <= 70)) )
				{
				echo	$gd="B";
					
				}else if  (  (($cuem3 >= 41) && ($cuem3 <= 55))  )
				{
				echo	$gd="C";
					
				}else if($cuem3==''){
					
					echo	$gd="";
					
					
				} else {
					
					echo	$gd="D";
					
					
				} 





	?></td>
	</tr>
	<tr>
	<td style="padding-left:20px;" width="150"><?php echo $pe=$pf['pe']; ?></td>
	<td align="center" width="50"><?php  echo $pem1?></td>
	<td align="center" width="50"><?php echo $pem2?></td>
	<td align="center" width="50"><?php echo $pem3; ?></td>
	<td align="center" width="50"><?php


if(   (($pem3 >= 85) && ($pem3 <= 100))  )
				{
				echo	 $gd="A+";
					
				}else if (  (($pem3 >= 71) && ($pem3 <= 84))     )
				{
				echo	$gd="A";
					
				}else if  (  (($pem3 >= 56) && ($pem3 <= 70))   )
				{
				echo	$gd="B";
					
				}else if  (  (($pem3 >= 41) && ($pem3 <= 55))  )
				{
				echo	$gd="C";
					
				}else if($pem3==''){
					
					echo	$gd="";
					
					
				} else{
					
					echo	$gd="D";
					
					
				} 





	 ?></td>
	</tr>
	<tr>
	<td style="padding-left:20px;" width="150"><?php echo $ce=$pf['ce']; ?></td>
	<td align="center" width="50"><?php echo $cem1?></td>
	<td align="center" width="50"><?php echo $cem2?></td>
	<td align="center" width="50"><?php echo $cem3; ?></td>
	<td align="center" width="50"><?php 
	
	
	if(  (($cem3 >= 85) && ($cem3 <= 100))   )
				{
				echo	 $gd="A+";
					
				}else if (  (($cem3 >= 71) && ($cem3 <= 84))    )
				{
				echo	$gd="A";
					
				}else if  ( (($cem3 >= 56) && ($cem3 <= 70))  )
				{
				echo	$gd="B";
					
				}else if  (  (($cem3 >= 41) && ($cem3 <= 55))  )
				{
					echo $gd="C";
					
				}else if($cem3==''){
					
					echo	$gd="";
					
					
				} else {
					
					echo	$gd="D";
					
					
				} 
	
	
	
	
	
	
	 ?></td>
	</tr>
	</table>
  
  <?php
  }
  ?>
  
     </table><br/>
	 
	 <div style="width:100%;float:left;" align="center"> 
	 <div style="width:45%;float:left;">
	 <table border="1" align="center" width="220"  cellpadding="0" cellspacing="0">
	 <tr>
	 <th colspan="2">Attendance</th>
	 
	 </tr>
	 <?php 
	 
	  $pq1="select  distinct (date2) from attendence where class1='$Class'  and  sect1='$Section' and  med1='$med' and   acdyear='$acd_year'";
	 $rs1=mysqli_query($link,$pq1) or die(mysql_error());
	 $pcount1=mysqli_num_rows($rs1);
	 
	 
	  $pq="select * from attendence where class1='$Class'  and  sect1='$Section' and  med1='$med' and  rnum='$id' and  acdyear='$acd_year' and atten<>''";
	 $rs=mysqli_query($link,$pq) or die(mysql_error());
	 $pcount=mysqli_num_rows($rs);
	 
	 
	 ?>
	 
	 
	 <tr>
	 <td style="padding-left:20px;" width="150" >No of Working Days</td>
	 <td style="padding-left:20px;"><?php  echo $pcount1 ?></td>
	
	 </tr>
	 <tr>
	 <td style="padding-left:20px;" width="150" >No of Days Present</td>
	 
	 
	 
	 <td style="padding-left:20px;" ><?php  echo $pcount ?></td>
	
	 </tr>
	 <tr>
	 <td style="padding-left:20px;" width="150" >Percentage</td>
	 <td style="padding-left:20px;" ><?php echo ($pcount*100)/$pcount1;  ?></td>
	
	 </tr>
	 </table>
	 
	 </div>
	 <div style="width:50%;float:left;">
	 <?php 
	 
	
	 
	 
 $qu="select * from height where Class='$Class' and Section='$Section' and Medium='$Medium' and roll_number='$id'  and acd_year='$acd_year'";
$rs4=mysqli_query($link,$qu) or die(mysql_error());
$rp=mysqli_fetch_array($rs4);
$Height=$rp['Height'];
$Weight=$rp['Weight'];
//$remarks=$rp['remarks'];
$health=$rp['health'];


	 ?>
	 <table border="1" align="center" width="420"  cellpadding="0" cellspacing="0">
	 <tr>
	 
	 <th colspan="2">Health Status</th>
	 </tr>
	 <tr>
	
	 <td style="padding-left:20px;" width="120" >Height</td>
	 <td align="center"><?php echo $Height."  cms"; ?></td>
	 </tr>
	 <tr>
	 
	 <td style="padding-left:20px;" width="120">Weight</td>
	 <td align="center"><?php echo $Weight."  kgs"; ?></td>
	 </tr>
	 <tr>
	
	 <td style="padding-left:20px;" width="120">Health Issue</td>
	 <td align="center"><?php echo $health; ?></td>
	 </tr>
	 </table>
	 
	 </div>
	 
	 </div>
	<br>
	<form method="post" action="remarks_insert.php">
	 <table width="608">
	 <tr>
	 <td><input type="hidden" name="class" value="<?php echo $Class ?>"/><input type="hidden" name="Section" value="<?php echo $Section ?>"/>
	 <input type="hidden" name="Medium" value="<?php echo $Medium ?>"/><input type="hidden" name="rollno" value="<?php echo $id ?>"/>
	 <input type="hidden" name="acd_year" value="<?php echo $acd_year ?>"/><input type="hidden" name="test" value="<?php echo $test ?>"/><input type="hidden" name="name" value="<?php echo $name ?>"/></td>
	 </tr>
	 <?php 
	 $qup="select * from remarks where class='$Class' and section='$Section' and medium='$Medium' and rollno='$id'  and acdyear='$acd_year' and test='$test'";
		$rs41=mysqli_query($link,$qup) or die(mysql_error());
		$rp1=mysqli_fetch_array($rs41);
		$remarks1=$rp1['remarks'];
	 ?>
	  <tr><td><b>Remarks:</b>
	  <?php
if($remarks1!=""){
	echo "<input type='text' name='remarks' value='".$remarks1."'/>";
}else{
	echo "<input type='text' name='remarks' />";
}


	  ?>
	  &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn" name="submit" style="background:color:red" value="save"/></td></tr>
	 
	</table>
	</form>
	 <table width="608">
	  
	 
	
	 <tr>
	 <td>
	 Class Teacher &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Parent&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 Principal</td>
	 </tr></table>
    <table align="center" >
     <tr><td height="20px"></td></tr><tr>
    <td></td><td align="center"><input type="button" value="Print" id="prt" class="butbg" onClick="printt()"/></td><td><input type="button" value="Close" id="cls" class="butbg"  onclick="javascript:location.href='marks_entry_grade.php'"/></td>
</tr></table>
     
     </fieldset><table>
	
	
   
		