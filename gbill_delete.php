<?php //include('config.php');
session_start();
include('dbconnection/connection.php');
$id=$_GET['id'];
$sq=mysqli_query($link,"select * from add_gbill1 where id='$id'");
while($r=mysqli_fetch_array($sq)){
$ser=$r['service_no'];

$sqq=mysqli_query($link,"delete from add_gbill where service_no='$ser'");


}


$sql=mysqli_query($link,"delete from add_gbill1 where id='$id'");
if($sql){
	print "<script>";
	print "alert('Sucessfully Saved');";
	print "self.location='gabill_list.php';";
	print "</script>";
	}
?>