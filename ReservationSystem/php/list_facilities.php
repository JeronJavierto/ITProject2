<?php
	include('DBConnector.php');	
?>

<!DOCTYPE html>
<html>
<head>
	<title>List of Facilities</title>
	<link rel="stylesheet" href="../stylesheet/style.css">
	<h1>FACILITY RESERVATION SYSTEM</h1>
</head>
<body>
	<ul class="menu">
		<li class="home"><a href="home.html" class="home">HOME</a></li>
		<li class="events"><a href="events.html" class="events">EVENTS</a></li>
		<li class="faci"><a href="facilities.html" class="faci">FACILITIES</a></li>
		<li class="reser"><a href="reservation.html" class="reser">RESERVATION</a></li>
		<li class="req"><a href="request.html" class="req">REQUEST</a></li>
		<li class="rep"><a href="reports.html" class="rep">REPORTS</a></li>
	</ul>
	<table id="customers">
		<tr>
			<th>Level</th>
			<th>Room</th>
			<th>Room Type</th>
			<th>Description</th>
			<th>Capacity</th>
			<th>Reservation</th>
		</tr>
<?php
	$sql = "SELECT * FROM facility";
	$result = $conn-> query($sql);

	if ($result-> num_rows > 0){
		while ($row = $result-> fetch_assoc()){
			echo "<tr>
					<td>" . $row["Level"] . "</td>
					<td>" . $row["room"] . "</td>
					<td>" . $row["roomType"] . "</td>
					<td>"  . $row["description"] . "</td>
					<td>" . $row["capacity"] . "</td>
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