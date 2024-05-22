<%@page import="org.messmanagement.admin.model.CategoryModel"%>
<%@page import="java.util.*"%>
<%@page import="org.messmangement.admin.service.CategoryServiceImpl"%>
<%@page import="org.messmangement.admin.service.CategoryService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<script type='text/javascript' src="JS/RegistrationValidations.js">
</script>
<style type="text/css">
.container {
	width: 60%;
	margin: 10px;
	padding: 10px;
	background-color: #ffffff;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	text-align: left;
	font-family: Arial, sans-serif;
}

h2 {
	margin-bottom: 30px;
	color: #333;
	text-align: center;
}

.form-group {
	margin-bottom: 20px;
}

label {
	font-weight: bold;
	color: #555;
	display: inline-block;
	width: 150px; /* Adjust width as needed */
}

input[type="text"], input[type="date"], input[type="number"], select {
	width: calc(100% - 160px); /* Adjust width to leave space for label */
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

input[type="submit"] {
	width: 100%;
	padding: 10px;
	background-color: #007BFF;
	border: none;
	border-radius: 5px;
	color: #fff;
	font-size: 16px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>

</head>
<body onload="hidemessage()">
	<%@include file="admindashboard.jsp"%>
	<div class="col-md-8 mx-5">
		<div class="container mx-3">
			<h2>Registration Form</h2>
			<hr>
			<form name="frm" action="addregistration" method="post" class="mx-3">
				<div class="form-group">
					<label for="name">Name:</label> <input type="text" id="name"
						value='' name="name" placeholder="Aditya" required="required"
						onkeyup="nameValidate(this.value)"> <span
						style="margin-left: 10em;" id="sn"></span>
				</div>
				<div class="form-group">
					<label for="contact">Contact:</label> <input type="text"
						id="contact" name="contact" placeholder="9359831795" required
						onkeyup="contactValidate(this.value)"> <span
						style="margin-left: 10em;" id="contactid"></span>
				</div>
				<div class="form-group">
					<label for="address">Address:</label> <input type="text"
						id="address" name="address" placeholder="Pune" required>
				</div>
				<div class="form-group">
					<label for="registration_start">Registration Start Date:</label> <input
						type="date" id="registration_start" name="rsdate" required>
				</div>
				<div class="form-group">
					<label for="registration_end">Registration End Date:</label> <input
						type="date" id="registration_end" name="redate" required>
				</div>
				<div class="form-group">
					<label for="amount">Amount:</label> <input type="number"
						id="amount" name="amount" required placeholder="2000">
				</div>
				<div class="form-group">
					<label for="username">Email:</label> <input type="text"
						id="username" name="username" placeholder="abc@gmail.com" required
						onkeyup="validateEmail(this.value)"> <span
						style="margin-left: 10em;" id="eid"></span>
				</div>
				<div class="form-group">
					<label for="password">Password:</label> <input type="password"
						id="password" name="password" required onkeyup="checkPassword()">
					<span style="margin-left: 10em;" id="passwordid"></span>
				</div>
				<%
				CategoryService cService = new CategoryServiceImpl();
				List<CategoryModel> list = cService.getAllCategories();
				LinkedHashMap<Integer, String> hs = new LinkedHashMap<Integer, String>();
				for (CategoryModel model : list) {
					hs.put(model.getCid(), model.getCategory());
				}
				%>
				<div class="form-group">
					<label for="category">Category:</label> <select id="category"
						name="category" required="required">
						<option value="">Select Category</option>
						<%
						Set<Map.Entry<Integer, String>> ss = hs.entrySet();
						for (Map.Entry<Integer, String> m : ss) {
						%>
						<option value='<%=m.getKey()%>'><%=m.getValue()%></option>
						<%
						}
						%>
					</select>
				</div>
				<h5 id="automatic"
					style="color: rgba(16, 163, 127); text-align: center;"></h5>
				<input type="submit" value="Register">
			</form>

		</div>
	</div>
	</div>
	</div>
	<%
	String msg = (String) request.getAttribute("msg");

	if (msg != null) {
	%>
	<script>
            function hidemessage() {
                var hideElement = document.getElementById("automatic");
                var originalText = hideElement.innerHTML;
                var typemessage = "<%=msg%>
		";

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