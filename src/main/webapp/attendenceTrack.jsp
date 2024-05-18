
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

/* table tr:nth-child(even) { */
/* 	background: #f0f0f0; */
/* } */

/* table tbody tr:hover { */
/* 	background: #d9e3e8; */
/* } */

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
/* 	table td::before { */
/* 		content: attr(data-label); */
/* 		display: block; */
/* 		font-weight: light; */
/* 		text-transform: uppercase; */
/* 		font-size: 0.7em; */
/* 		margin-bottom: 0.6em; */
/* 		color: #1976d2; */
/* 	} */
/* 	table td:last-child { */
/* 		border-bottom: 0; */
/* 	} */
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
/*   background-color: #f0f0f0; */
  text-align: center;
}
/* input:hover { */
/* 	background: #d9e3e8; */
/* } */
select {
  border: none;
  background-color: #f0f0f0;
}
#attendance {
	width: auto;
	height:30px;
	background-color: green;
	color:white;
	border-radius: 10px;
}
#catcaption{
   justify-content:center;
   text-align: center;
   font-family: sans-serif;
   font-size: 1.5em;
   margin-bottom:1em;
   padding:0.3em;
   width:20em;
   height:2em;
   background-color:#1976d2;
   border-radius:20px;
  color: white; 
}
</style>
<script type='text/javascript'> --> 
<!-- / 	function submitAttendance() { -->
<!-- // 		var rid = document.getElementById("rid").value; -->
<!-- // // 		var category = document.getElementById("category").value; -->
<!-- // 		var adate = document.getElementById("adate").value; -->
<!-- // 		var mealtype = document.getElementById("mealtype").value; -->
<!-- // 		var xhttp = new XMLHttpRequest(); -->
<!-- // 		xhttp.onreadystatechange = function() { -->
<!-- // 			if (this.readyState == 4 && this.status == 200) { -->
<!-- // // 				document.getElementById("p").innerHTML = this.responseText; -->
<!-- // 			} -->
<!-- // 		}; -->
<!-- // 		xhttp.open("GET", "attendance?rid="+rid+ "&category=" +category+"&adate="+adate+"&mealtype="+mealtype, true); -->
<!-- // 		xhttp.send(); -->
<!-- // 	} -->
 </script> 

</head>
<body onload="hidemessage()">
	<%@include file="admindashboard.jsp"%>
	<div class="col-md-9 mx-2 mt-3">
		<%!int key;
	String value;%>
		<br> <br>
				<center><h2 id="catcaption">Attendance Track</h2></center>

		<h5 id="automatic" style="color: rgba(16, 163, 127);text-align: center;"></h5>
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
				RegistrationService rrService = new RegistrationServiceImpl();
				List<Object[]> list = rrService.getAllRegistration();
				int count = 0;
				for (Object[] obj : list) {
				%>
 				<form action="attendance" method="get"> 
				<tr>
					<td>
					<%=++count%>
					<input type="hidden" name="rid" id="rid" value="<%=obj[0]%>">
					</td>
					<td data-label="Name">
					<input name ="name" type ="text" value="<%=obj[1]%>" readonly="readonly">
				   </td>

					<td data-label="Category"><input name ="category" id="category" type ="text" value="<%=obj[9]%>" readonly="readonly" ></td>
					<td data-label="adate">
					<input name ="adate" type ="date" value="" id="adate" >
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
								Set<Map.Entry<Integer, String>> se = hs.entrySet();
								for (Map.Entry<Integer, String> m : se) {
								%>
								<option value='<%=m.getKey()%>'><%=m.getValue()%></option>
								<%
								}
								%>
							</select>
						</div>
					</td>

					<td data-label="attendancetrack"><input type="submit" value="Attendance" name="attendance" id='attendance' />
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