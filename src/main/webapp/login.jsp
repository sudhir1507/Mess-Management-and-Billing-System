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
  width: 400px;
  background-color: #fff;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 5px 5px 4px 8px rgba(0, 0, 0, 0.1);
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
<body onload="hidemessage()">
	<div class="container"> 
		<div class="card">
		
			<h2>Login Here</h2>
			<form name="frm" action="validate" method="POST">
				<label for="username">Email</label> 
				
			    <input type="text" id="username" name="username" placeholder="Enter your Email" value="" onkeyup='validateEmail()'> 
				<span id="emailid"></span>	
				<label	for="password">Password</label> 
				<input type="password" id="password" name="password" placeholder="Enter your password" value="" onkeyup='checkPassword()'>
				<span id="passwordid"></span>

				<button type="submit">Login</button>
			</form>
			<div class="switch">
				Forgot password? <a href="#">click
					here</a>
			</div>
			
				<h5 id="automatic" style="color:red;text-align: center;"></h5>
		
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
	<%
	String msg = (String) request.getAttribute("msg");

	if (msg != null) {
	%>
	<script>
            function hidemessage() {
                var hideElement = document.getElementById("automatic");
                var originalText = hideElement.innerHTML;
                var typemessage = "<%=msg%>";
		         
			if (typemessage) {
				hideElement.innerHTML = typemessage;
				setTimeout(function() {
					hideElement.innerHTML = originalText;
				}, 5000); // Change 5000 to 5000 milliseconds (5 seconds)
			}
		}
	</script>

	<%
	}
	%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous">
		
	</script>
</body>
</html>