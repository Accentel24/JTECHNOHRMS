<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

 $sql1 = "select * from organization where id='1'";
    $res1 = mysqli_query($link, $sql1) or die(mysql_error($link));
    $r = mysqli_fetch_assoc($res1);
     
    if(($stn=="TN") or ($stn=="KL") ){
        $schoolname = "JTechno Services";
    }else{
        $schoolname = $r['org_name'];
    }
    
	
	
	?>
	
    