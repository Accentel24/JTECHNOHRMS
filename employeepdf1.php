<?php //include('config.php');
session_start();
include('dbconnection/connection.php');
require_once __DIR__ . '/vendor/autoload.php';
if($_SESSION['user'])
{
$name=$_SESSION['user'];
//include('org1.php');

?>
<?php 
         
         ob_start();?>
<!DOCTYPE html>
<html lang="en">
    <?php
    //  include'template/headerfile.php';
     ?>
	 <link rel="stylesheet" href="assets/css/bootstrap-datepicker3.min.css" />
    <style>
    
        strong{
            color:red;
        }
        table, th, td {
  border: 1px solid black;
 
}

    .underline{
        text-align: center;
        display: inline-block; 
        border-bottom: 2px solid black;
        padding-bottom: 5px;
    }
    .underline1{
        display:inline-block
    }
    
    .no-page-break {
        page-break-inside: avoid;
    }

    </style>
    <body class="no-skin">
        
         

       
							
                      <?php $id=$_GET['id'];

//include('config.php');

$res=mysqli_query($link,"select * from emp where empid='$id'") or die("Error: " . mysqli_error($link));
$rw=mysqli_fetch_array($res) or die("Error: " . mysqli_error($link));
//$to=$rw['btype'];
//$msg=$rw['msg'];
$employeeId = $rw['employeeid'];
//echo($employeeId);
$certquery = mysqli_query($link,"select * from certificates where employeeid = '$employeeId'");
$crows=mysqli_num_rows($certquery);
//echo($check_num_rows);
$state=$rw['state'];


 ?>         
                                
                                <div style="text-align: center;">
    <h4 style="margin: 0;">New form no.11-Declaration form</h4>
    <p style="margin: 0; font-style: italic;">(To be retained by the employer for future reference)</p>
    <h4 style="margin: 0;">EMPLOYEE'S PROVIDENT FUND ORGANISATION</h4>
    <p style="margin: 0;">Employee's Provident Fund Scheme, 1952 (paragraph 34 & 57) &</p>
    <p style="margin: 0;">Employee's Pension Scheme, 1995 (paragraph 24)</p>
    <p style="font-size: small; margin: 0;">
        (Declaration by a person taking up employment in any establishment on which EPF Scheme, 1952 and/or EPS, 1995 is applicable)
    </p>
</div>

                                
<br/><tr>
                        
												   
<table style="border: 1px solid black; width: 70%; margin: auto; border-collapse: collapse;">
    <tr>
        <td style="border: 1px solid black; padding: 2px;">1</td>
        <td style="border: 1px solid black; padding: 2px; width: 60%;">Name of the member</td>
        <td style="border: 1px solid black; padding: 2px; width: 35%;"><?php echo $rw['emp_name']; ?></td>
    </tr>
    <tr>
        <td style="border: 1px solid black; padding: 2px;">2</td>
        <td style="border: 1px solid black; padding: 2px; width: 60%;">
            <label>
                <input type="radio" name="relation" value="father"> Father Name
            </label>
            <label style="margin-left: 10px;">
                <input type="radio" name="relation" value="spouse"> Spouse Name
            </label>
            <br>(Please select which is applicable)
        </td>
        <td style="border: 1px solid black; padding: 2px; width: 35%;"><?php echo $rw['fname']; ?></td>
    </tr>
    <tr>
        <td style="border: 1px solid black; padding: 2px;">3</td>
        <td style="border: 1px solid black; padding: 2px; width: 60%;">Date of Birth (DD/MM/YY)</td>
        <td style="border: 1px solid black; padding: 2px; width: 35%;"><?php echo date('d-m-Y', strtotime($rw["DOB"])); ?></td>
    </tr>
    <tr>
        <td style="border: 1px solid black; padding: 2px;">4</td>
        <td style="border: 1px solid black; padding: 2px; width: 60%;">Gender: (Male/Female/Transgender)</td>
        <td style="border: 1px solid black; padding: 2px; width: 35%;"><?php echo $rw['gender']; ?></td>
    </tr>
    <tr>
        <td style="border: 1px solid black; padding: 2px;">5</td>
        <td style="border: 1px solid black; padding: 2px; width: 60%;">Marital Status: (Married/Unmarried/Widow/Widower/Divorce)</td>
        <td style="border: 1px solid black; padding: 2px; width: 35%;"><?php echo $rw['maritalstatus']; ?></td>
    </tr>
    <tr>
        <td style="border: 1px solid black; padding: 2px;">6</td>
        <td style="border: 1px solid black; padding: 2px; width: 60%;">
            (a) Email Id:<br>
            <span style="display:inline-block; width:100%; border-bottom: 1px solid black;"></span><br>
            (b) Mobile no:
        </td>
        <td style="border: 1px solid black; padding: 2px; width: 35%;">
            <?php echo $rw['emp_email']; ?><br>
            <hr style="border: 1px solid black;">
            <?php echo $rw['contactno']; ?>
        </td>
    </tr>
    <tr>
        <td style="border: 1px solid black; padding: 2px;">7</td>
        <td style="border: 1px solid black; padding: 2px; width: 60%;">Whether earlier a member of Employee's Provident Fund Scheme 1952</td>
        <td style="border: 1px solid black; padding: 2px; width: 35%;">YES/NO</td>
    </tr>
    <tr>
        <td style="border: 1px solid black; padding: 2px;">8</td>
        <td style="border: 1px solid black; padding: 2px; width: 60%;">Whether earlier a member of Employee's Pension Scheme 1995</td>
        <td style="border: 1px solid black; padding: 2px; width: 35%;">YES/NO</td>
    </tr>
    <tr>
        <td style="border: 1px solid black; padding: 2px;">9</td>
        <td style="border: 1px solid black; padding: 2px; width: 60%;">
            <table style="width:100%; border: 1px solid white;" >
            <tr><td style="border: 1px solid white;">Previous employment details:[If yes to 7 AND / OR 8 Above]</td>
            </tr>
            
            <tr><td style="border: 1px solid white;">(a) Universal Account Number:</td></tr>
           
            <tr><td style="border: 1px solid white;">(b) Previous PF Account Number:</td></tr>
            
            <tr><td style="border: 1px solid white;">(c) Date of Exit from Previous employment: (DD/MM/YY)</td></tr>
            
            <tr><td style="border: 1px solid white;">(d) Scheme Certificate No.(if issued):</td></tr>
            
            <tr><td style="border: 1px solid white;">(e) Pension Payment Order (PPO) No.(If issued):</td></tr>
            </table>
        </td>
         <td style="border: 1px solid black; padding: 2px; width: 35%;">
            <table style="width:100%; border: 1px solid white;" >
            <tr><td style="border: 1px solid white; height: 1px;"><?php echo " "; ?></td>
            </tr>
            
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo $rw['uan']; ?></td></tr>
           
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo $rw['PFNO']; ?></td>
            </tr>
            
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo ""; ?></td></tr>
            
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo ""; ?></td></tr>
            
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo ""; ?></td></tr>
            </table>
        </td>
        
    </tr>
    <tr>
        <td style="border: 1px solid black; padding: 2px;">10</td>
        <td style="border: 1px solid black; padding: 2px; width: 60%;">
            <table style="width:100%; border: 1px solid white;" >
            
            
            <tr><td style="border: 1px solid white;">a) International Worker:</td></tr>
           
            <tr><td style="border: 1px solid white;">b) If yes, state country of origin (India/Name of the country):</td></tr>
            
            <tr><td style="border: 1px solid white;">c) Passport Number:</td></tr>
            
            <tr><td style="border: 1px solid white;">d) Validity of passport: (DD/MM/YY) to (DD/MM/YY):</td></tr>
            
            </table>
        </td>
         <td style="border: 1px solid black; padding: 2px; width: 35%;">
            <table style="width:100%; border: 1px solid white;" >
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo " "; ?></td>
            </tr>
            
            
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo ""; ?></td></tr>
           
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo ""; ?></td>
            </tr>
            
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo ""; ?></td></tr>
            
            </table>
        </td>
        
    </tr>
     <tr>
        <td style="border: 1px solid black; padding: 2px;">11</td>
        <td style="border: 1px solid black; padding: 2px; width: 60%;">
            <table style="width:100%; border: 1px solid white;" >
            
            
            <tr><td style="border: 1px solid white;"> KYC Details: (attach self-attested copies of following KYCs)</td></tr>
           
            <tr><td style="border: 1px solid white;">a) Bank Account No. & IFSC No.</td></tr>
            
            <tr><td style="border: 1px solid white;">b) AADHAAR Number:</td></tr>
            
            <tr><td style="border: 1px solid white;">c) Permanent Account Number (PAN) If applicable: </td></tr>
            
            </table>
        </td>
         <td style="border: 1px solid black; padding: 2px; width: 35%;">
            <table style="width:100%; border: 1px solid white;" >
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo " "; ?></td>
            </tr>
            
            
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo $rw['accno']." - ".$rw['ifsc']; ?></td></tr>
           
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo $rw['adharcardno'];?></td>
            </tr>
            
            <tr><td style="border: 1px solid white; height: 25px;"><?php echo $rw['pan']; ?></td></tr>
            
            </table>
        </td>
        
    </tr>
</table>


<div style="text-align: center;"><h4 class="underline">UNDERTAKING</h4>
</div>                               
<p>1)<span style="margin-left: 10px;"></span> Certified that the particulars are true to the best of my knowledge.</p>
<p>2)<span style="margin-left: 10px;"></span> I Authorized EPFO to use my aadhaar for verification / authentication / e-KYC purpose for service delivery</p><hr>
<p>3)<span style="margin-left: 10px;"></span> Kindly transfer the funds and service details,if applicable from the previous PF account as declared above to the present P.F. account.<br><span style="margin-left: 27px;"></span>(The transfer would be possible only if the identified KYC detail approved by previous employer has been verified by present employer<br><span style="margin-left: 27px;"></span> using his Digital Signature Certified) </p>
<p>4) <span style="margin-left: 10px;"></span> In case of changes in above details, the same will be initiated to employer at the earliest</p>

<h4>Date:</h4>
<h4>Place:</h4>
<h4 style="margin-left: 450px;">Signature of member</h4>

<div style="text-align: center;"><h4>DECLARATION BY PRESENT EMPLOYER</h4>
</div>
  
<p>A)<span style="margin-left: 10px;"> The member <span style="display: inline-block; "><?php  echo $rw['emp_name'];?></span> joined on <?php echo date('d-m-Y',strtotime($rw["DOJ"])) ?> and has been alloted PF Number <?php echo $rw['PFNO']?></p>

<p>B) <span style="margin-left: 10px;"></span> In case the person was earlier not a member of EPF Scheme 1952 and EPS 1995<b>(Post allotment of UAN)</b><br><span style="margin-left: 27px;"></span>The UAN alloted for the member is <span style="display: inline-block;"><?php  echo $rw['emp_name'];?></span><br><b>Please select the appropriate options:</b><br> The KYC details of the above member in the UAN database<br><img style="width: 20px; height: 10px;" src="images/arrow.png"> Have not been uploaded<br><img style="width: 20px; height: 10px;" src="images/arrow.png"> Have been uploaded but not approved<br><img style="width: 20px; height: 10px;" src="images/arrow.png"> Have been uploaded and approved with DSC</p>

<p>C)<span style="margin-left: 10px;"></span> In case the person was earlier not a member of EPF Scheme 1952 and EPS 1995<b>(Post allotment of UAN)</b><br>The above PF Account Number/UAN of the member as mentioned in(A) above has been tagged with his/her UAN/Previous member id as declared <br><b>Please select the appropriate options:</b><br><img style="width: 20px; height: 10px;" src="images/arrow.png"> The KYC details of the above member in the UAN database have been approved with Digital Signature Certificate and transfer<br> Requests has been generated on the portal.<br><img style="width: 20px; height: 10px;" src="images/arrow.png"> As the DSC of establishment are not registered with EPFO, the member has been informed to fill physical claims (form-13)<br> for transfer of fumds from his previous establishment.<br></p>


  <h4>Date :</h4>
  <h4 style="margin-left: 250px; font-size: 15px;"> Signature of Employer with Seal of Establishment<h4>
            
                                        
										                                 
		<!-- inline scripts related to this page -->
</body>
<?php mysqli_close($link); ?>
</html>
<?php

$html = ob_get_clean(); 

$mpdf = new \Mpdf\Mpdf();
$mpdf->WriteHTML($html);

// Output PDF with dynamically generated filename
$filename = 'Form11/' . date('d-m-Y') . '.pdf';
$mpdf->Output($filename, \Mpdf\Output\Destination::DOWNLOAD);


	

}else
{
session_destroy();

session_unset();

header('Location:index.php?authentication failed');

}

?>