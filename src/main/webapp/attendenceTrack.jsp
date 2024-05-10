<%@page import="java.time.LocalDate"%>
<%@page import="org.messmangement.admin.service.CategoryServiceImpl"%>
<%@page import="org.messmangement.admin.service.CategoryService"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="org.messmanagement.admin.model.MealModel"%>
<%@page import="org.messmangement.admin.service.MealTimeSerivceImpl"%>
<%@page import="org.messmangement.admin.service.MealTimeService"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.List"%>
<%@page import="org.messmangement.admin.service.RegistrationServiceImpl"%>
<%@page import="org.messmangement.admin.service.RegistrationService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendance track</title>
<style type="text/css">
table {
	border-collapse: collapse;
	margin: 0;
	padding: 0;
	width: 100%;
	table-layout: auto; /* Adjusts column width based on content */
	background: #fefefe;
}

table caption {
	font-size: 1.5em;
	color: black;
}

table thead {
	background: #1976d2;
	border-bottom: none;
	color: #fff;
}

table tr {
	padding: 1em;
}

table tr:nth-child(even) {
	background: #f0f0f0;
}

table tbody tr:hover {
	background: #d9e3e8;
}

table th, table td {
    
	padding: 1em;
	text-align: center;
}

table th {
	font-size: .85em;
	letter-spacing: .1em;
	text-transform: uppercase;
}

@media screen and (max-width: 600px) {
	table {
		border: 0;
	}
	table caption {
		font-size: 1.3em;
	}
	table thead th {
		display: none;
	}
	table tr {
		display: block;
	}
	table td {
		display: block;
		text-align: left;
	}
	table td::before {
		content: attr(data-label);
		display: block;
		font-weight: light;
		text-transform: uppercase;
		font-size: 0.7em;
		margin-bottom: 0.6em;
		color: #1976d2;
	}
	table td:last-child {
		border-bottom: 0;
	}
}

#catcaption {
	text-align: center;
	font-family: sans-serif;
	font-size: 1.5em;
	margin-bottom: 1em;
	color: black;
}

#abtn {
	width: 150px;
	background-color: red;
	color: white;
}

#abtn a {
	text-decoration: none;
	padding: 5px;
	height: 50px;
}

input{
  border: none;
  background-color: #f0f0f0;
  text-align: center;
}
input:hover {
	background: #d9e3e8;
}
select {
  border: none;
  background-color: #f0f0f0;
}
input[submit] {
	width: auto;
	background-color: green;
	color:white;
}
</style>
</head>
<body onload="hidemessage()">
	<%@include file="admindashboard.jsp"%>
	<div class="col-md-9 mx-2">
		<%!int key;
	String value;%>
		<br> <br>
		<h2 id="catcaption">Attendance Track</h2>
		<center><bold>
		<h5 id="automatic" style="color: rgba(16, 163, 127);"></h5>
		</bold></center>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Sr.No.</th>
					<th>Name</th>

					<th>Category</th>
					<th>Date</th>
					<th>MealTime</th>
					<th>Track Attendance</th>

				</tr>
			</thead>
			<tbody>
				<%
				RegistrationService rService = new RegistrationServiceImpl();
				List<Object[]> list = rService.getAllRegistration();
				int count = 0;
				for (Object[] obj : list) {
				%>
				<form action="attendance">
				<tr>


					<td>
					
					<%=++count%>
					<input type="hidden" name="rid" value="<%=obj[0]%>">
					</td>
					<td data-label="Name">
					<input name ="name" type ="text" value="<%=obj[1]%>">
				   </td>

					<td data-label="Category"><input name ="category" type ="text" value="<%=obj[9]%>" ></td>
					<td data-label="adate">
					<input name ="adate" type ="text" value="<%=LocalDate.now()%>" >
					</td>
					<td>
						<%
						MealTimeService mService = new MealTimeSerivceImpl();
						List<MealModel> mlist = mService.getAllMealTimes();
						LinkedHashMap<Integer, String> hs = new LinkedHashMap<Integer, String>();
						for (MealModel model : mlist) {
							hs.put(model.getMtid(), model.getMealtype());
						}
						%>
						<div class="form-group">
							<label for="mealtype"></label> <select id="mealtype"
								name="mealtype"  required>
								<option value="">Select Mealtime</option>
								<%
								Set<Map.Entry<Integer, String>> s = hs.entrySet();
								for (Map.Entry<Integer, String> m : s) {
								%>
								<option value='<%=m.getKey()%>'><%=m.getValue()%></option>
								<%
								}
								%>
							</select>
						</div>
					</td>

					<td data-label="attendancetrack"><input type="submit" value="Attendance">
						</td>

				</tr>
				</form>
				<%
				}
				%>
			</tbody>
		</table>
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