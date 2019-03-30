<?php
    include("DBConnector.php");

    $password = filter($_POST['password'])

       $sql = "UPDATE admin SET password = $password WHERE 'admin_id' = $'admin_id'" ;
       mysql_select_db('itproject');
       $retval = mysql_query( $sql, $conn );

       if(! $retval ) {
               die('Could not update data: ' . mysql_error());
            }
            echo "Updated data successfully\n";

?>