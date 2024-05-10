<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href="CSSSTYLE/adminlogin.css" />
<style type="text/css">
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.card {
  width: 300px;
  background-color: #fff;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  text-align: center;
}

h2 {
  color: #007BFF;
  margin-bottom: 20px;
}

form {
  display: flex;
  flex-direction: column;
}

label {
  text-align: left;
  margin-bottom: 5px;
}

input {
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #ddd;
  border-radius: 5px;
}

button {
  padding: 10px;
  background-color: #007BFF;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

/* .switch { */
/*   margin-top: 15px; */
/*   font-size: 14px; */
/* } */

/* .switch a { */
/*   color: #007BFF; */
/*   text-decoration: none; */
/* } */
</style>
<script src="JS/AllValidations.js">
</script>
</head>
<body>
	<div class="container"> 
		<div class="card">
		
			<h2>Login Form</h2>
			<form name="frm" action="validate" method="POST">
				<label for="username">Username</label> <input type="text"
					id="username" name="username" placeholder="Enter your username"> <label
					for="password">Password</label> <input type="password"
					id="password" name="password" placeholder="Enter your password">

				<button type="submit">Login</button>
			</form>
			<div class="switch">
				Forgot password? <a href="#">click
					here</a>
			</div>
			
		
		</div>

<!-- 		<div class="card" style="display: none;"> -->
<!-- 			<h2>Register Form</h2> -->
<!-- 			<form> -->
<!-- 				<label for="fullname">Full Name</label> <input type="text" -->
<!-- 					id="fullname" placeholder="Enter your full name"> <label -->
<!-- 					for="email">Email</label> <input type="email" id="email" -->
<!-- 					placeholder="Enter your email"> <label for="new-password">New -->
<!-- 					Password</label> <input type="password" id="new-password" -->
<!-- 					placeholder="Enter your new password"> -->

<!-- 				<button type="submit">Register</button> -->
<!-- 			</form> -->
<!-- 			<div class="switch"> -->
<!-- 				Already have an account? <a href="#" onclick="switchCard()">Login -->
<!-- 					here</a> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</div>
	
</body>
</html>