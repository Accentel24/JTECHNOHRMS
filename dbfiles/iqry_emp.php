<?php

/* =========================================================================================== */
#### insert,edit,update operations for add Employee Details and  display form validations ####
#### Author	: 	K Srinivasa Rao						####

/* =========================================================================================== */
//to insert data into testdetails table.if the is no errrors in form then insert data into database. 
include '../dbconnection/connection.php';


error_log("called");
//to update data into testdetails table.if the is no errrors in form then insert data into database. 
if (isset($_POST['submit'])) {
        $photoFullPath = "http://jtechnoassociates.in/hrms/";
    //reading form data
    //$empid=trim($_POST['empid']);
    $emp_name = trim($_POST['empname']);
    $dob = trim($_POST['dob']);
    $gender = trim($_POST['gender']);
    $maritalstatus = trim($_POST['marstatus']);
    $contactno = trim($_POST['conno']);
    $alternateno = trim($_POST['aconno']);
    $adharcardno = trim($_POST['adhar']);
    $address = trim($_POST['address']);
    $fname=trim($_POST['fname']);
    $wname=trim($_POST['wname']);
    $mname=trim($_POST['mname']);
    $relation=trim($_POST['rel']);
    $city = trim($_POST['city']);
    $state = trim($_POST['state']);
    $qualification = trim($_POST['qua']);
    $experience = trim($_POST['exp']);
    $DOJ = trim($_POST['doj']);
    $designation = trim($_POST['des']);
    $UANNO = trim($_POST['uan']);
    $PANNO = trim($_POST['pan']);
    $ESI_NO = trim($_POST['esi']);
    $PFNO = trim($_POST['pf']);
    //$photo= trim($_POST['img1']);
	$emp_email = trim(($_POST['email']));
	$licensestatus = trim(($_POST['licensestatus']));
	$uniform = trim(($_POST['uniform']));
    $uniformisdate = trim(($_POST['uniformisdate']));
    $sitename = trim(($_POST['sitename']));
   
        
    $permaddress = trim(($_POST['permaddress']));
    $localaddress = trim(($_POST['localaddress']));
    $refeaddress = trim(($_POST['refeaddress']));
	$username = trim(($_POST['uname']));
	$password = trim(($_POST['pwd']));
	$bname = trim(($_POST['banknm']));
	$branch = trim(($_POST['bb']));
	$ifsc = trim(($_POST['ifcs']));
	$accno = trim(($_POST['acno']));
	$nname = trim(($_POST['nname']));
	$naddress = trim(($_POST['naddress']));
	$nrelation = trim(($_POST['nrelation']));
	$ndob = trim(($_POST['ndob']));
	$namount = trim(($_POST['namount']));
	$esic_number = trim(($_POST['esic_number']));
	$pensionscheme = trim(($_POST['pensionscheme']));
	$pfscheme = trim(($_POST['pfscheme']));
	$childname = trim(($_POST['childname']));
	
	$ushirt = trim(($_POST['ushirt']));
    $shirtsize = trim(($_POST['shirtsize']));
    $upant = trim(($_POST['upant']));
    $pantsize = trim(($_POST['pantsize']));
    $ushoe = trim(($_POST['ushoe']));
    $shoesize = trim(($_POST['shoesize']));
	
	
	 $tshirt = trim($_POST['tshirt']);
     $tshtdt = trim($_POST['tshtdt']);
     $tsize  =trim($_POST['tsize']);
     
       $phant = trim($_POST['phant']);
     $phtdt = trim($_POST['phtdt']);
     $psize  =trim($_POST['psize']);
     
     $sshoes = trim($_POST['sshoes']);
     $shoesdt = trim($_POST['shoesdt']);
     $ssize  =trim($_POST['ssize']);
       
       $idcard = trim($_POST['idcard']);
     $idcarddt = trim($_POST['idcarddt']);
	
   $user=trim($_POST['user']);
   $employeeid='JT'.'$state';
   
  
   
   $query = "SELECT empid, stat FROM emp WHERE contactno = '$contactno' and status='' ";
    $result = mysqli_query($link, $query) or die(mysqli_error($link));
  if (mysqli_num_rows($result) == 0) {
   
 $x="insert into emp(emp_name,DOB,gender,maritalstatus,contactno,alternateno,adharcardno,address,city,state,qualification,experience,
 DOJ,designation,uan,pan,ESI_NO,PFNO,photo,emp_email,username,password,user,bname,branch,ifsc,accno,nname,nrelation,ndob,namount,naddress,esic_number,pensionscheme,pfscheme,childname,fname,mname,wname,relation,tshirt,tshtdt,tsize,phant,phtdt,psize,sshoes,shoesdt,ssize,idcard,idcarddt,stat,licensestatus,sitename,uniform,uniformisdate,permaddress,localaddress,refeaddress) 
 values('$emp_name','$dob','$gender','$maritalstatus','$contactno','$alternateno','$adharcardno','$address','$city','$state','$qualification','$experience',
 '$DOJ','$designation','$UANNO','$PANNO','$ESI_NO','$PFNO','$fileName15','$emp_email','$username','$adharcardno','$user','$bname','$branch','$ifsc','$accno','$nname','$nrelation','$ndob','$namount','$naddress','$esic_number','$pensionscheme','$pfscheme','$childname','$fname','$mname','$wname','$relation','$ushirt','$tshtdt','$shirtsize','$upant','$phtdt','$pantsize','$ushoe','$shoesdt','$shoesize','$idcard','$idcarddt','UNBLOCKED','$licensestatus','$sitename','$uniform','$uniformisdate','$permaddress','$localaddress','$refeaddress')";
 $res = mysqli_query($link, $x) or die("could not connected" . mysqli_error($link));
 //if the form variables are not empty then update data into database
 error_log("query done");
  
    if ($res) {
         $last_id = $link ->insert_id;
         $employeeid='JT'.$state.$last_id;

        }
         

    
$x1="update emp set employeeid='$employeeid',username='$employeeid' where empid='$last_id'";
 
 $res1 = mysqli_query($link, $x1) or die("could not connected" . mysqli_error($link));

    
 for($i=1;$i<7;$i++)
 {
   $cername=trim($_POST['cname'.$i]);   
  $cerno=trim($_POST['cno'.$i]);
  
  $certPath="";
  $iname=$_FILES['img'.$i]['name'];
   if($iname!=""){
				// echo "hi";
				 
	$iname =$employeeid.'certifcate'.$i;
	$tmp = $_FILES['img'.$i]['tmp_name'];
	
	 $dir = "empphotos";
    $destination =  $dir . '/' . $iname;
	move_uploaded_file($tmp, $destination);
	$certPath = $photoFullPath.''.$destination;
 
	}
	
	if($cername!=''){
  $x2="insert into certificates(cername,cerno,employeeid,cerphoto) 
 values('$cername','$cerno','$employeeid','$certPath')";

 $res2 = mysqli_query($link, $x2) or die("could not connected" . mysqli_error($link)); 
  }
	
      // $sql = "update bedtype set BEDTYPE='$bname',AUTH_BY='$user',REMARKS='$remarks' where BEDTYPE_ID='$id'";
   // $res = mysqli_query($link, $sql) or die("could not connected" . mysqli_error());
}

$signatureData = $_POST['signatureData'];

    // Process the signature data (base64)
    if (!empty($signatureData)) {
        // Remove the data URL scheme
        $signatureData = str_replace('data:image/png;base64,', '', $signatureData);
        $signatureData = str_replace(' ', '+', $signatureData);

        // Decode base64 to binary data
        $signatureImage = base64_decode($signatureData);
        $filePath = 'empphotos/' . $employeeid . 'empsign.png';

        // Save the binary data to a file
        if (file_put_contents($filePath, $signatureImage)) {
            $empPath1 = $photoFullPath.'/'.$filePath;
            $insertempimg="update emp set empsign='$empPath1' where empid='$last_id' ";
 
    $insertempimgres = mysqli_query($link, $insertempimg) or die("could not connected" . mysqli_error($link));
            echo 'Signature saved successfully!';
        } else {
            echo 'Failed to save signature.';
        }
}



$iname=$_FILES['empimg']['name'];
   if($iname!=""){
				// echo "hi";
				 
	$iname =$employeeid.'empimg';
	$tmp = $_FILES['empimg']['tmp_name'];
	
	 $dir = "empphotos";
    $destination =  $dir . '/' . $iname;
	move_uploaded_file($tmp, $destination);
	$empPath = $photoFullPath.''.$destination;
	$insertempimg="update emp set photo='$empPath' where empid='$last_id' ";
 
    $insertempimgres = mysqli_query($link, $insertempimg) or die("could not connected" . mysqli_error($link));
 
	}	
	
	$iname=$_FILES['licimg']['name'];
	if($iname!=""){
				// echo "hi";
				 
	$iname =$employeeid.'licimg';
	$tmp = $_FILES['licimg']['tmp_name'];
	
	 $dir = "empphotos";
		       $destination =  $dir . '/' . $iname;
		       move_uploaded_file($tmp, $destination);
	$licPath = $photoFullPath.''.$destination;
    $insertlicimg="update emp set licimg='$licPath' where empid='$last_id' ";
 
    $insertlicimgres = mysqli_query($link, $insertlicimg) or die("could not connected" . mysqli_error($link));
	}

	$iname=$_FILES['adharimg']['name'];
	if($iname!=""){
				// echo "hi";
				 
	$iname =$employeeid.'adharimg';
	$tmp = $_FILES['adharimg']['tmp_name'];
	
	 $dir = "empphotos";
		       $destination =  $dir . '/' . $iname;
		       move_uploaded_file($tmp, $destination);
	$adharPath = $photoFullPath.''.$destination;
    $insertadharimg="update emp set adharphoto='$adharPath' where empid='$last_id' ";
 
    $insertadharimgres = mysqli_query($link, $insertadharimg) or die("could not connected" . mysqli_error($link));
	}
	
	
	

    // Adhar Back imge code end here



    // adhar back image code



    $iname=$_FILES['adharphotoback']['name'];

	if($iname!=""){

				// echo "hi";

				 

	$iname =$employeeid.'adharphotoback';

	$tmp = $_FILES['adharphotoback']['tmp_name'];

	

	 $dir = "empphotos";

		       $destination =  $dir . '/' . $iname;

		       move_uploaded_file($tmp, $destination);

	$adharPath = $photoFullPath.''.$destination;

    $insertadharimgback="update emp set adharphotoback='$adharPath' where empid='$last_id' ";

 

    $insertadharimgres = mysqli_query($link, $insertadharimgback) or die("could not connected" . mysqli_error($link));

	}



   // adhar back image code end



   // Emp Id Card Front image code



   $iname=$_FILES['empidcardfront']['name'];

   if($iname!=""){

               // echo "hi";

                

   $iname =$employeeid.'empidcardfront';

   $tmp = $_FILES['empidcardfront']['tmp_name'];

   

    $dir = "empphotos";

              $destination =  $dir . '/' . $iname;

              move_uploaded_file($tmp, $destination);

   $adharPath = $photoFullPath.''.$destination;

   $insertempidimgfront="update emp set empidcardfront='$adharPath' where empid='$last_id' ";



   $insertempidfrimgres = mysqli_query($link, $insertempidimgfront) or die("could not connected" . mysqli_error($link));

   }



  // Emp Id Card front image code end



  // Emp Id Card Back image code



  $iname=$_FILES['empidcardback']['name'];

  if($iname!=""){

              // echo "hi";

               

  $iname =$employeeid.'empidcardback';

  $tmp = $_FILES['empidcardback']['tmp_name'];

  

   $dir = "empphotos";

             $destination =  $dir . '/' . $iname;

             move_uploaded_file($tmp, $destination);

  $adharPath = $photoFullPath.''.$destination;

  $insertempidimgback="update emp set empidcardback='$adharPath' where empid='$last_id' ";



  $insertempidbackimgres = mysqli_query($link, $insertempidimgback) or die("could not connected" . mysqli_error($link));

  }



 // Emp Id Card Back image code end





 // Employee Fingerprint image code



 $iname=$_FILES['empfingerprint']['name'];

 if($iname!=""){

             // echo "hi";

              

 $iname =$employeeid.'empfingerprint';

 $tmp = $_FILES['empfingerprint']['tmp_name'];

 

  $dir = "empphotos";

            $destination =  $dir . '/' . $iname;

            move_uploaded_file($tmp, $destination);

 $adharPath = $photoFullPath.''.$destination;

 $insertempfingerimg="update emp set empfingerprint='$adharPath' where empid='$last_id' ";



 $insertempfingerimgres = mysqli_query($link, $insertempfingerimg) or die("could not connected" . mysqli_error($link));

 }



// Employee Fingerprint image code end


	
	$iname=$_FILES['panimg']['name'];
	if($iname!=""){
				// echo "hi";
				 
	$iname =$employeeid.'panimg';
	$tmp = $_FILES['panimg']['tmp_name'];
	
	 $dir = "empphotos";
		       $destination =  $dir . '/' . $iname;
		       move_uploaded_file($tmp, $destination);
		       $panPath = $photoFullPath.''.$destination;
		       $insertpanimg="update emp set panphoto='$panPath' where empid='$last_id' ";
 
    $insertpanimgres = mysqli_query($link, $insertpanimg) or die("could not connected" . mysqli_error($link));
	}

    

  

    
	
	$iname=$_FILES['bankimg']['name'];
	if($iname!=""){
				// echo "hi";
				 
	$iname =$employeeid.'bankimg';
	$tmp = $_FILES['bankimg']['tmp_name'];
	
	 $dir = "empphotos";
		       $destination =  $dir . '/' . $iname;
		       move_uploaded_file($tmp, $destination);
		        $bankPath = $photoFullPath.''.$destination;
		       $insertbankimg="update emp set bphoto='$bankPath' where empid='$last_id' ";
 
    $insertbankimgres = mysqli_query($link, $insertbankimg) or die("could not connected" . mysqli_error($link));
	}

//if it is successfully update then display alert box in form
        print "<script>";
        print "alert('Successfully Uploaded');";
        print "self.location='employeelist.php?state=$state';";
        print "</script>";
    }

else
{
    print "<script>";
        print "alert('Contact or aadharno already Exists, Please insert unique aadhar and contact no');";
        print "self.location='employeelist.php?state=$state';";
        print "</script>";
}






//form input validations 
function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
}
// if(isset($_POST['submit'])){
//     $sq = "SELECT * FROM emp WHERE 'adharcardno' = '$adharcardno'";
//     $result = mysqli_query($link,$sq)
//     if($result){
//         $num = mysqli_num_rows($result);
//         if($num > 0){
//             echo "<script> alert('wjrhgfjehbf')</script>";
//         }
//     }
// }

?>
