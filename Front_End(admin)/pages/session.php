<?php
   include('DBConnector.php');
   session_start();
   
   $user_check = $_SESSION['login_user'];
   
   $ses_sql = mysqli_query($conn,"SELECT email FROM admin WHERE email = '$user_check' ");
   
   $row = mysqli_fetch_array($ses_sql,MYSQLI_ASSOC);
   
   $login_session = $row['email'];
   
   if(!isset($_SESSION['login_user'])){
      header("location:signin_admin.php");
      die();
   }
?>