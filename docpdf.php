<?php //include('config.php');
session_start();

include 'dbconnection/connection.php';
// error_reporting(E_ALL);
// ini_set("display_error", 1);
require_once __DIR__ . '/vendor/autoload.php';

if ($_SESSION['user']) {
    $name = $_SESSION['user'];
//include('org1.php');

  

ob_start();?>

<!DOCTYPE html>
<html lang="en">
    <?php include 'template/headerfile.php';?>
	 <link rel="stylesheet" href="assets/css/bootstrap-datepicker3.min.css" />

	 <style>

body {
            background-color: white; /* Sets the background color of the entire page */
            /* margin: 0; Removes default margin */
            padding: 0; /* Removes default padding */

			font-family: Arial, sans-serif;
            /* background-color: white; */
            margin: 20px;

        }

        .image-container {
            width: 500px;
            /* padding: 20px; */
            /* background-color: #f0f0f0; */
            /* border: 2px solid #ccc; */
            text-align: center;
            margin: 0 auto;
        }

		.form-container {
            width: 60%; /* Width of the table */
            margin: 0 auto;
            border-collapse: collapse; /* Collapse borders into one */
			margin-top:30px;
        }

        .form-container, .form-container th, .form-container td {
            border: 2px solid black;
        }

        .form-container th, .form-container td {
            padding: 5px;
            text-align: left;
        }

        .title {
            text-align: center;
            font-weight: bold;
            text-decoration: underline;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .image-container img {
            max-width: 100%;
            height: auto;
            /* border-radius: 20px; */
        }

		.center-container {
            text-align: center; /* Centers text inside the div */
            margin-top: 20px; /* Optional: Adds space above the div */
        }

        .center-container h2 {
            font-weight: bold; /* Ensures the text is bold */
			text-decoration: underline; /* Adds an underline to the text */
        }

		.box {
            width: 60%; /* Adjust width as needed (percentage or fixed size) */
            height: 400px; /* Set a fixed height */
            background-color: #f8f8f8; /* Background color */
            border: 2px solid #333; /* Border around the box */
            padding: 20px; /* Space inside the box */
            margin: 20px auto; /* Center the box horizontally with margin */
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); /* Optional: Adds shadow for 3D effect */
        }

		/* .outer-box {
            width: 300px;
            padding: 20px; */
            /* background-color: #f0f0f0; */
            /* border: 2px solid #ccc;
            text-align: center;
        } */

        .inner-box {
            width: 820px;
            padding: 15px;
            /* background-color: #e0e0e0; */
            border: 1px solid #999;
            margin: 0 auto;
			border: 2px solid #333; /* Border around the box */
            /* text-align: center; */
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


    ?>

							   <body>

                                   <div class="image-container">
                                       <img src="images/excel_logo.jpg" alt="" style="margin-top:30px">
                                   </div>
								   <div class="center-container">
									<h2 style="font-weight:bold">BIOMETRIC DATA</h2>
								</div>

								<table class="form-container">
									<tr>
										<th colspan="2">Date</th>
									</tr>
									<tr>
										<td colspan="5">
										   <?php $formatted_date = date('d-m-y');

echo $formatted_date;
										     //echo $rw['DOJ'];?></td>
									</tr>
									<tr>
										<th colspan="2">Emp. ID</th>
									</tr>
									<tr>
										<td colspan="5"><?php echo $rw['employeeid'];?></td>
									</tr>
									<tr>
										<th colspan="2">Emp. Name</th>
									</tr>
									<tr>
										<td colspan="5"><?php echo $rw['emp_name'];?></td>
									</tr>
									<tr>
										<th colspan="2">Right Hand finger prints</th>
									</tr>
									<tr>
										<td>Thumb</td>
										<td>Index Finger</td>
										<td>Middle Finger</td>
										<td>Ring Finger</td>
										<td>Small Finger</td>

									</tr>
									<tr>
										<td style="width: 100px; height: 120px;"></td>
										<td style="width: 100px; height: 120px;"></td>
										<td style="width: 100px; height: 120px;"></td>
										<td style="width: 100px; height: 120px;"></td>
										<td style="width: 100px; height: 120px;"></td>
									</tr>
									<tr>
										<th colspan="2">Left Hand finger prints</th>
									</tr>
									<tr>
										<td>Thumb</td>
										<td>Index Finger</td>
										<td>Middle Finger</td>
										<td>Ring Finger</td>
										<td>Small Finger</td>
									</tr>
									<tr>
										<td style="width: 100px; height: 120px;"></td>
										<td style="width: 100px; height: 120px;"></td>
										<td style="width: 100px; height: 120px;"></td>
										<td style="width: 100px; height: 120px;"></td>
										<td style="width: 100px; height: 120px;"></td>
									</tr>

								</table>


								<div class="acknowledgement-container">
								<h4 style="text-align: right; margin-right: 300px; margin-top: 70px;"><strong>Signature</strong></h4>
								</div>


</body>
<?php mysqli_close($link);?>
</html>
<?php

    $body = ob_get_clean();

    $mpdf = new \Mpdf\Mpdf();
    $mpdf->WriteHTML($body);

// Output PDF with dynamically generated filename
    $filename = 'Form DOC-' . date('d-m-Y') . '.pdf';
    $mpdf->Output($filename, \Mpdf\Output\Destination::DOWNLOAD);

    

}else {
    session_destroy();

    session_unset();

    header('Location:index.php?authentication failed');

}

?>