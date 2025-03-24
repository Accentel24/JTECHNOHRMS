<?php //include('config.php');

include('dbconnection/connection.php');


if(isset($_POST['submit'])){

    $letter_for=$_POST['letter_for']; 
	$desig=$_POST['desig']; 
    $apdate=$_POST['apdate'];
	$name=$_POST['name'];
	$address=$_POST['address'];
	$state=$_POST['state'];
	$join_date=$_POST['join_date'];
	$location=$_POST['location'];
	
	$sal_th=$_POST['sal_th'];
	$cert1=$_POST['cert1'];
	$cert2=$_POST['cert2'];
	$ses = $_POST['ses'];

	// if (isset($_FILES['file']['name']))
	// {
	//   $file_name = $_FILES['file']['name'];
	//   $file_tmp = $_FILES['file']['tmp_name'];

	//   move_uploaded_file($file_tmp,"./pdf/".$file_name);
	
	echo $x="insert into add_ao(apdate,name,address,statecode,join_date,location,sal_th,certi1,certi2,category,desig,ses) 
 values('$apdate','$name','$address','$state','$join_date','$location','$sal_th','$cert1','$cert2','$letter_for','$desig','$ses')";
 $res = mysqli_query($link, $x) or die("could not connected" . mysqli_error($link));
	   
	  if ($res) {
	      print "<script>";
        print "alert('Successfully Uploaded ');";
        print "self.location='al_list.php?state=$state';";
        print "</script>";
	  }

	}	
//}
	
if(isset($_POST['update'])){
     $letter_for=$_POST['letter_for']; 
	$desig=$_POST['desig']; 
    $apdate=$_POST['apdate'];
	$name=$_POST['name'];
	$address=$_POST['address'];
	$state=$_POST['state'];
	$join_date=$_POST['join_date'];
	$location=$_POST['location'];
	//$file = $_POST['file'];
	$sal_th=$_POST['sal_th'];
	$ses = $_POST['ses'];
	$id= $_POST['id'];
	
	$iname = $_FILES['file']['name'];
	if($iname!= ""){
$code = md5(rand());
$iname =$_FILES['file']['name'];
$tmp = $_FILES['file']['tmp_name'];
$dir = "gupload";
	  $destination =  $dir . '/' . $iname;
		move_uploaded_file($tmp, $destination);
$iname1 =$_FILES['file']['name'];
$iname1 = ($iname1);
}else{
$iname1 = ($img1);
}	


echo	$x="update emp set apt_date ='$apdate' ,emp_name = '$name',address='$address',state='$state',DOJ='$join_date',branch='$location',
	sal_th='$sal_th',appointmentcategory='$letter_for',designation='$desig', file='$iname1' where empid='$id'";
	//echo $x;
 $res = mysqli_query($link, $x) or die("could not connected" . mysqli_error($link));
	   
	  if ($res) {
	      print "<script>";
        print "alert('Successfully Updated ');";
        print "self.location='al_list.php?state=$state';";
        print "</script>";
	  }
	
}
 




?>
