<?php //include('config.php');
session_start();
include 'dbconnection/connection.php';
// include('vendor/autoload.php');
require_once __DIR__ . '/vendor/autoload.php';
// error_reporting(E_ALL);
// ini_set("display_error", 1);
if ($_SESSION['user']) {
    $name = $_SESSION['user'];
	
	ob_start();
	?>
<!DOCTYPE html>
<html lang="en">
    <?php
    //  include 'template/headerfile.php'; 
     ?>
	 <link rel="stylesheet" href="assets/css/bootstrap-datepicker3.min.css" />
    <style>



        strong{
            color:red;
        }
        table, th, td {
  border: 1px solid black;
  border:border

}
/* table{
     width:100%;
} */

.box {
            border: 2px solid black;
            padding: -10px 50px;
            text-align: center;
            
            display: inline-block;
            margin: 30px 550px;
			width: 350px;
            /* height: 30px; */
            font-family: Arial, sans-serif;
            font-size: 5px; /* Adjust this size according to your preference */
        }

		
			
			
        

		h2 {
            margin: 2px 0; /* Decrease the margin to reduce the gap */
            font-size: 18px; /* Ensure the font size is consistent with the box */
        }

		table, th, td {
        border: 1px solid black;
 
        }

        
		td {
            border: 2px solid black;
            padding: 8px;
            text-align: left;
        }
        .numbered-box {
            border: 2px solid black;
            padding: 10px;
            font-weight: bold;
            text-align: center;
            width: 50px; /* Adjust width as needed */
            background-color: white; /* Optional background color */
        }

    </style>
    <body class="no-skin">

                      <?php $id = $_GET['id'];

//include('config.php');
$query = "select * from emp where empid='$id'";
$res = mysqli_query($link,$query) or die("Error: " . mysqli_error($link));
$rw = mysqli_fetch_array($res) or die("Error: " . mysqli_error($link));
//$to=$rw['btype'];
//$msg=$rw['msg'];
    $employeeId = $rw['employeeid'];
// //echo($employeeId);
$query1 = "select * from certificates where employeeid = '$employeeId'";
$certquery = mysqli_query($link, $query1);
$crows = mysqli_num_rows($certquery);
//echo($check_num_rows);
    $address = $rw['address'];
    ?>

<body>
                                 
<div class="box" style="border: 2px solid black; padding: 10px; width:300px; margin-left: 200px; margin-top: 20px;">
    <h2 style="font-weight: bold; margin: 0;">Form "Q"<br>
    SEE RULE 24 (9A)</h2>
</div>

<div class="box box-small" style="border: 2px solid black; padding: 10px; width:300px; margin-left: 200px; margin-top: 20px;">
    <h2 style="font-weight: bold; margin: 0;">APPOINTMENT ORDER</h2>
</div>
 
							 

							 <form name="frm" method="post" action="">
							 <table   style="border:1px solid black; border-collapse: collapse; width:100%;" >
							 
							        <tr style="border:1px solid black;">
									<td class="numbered-box">1</td>
											    <td style="border:2px solid black; bold;"><P><b>NAME & ADDRESS OF THE ESTABLISHMENT</b></td></P>
											    <td style="border:2px solid black;">#03.Silver Palms Building 1<sup>st</sup> Floor Victoria Layout Landmark Axis Bank Before Nilgiris Supermarket Bangalore<br>KARNATAKA-560047</td>
											</tr>
											<tr style="border:1px solid black;">
											<td class="numbered-box">2</td>
											    <td style="border:2px solid black; bold;" ><P><b>NAME & ADDRESS OF THE EMPLOYER</b></td></P>
											    <td style="border:2px solid black;"><?php echo $rw['state']; ?></td>
											</tr>

											<tr style="border:1px solid black;">
											<td class="numbered-box">3</td>
											    <td style="border:2px solid black; bold;" ><P><b>NAME OF THE EMPLOYEE</b></td></P>
											    <td style="border:2px solid black;"><?php echo $rw['emp_name']; ?></td>
											</tr>

											<tr style="border:1px solid black;">
											<td class="numbered-box">4</td>
											    <td style="border:2px solid black; bold;" ><P><b>HIS/HER POSTAL ADDRESS</b></td></P>
											    <td style="border:2px solid black;"><?php echo $rw['permaddress']; ?></td>
											</tr>

											<tr style="border:1px solid black;">
											<td class="numbered-box">5</td>
											    <td style="border:2px solid black; bold;" ><P><b>HIS/HER PERMANENT ADDRESS</b></td></P>
											    <td style="border:2px solid black;"><?php echo $rw['permaddress']; ?></td>
											</tr>

											<tr style="border:1px solid black;">
											<td class="numbered-box">6</td>
											    <td style="border:2px solid black; bold;" ><P><b>PARENT/SPOUSE NAME</b></td></P>
											    <td style="border:2px solid black;"><?php echo $rw['fname']; ?></td>
											</tr>

											<tr style="border:1px solid black;">
											<td class="numbered-box">7</td>
											    <td style="border:2px solid black; bold;" ><P><b>DATE OF BIRTH</b></td></P>
											    <td style="border:2px solid black;"><?php echo date('d-m-Y',strtotime($rw["DOB"])) ?> </td>
											</tr>

											<tr style="border:1px solid black;">
											<td class="numbered-box">8</td>
											    <td style="border:2px solid black; bold;" ><P><b>DATE OF HIS/HER ENTRY IN TO EMPLOYEMENT</b></td></P>
											    <td style="border:2px solid black;"></td>
											</tr>

											<tr style="border:1px solid black;">
											<td class="numbered-box">9</td>
											    <td style="border:2px solid black; bold;" ><P><b>DESIGNATION</b></td></P>
											    <td style="border:2px solid black;"><?php echo $rw['designation']; ?></td>
											</tr>

											<tr style="border:1px solid black;">
											<td class="numbered-box">10</td>
											    <td style="border:2px solid black; bold;" ><P><b>NATURE OF WORK ENSTRUSTED TO HIM/HER</b></td></P>
											    <td style="border:2px solid black;"></td>
											</tr>

											<tr style="border:1px solid black;">
											<td class="numbered-box">11</td>
											    <td style="border:2px solid black; bold;" ><P><b>HIS/HER SERIAL NUMBER IN THE REGISTER OF EMPLOYMENT</b></td></P>
											    <td style="border:2px solid black;"><?php echo $rw['empid']; ?></td>
											</tr>

											<tr style="border:1px solid black;">
											<td class="numbered-box">12</td>
    <td style="border:2px solid black; font-weight: bold;">
        <p><b>RATE OF WAGES PAYABLE TO HIM/HER</b></p>
    </td>
   <td style="border:2px solid black; border-collapse: collapse;">
        <div style="display: flex; flex-direction: column;">
            <div style="margin-top: 5px;">
                <b>Basic + DA:</b> <br>
               <b> Other Allowances:</b><br> 
                <b>Total:</b> 
            </div>
        </div>
    </td>
</tr>
							 </table>

							 <div class="acknowledgement-container">
							   <!-- <p class="place" style="margin-left:300px; font-weight:bold;">Place: Bangalore</p> -->
							   <h3>Place: Bangalore.</h3>
							   <h3>Date:</h3>
							   <h3 style="text-align: right; margin-right: 660px; margin-top: 45px;">Seal of the Establishment</h3>
							   <h3>acknowledgement by the employee</h3>
                             </div>


</body>
<?php mysqli_close($link);?>
</html>

<?php

    $body = ob_get_clean();

    $mpdf = new \Mpdf\Mpdf();
    $mpdf->WriteHTML($body);

// Output PDF with dynamically generated filename
    $filename = 'FormQ -' . date('d-m-Y') . '.pdf';
    $mpdf->Output($filename, \Mpdf\Output\Destination::DOWNLOAD);


}else {
    session_destroy();

    session_unset();

    header('Location:index.php?authentication failed');

}

?>