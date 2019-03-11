<?php
	include('DBConnector.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Approve or Reject</title>
</head>
<body>
	<table>
		<tr>
			<th>Reservation ID</th>
			<th>Client ID</th>
			<th>Activity</th>
			<th>Decision</th>			
		</tr>
<?php
	
	$sql = "SELECT resID.reservation, Client_id.client, Event.reservation FROM client join reservation ON reservation.ResID=client.ResID";
	// $sql = "SELECT * FROM client";	

	$result = $conn-> query($sql);

	if ($conn->query($sql	) === TRUE){
		while ($row = $result-> fetch_assoc()){
			echo "<tr>
					<td>" . $row["resID"] . "</td>
					<td>" . $row["Client_ID"] . "</td>
					<td>" . $row["Event"] . "</td>					
				  </tr>";
		}
		echo "</table>";
	}else{
		echo "0 result";
	}

	$conn-> close();
?>

	</table>
</body>
</html>