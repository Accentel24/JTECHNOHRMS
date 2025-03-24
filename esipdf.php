<?php //include('config.php');
session_start();
include 'dbconnection/connection.php';
require_once __DIR__ . '/vendor/autoload.php';

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

		.table-container {
			display: flex; /* Use flexbox to align the tables side by side */
			justify-content: flex-start; /* Align the tables to the left */
			gap: 20px; /* Space between the tables */
			margin-top: 20px; /* Space from the top */
			/* margin-left: 200px;  */
	}

		.form-container {
			width: 73%; /* Width of each table */
			border-collapse: collapse; /* Collapse borders into one */
	}

		.form-container, .form-container th, .form-container td {
   			 border: 2px solid black;
	}

		.form-container th, .form-container td {
			padding: 5px;
			text-align: left;
	}

	.table-wrapper {
    width: 50%; 
}
.table-wrapper1 {
    width: 50%;
	margin-left: 480px;
	margin-top: -280px; 
}
.table-wrapper2 {
    width: 100%;
}
.table-wrapper3 {
    width: 100%;
	margin-left: 400px;
	margin-top: -70px;
}


        .title {
            text-align: center;
            font-weight: bold;
            text-decoration: underline;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .image-container img {
            max-width: 550%;
            height: auto;
            /* border-radius: 20px; */
        }

		.center-container {
            text-align: center; Centers text inside the div
            margin-top: 30px; /* Optional: Adds space above the div */
			/* margin-left: 235px; */
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

	  .top-aligned {
    vertical-align: top; /* Aligns text to the top of the cell */
    padding: 20px; /* Optional: add padding if needed */
    text-align: center; /* Optional: center-align text horizontally */
}


/* Ensure other cells have consistent alignment */
th, td {
    vertical-align: middle; /* Default alignment for other cells */
    padding: 10px; /* Optional: add padding to other cells */
}

    </style>


<body class="no-skin">

<?php 
$id = $_GET['id'];

//include('config.php');
$query = "select * from emp where empid='$id'";
$res = mysqli_query($link,$query) or die("Error: " . mysqli_error($link));
$rw = mysqli_fetch_array($res) or die("Error: " . mysqli_error($link));
//$to=$rw['btype'];
//$msg=$rw['msg'];
$employeeId = $rw['employeeid'];
$address = $rw['address'];
$state=$rw['state'];
if($state == "TS")
{
	$esic_number = "52530163390010607";
}else if($state == "KN"){
	$esic_number = "53000163390000607";
}else{
	$esic_number = "Unknown";
}

?>

    

							   <body>

                                   <!-- <div class="image-container">
                                       <img src="images/headeresi1.jpg" alt="" style="margin-top:50px; margin-left:1x; width:720px">
                                   </div> -->
								   <div class="center-container">
									<h2>DECLARATION FORM</h2>
								</div>
								<div class="center-container">
    <h6>
        <b>To be filled by employee after reading instruction overleaf. Two Postcard Size photographs to be attached with the form. This form is free of cost.</b>
    </h6>
    </div>
	
								<div class="table-container" style="margin-top: -30px;">
								<div class="table-wrapper">
								<h5 style=" margin-top:40px;"><b>(A) INSURED PERSON'S PARTICULARS</b></h5>
								<table class="form-container" style="margin-left:35px">
								
									<tr>
										<th colspan="1">1.Insurance No.</th>
										<td colspan="6"></td>
									</tr>

									<tr>
										<th colspan="1">2.Name in block letters</th>
										<td colspan="6"></td>
									</tr>

									<tr>
										<th colspan="1">3.Father's/Husband's Name</th>
										<td colspan="6"></td>
									</tr>

									<tr>
										<th rowspan="2" class="top-aligned" style="height:120px">4. Date of Birth</th>
											<th rowspan="1" class="top-aligned">Day</th>
											<th rowspan="1" class="top-aligned">Month</th>
											<th rowspan="1" class="top-aligned">Year</th>
											<th rowspan="1" class="top-aligned">5.Marital Status</th>
											<th rowspan="1" class="top-aligned">M/U/W</th>
									</tr>
									<tr>
										<th style="height:50px"></th>
										<th></th>
										<th></th>
										<th></th>
									</tr>

									<tr>
										<th colspan="3" style="text-align: left; vertical-align: top;">7.Present Address <p>__________________<br>__________________<br>Pin Code [ ][ ][ ][ ][ ][ ]</p></th>
										<th colspan="4" style="text-align: left; vertical-align: top;">8. Permanent Address <p>__________________<br>__________________<br>Pin Code [ ][ ][ ][ ][ ][ ]</p></th>
									</tr>

									<tr>
										<th colspan="3" style="text-align: left; vertical-align: top;">Brance Office</th>
										<th colspan="4" style="text-align: left; vertical-align: top;">Dispensary</th>
									</tr>
								</table>
							</div>

								
								<div class="table-wrapper1">
       								 <h5 style="margin-left:-100px"><b>(B) EMPLOYER'S PARTICULARS</b></h5>
								<table class="form-container" style="margin-left:-120px">
								    <tr>
										<th colspan="5">9. Employer's Code No.</th>
									</tr>

									<tr>
										<th rowspan="2" class="top-aligned" style="height:70px">10. Date of Appointment</th>
										<th rowspan="1" class="top-aligned">Day</th>
										<th rowspan="1" class="top-aligned">Month</th>
										<th rowspan="1" class="top-aligned">Year</th>
									</tr>

									<tr>
										<th style="height:50px"></th>
										<th></th>
										<th></th>
										
									</tr>
									
									 <tr>
									 <th colspan="4" style="text-align: left; vertical-align: top;">11. Name & Address of the Employer 
										<p>__________________________________________________<br>
										__________________________________________________<br>
										__________________________________________________<br>
										</p></th>
									 </tr>
									 <tr>
									 <th colspan="4" style="text-align: left; vertical-align: top;">12. In case of any previous employment please fill up the details as under.</th>
									 </tr>

									 <tr>
									 <th colspan="4" style="text-align: left; vertical-align: top;">(a) Previous Ins. No.</th>
									 </tr>

									 <tr>
									 <th colspan="4" style="text-align: left; vertical-align: top;">(b) Employer's code No</th>
									 </tr>

									 <tr>
									 <th colspan="4" style="text-align: left; vertical-align: top;">(c) Name & Address of the Employer<br><br>e-mail address</th>
									 </tr>
									
								</table>
							</div>
						</div>

						<div class="center-container">
							<h6 style="margin-right:95px; margin-top:25px"><b>(C) Details of Nominee u/s 71 of ESI Act 1948/Rule-56(2) of ESI (Central) Rules, 1950 for payment of cash benfit in the event of death.</b></h5>
						</div>

							<div class="table-wrapper2">
								<table class="form-container" style="margin-left:20px;width: 100%; ">
									<tr>
										<th style="text-align:center">Name</th>
										<th style="text-align:center">Relationship</th>
										<th style="text-align:center">Address</th>
									</tr>

									<tr>
										<th style="height:30px"></th>
										<th></th>
									</tr>
								</table>
							</div>

							<div class="center-container">
    <h6 style="margin-right:50px; margin-top: 25px;">
        I hereby declare that the particulars given by me are correct to the best of my knowledge and belief. I undertake to intimate the corporation any changes in the membership of my family within 15 days of such change.
    </h6>
    
</div>

                            <div class="acknowledgement-container">
							   <!-- <p class="place" style="margin-left:300px; font-weight:bold;">Place: Bangalore</p> -->
							   <h5 style="text-align: left;  margin-top:40px"><b>Counter signature by the employer</b></h5>
							   <h5 style="text-align: right; margin-left:475px; "><b>Signature /T.I of IP.</b></h5>
							   <h5 style="text-align: left; "><b>Signature of the seal</b></h5>
                             </div>


							 <div class="table-wrapper2">
       								 <h5 style="text-align:left"><b>(D) Family Particulars of Insured person</b></h5>
								<table class="form-container" style="width:124%">
								    <tr>
										<th style="text-align:center; ">SI. No</th>
										<th style="text-align:center">Name</th>
										<th style="text-align:center">Date of Birth/Age as on date of filling form</th>
										<th style="text-align:center">Relationship with the Employee</th>
										<th colspan="2" style="text-align:center">Wheather resideing with him/her</th>
										<th colspan="2" style="text-align:center">If 'No' state place of Residence</th>
									</tr>

									<tr>
										
										<th></th>
										<th></th>
										<th></th>
										<th></th>
										
										<th style="text-align:center">Yes</th>
										<th style="text-align:center">No</th>
										<th style="text-align:center">Town</th>
										<th style="text-align:center">State</th>
									</tr>

									<tr>
									
										<th style="height: 25px "></th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
									</tr>

									<tr>
										<th style="height: 25px "></th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
									</tr>

									<tr>
										<th style="height: 25px "></th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
									</tr>
								</table>

								<div class="acknowledgement-container">
							   <!-- <p class="place" style="margin-left:300px; font-weight:bold;">Place: Bangalore</p> -->
							   <h5 style="text-align: left; margin-top:40px"><b>ESI Corporation Temporary Identity Card</b></h5>
							   
                             </div>
							 <h5 style="text-align: right; margin-top:-25px"><b>(Valid for 3 month from the date of appointment)</b></h5>
							 <div class="table-container">
								<div class="table-wrapper">
								<!-- <h5 style="margin-left:50px; margin-top:40px;"><b>(A) INSURED PERSON'S PARTICULARS</b></h5> -->
								<table class="form-container" style="margin-left:35px; width:240%">
								<tr>
									<th style="width: 100px">Name</th>
									<td style="width: 250px"></td>
									<td style="width: 300px"></td>
								</tr>

								<tr>
									<th style="width: 100px">Ins. No.</th>
									<td style="width: 250px"></td>
									<td style="width: 300px"><b>Date of Appointment</b></td>
								</tr>

								<tr>
									<th style="width: 100px">Branch Office</th>
									<td style="width: 250px"></td>
									<td style="width: 300px"><b>Dispensary</b></td>
								</tr>

								<tr>
									<th colspan="2">Employer's Code No. & Address</th>
									 	  
								</tr>
								<tr>
									<th colspan="2">JTechno Associates #177/2, 1st Cross, J.J Church Road, Ejipura, Bangalore-5600</th>	
									<td style="height:20px"><h2><?php echo $esic_number;?></h2></td>
									  
								</tr>
	
								</table>
								
							</div>

							<div class="table-wrapper3">
       								 <!-- <h5 style="margin-left:-125px; margin-top: 40px;"><b>(B) EMPLOYER'S PARTICULARS</b></h5> -->
								<table class="form-container" style="text-align:right; height:200px; width:30px">
								    
								<tr>
									<th style="text-align:center;">(Space for photograph)</th>
								</tr>

								</table>
							</div>

						</div>

						
							   <h5 class="place" style="text-align:left;  margin-top:40px">Validity</h5>
							   <h5 style="text-align: left; ">Dated</h5>
							   <h5 style="text-align: center;">Signature/T.I. of I.P.</h5>
							   <h5 style="text-align: right;">Signature of B.M. with seal</h5>		
</body>
<?php mysqli_close($link);?>
</html>
<?php

    $body = ob_get_clean();

    $mpdf = new \Mpdf\Mpdf();
    $mpdf->WriteHTML($body);

// Output PDF with dynamically generated filename
    $filename = 'ESI -' . date('d-m-Y') . '.pdf';
    $mpdf->Output($filename, \Mpdf\Output\Destination::DOWNLOAD);


}else {
    session_destroy();

    session_unset();

    header('Location:index.php?authentication failed');

}

?>