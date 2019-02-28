<?php
$host = "localhost";
$user = "root";
$pass="";


$con = mysqli_connect($host, $user, $pass);
mysqli_select_db($con,"login");

if(isset($_POST['username'])){
    $username = $_POST['username'];
    $password = $_POST['password'];
    
$sql = "SELECT * FROM user WHERE username='".$username."'AND password ='".$password."' LIMIT 1";

$result = mysqli_query($con,$sql);
if (mysqli_num_rows($result)==1) {
    echo "You've logged in";
    exit();
}else{
    echo "invalid login";
    exit();
    }
}
?>

<html>
<head>
    <title>PHP</title>
</head>
<style>
h1{
    text-align: center;
}
div{
    float:right;
    margin: 100px;
    margin-right: 300px;
    width:50vw;
    height:50vh;
    background-color: brown;
}
form{
   margin-left: 250px;
}
</style>
<body>
    <div>
        <h1>LOGIN</h1>
        <form method = "POST" action="admin.php">
          <input type="text" name="username" placeholder="Username"><br>
            <input type="password" name="password" placeholder="Password"><br>
            <input type="submit" name="submit" value="log In" >
        </form>

    </div>
</body>
</html>
