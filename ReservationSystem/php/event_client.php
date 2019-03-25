<?php
	include('DBConnector.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<table>
		<tr>
			<th>Event Name</th>
			<th>Faciltiy</th>
			<th>Date</th>
			<th>Time Start</th>
			<th>Time End</th>
			<th>Description</th>
		</tr>
<?php
	
	$sql = "SELECT * FROM event";
	$result = $conn-> query($sql);

	if ($result-> num_rows > 0){
		while ($row = $result-> fetch_assoc()){
			echo "<tr>
					<td>" . $row["Event_name"] . "</td>
					<td>" . $row["Facility"] . "</td>
					<td>" . $row["Date"] . "</td>
					<td>"  . $row["Time_start"] . "</td>
					<td>" . $row["Time_end"] . "</td>
					<td>"  . $row["Description"] . "</td>
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