<?php
   include("DBConnector.php");
   // session_start();
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
         
         header("location: welcome.php");
      }else {
         echo $error;
      }
   }
?>
<html>
   
   <head>
      <title>Login Page</title>     
   </head>
   
   <body>
	
      <div>
         <div>
            <div><b>Login</b></div>
				
            <div>
               
               <form action = "" method = "post">
                  <label>email  :</label><input type = "text" name = "email" class = "box"/><br /><br />
                  <label>Password  :</label><input type = "password" name = "password" class = "box" /><br/><br />
                  <input type = "submit" value = " Submit "/><br />
               </form>
               
               <!-- <div><?php echo $error; ?></div> -->
					
            </div>
				
         </div>
			
      </div>

   </body>
</html>