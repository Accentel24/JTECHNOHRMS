<?php
error_reporting(0);
define('DB_NAME', 'a16673ai_jfm');
define('DB_USER', 'a16673ai_payamath');
define('DB_PASSWORD', 'Payamath@2016');
define('DB_HOST', 'localhost');
 
// Create connection
$db     =   new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
// Check connection
if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}
?>