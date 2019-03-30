<?php
   include("DBConnector.php");
   session_start();
   $error = "Your Email or Password is invalid";
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // email and password sent from form 
      
      $myemail = mysqli_real_escape_string($conn,$_POST['email']);
      $mypassword = mysqli_real_escape_string($conn,$_POST['password']); 
      
      $sql = "SELECT ClientID FROM client WHERE email = '$myemail' and password = '$mypassword'";
      $result = mysqli_query($conn,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      // $active = $row['active'];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myemail and $mypassword, table row must be 1 row
		
      if($count == 1) {
         $_SESSION['email'] = "email";
         $_SESSION['login_user'] = $myemail;
         
         header("location: ../pages/admin/home_admin.php");
      }else {
         echo $error;
      }
   }
?>