<?php
//Get Database info
error_reporting(0);
include('session.php');
include('database.php');
if (version_compare(phpversion(), '5.5.0', '<')) {
    //If the php Version is not supporting password hash, lets include it
    require('source/lib/password.php');
}
try{
    $dbh= new PDO('mysql:host='.$data_host.';dbname='.$name_database,$data_username,$data_password);
}catch(PDOException $e){
    echo $e->getMessage();
}
?>