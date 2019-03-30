<?php
	include("DBConnector.php");
?>

<html>
<head>
<title> Wow </title>
</head>
<body>
	<div>
		<form action="../php/signup.php" method="GET">
			<!-- First Name -->
			<div>
				<label for="textinput">First Name</label>
					<div>
						<input type="text" name="FName" required=""><br><br>
					</div>
			</div>

			<!-- Last Name -->
			<div>
				<label for="textinput">Last Name</label>
					<div>
						<input type="text" name="LName" required=""><br><br>
					</div>
			</div>

			<!-- Email -->
			<div>
				<label for="textinput">Email Address</label>
					<div>
						<input type="email" name="email" required=""><br><br>
					</div>
			</div>

			<!-- Organization -->
			<div>
				<label for="textinput">Organization</label>
					<div>
						<input type="text" name="organization">
					</div>
			</div>

			<!-- Position -->
			<div>
				<label for="textinput">Position</label>
					<div>
						<input type="text" name="position"><br><br>			
					</div>
			</div>

			<!-- Password -->
			<div>
				<label for="textinput">Password</label>
					<div>
						<input type="Password" name="Password"><br><br>
					</div>
			</div>

			<!-- Confirm Password -->
			<div>
				<label for="textinput">Confirm Password</label>
					<div>
						<input type="Password" name="ConPassword"><br><br>
					</div>
			</div>			

			<!-- Register Button -->
			<div>
				<input type="submit" name="" value="Register">
			</div>

			<!-- Sign-in Redirection -->
			<div>
				<a href="../php/signin.php">
					<p>Already have an account? Sign In</p>
				</a>
			</div>
		</form>
	</div>
</body>
</html>
