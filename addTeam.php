<?php
include('header.php');
include('templates/adminNav.html');
if(isset($_POST['submitTeam'])){
    //call class to enter whatever team information was input
    $team = new Teams;
}
echo $twig->render('adminAddTeam.html');
?>