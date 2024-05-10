<%@page import="java.util.List"%>
<%@page import="org.messmangement.admin.service.AttenedanceServiceImpl"%>
<%@page import="org.messmangement.admin.service.AttenedanceService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view attendance</title>
<style type="text/css">
table {
  border-collapse: collapse;
  margin: 0;
  padding: 0;
  width: 100%;
  table-layout: fixed;
  background: #fefefe;
}

table caption {
  font-size: 1.5em;
  margin: 0.5em  0.75em;
  color: black;
}

table thead{
  background:#1976d2;
  border-bottom: none;
  color: #fff;
}

table tr {
  padding: .35em;
}

table tr:nth-child(even) {
  background: #f0f0f0;
}

table tbody tr:hover {
  background: #d9e3e8;
}

table th,
table td {
  padding: 0.625em;
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
    /* border-bottom: 1px solid #ddd; */
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
#catcaption{
   justify-content:center;
   text-align: center;
   font-family: sans-serif;
   font-size: 1.5em;
   margin-bottom:1em;
   padding:0.3em;
   width:20em;
   height:2em;
   background-color:blue;
   border-radius:20px;
  color: white; 
}
</style>
</head>
<body>
      <%@include file="admindashboard.jsp"%>
	<div class="col-md-8 offset-md-1">
		<br> <br>
		<center><h2 id="catcaption">Attendance Information</h2></center>
		<table class="table table-hover">
<!-- 			<caption>Universitas Amikom Yogyakarta</caption> -->
			<thead>
				<tr>
					<th>Sr.No.</th>
					<th>Candidate Name</th>
					<th>Date</th>
					<th>Meal Time</th>
					
				</tr>
			</thead>
			<tbody>
				<%
				AttenedanceService aService=new AttenedanceServiceImpl();
				List<Object[]> list=aService.getAllAttendance();
				int count=0;
				for (Object obj[]:list) {
				%>
				<tr>
					<td data-label="count"><%=++count%></td>
      				<td data-label="name"><%=obj[0] %></td>
     				 <td data-label="date"><%=obj[1] %></td>
     				 <td data-label="mealtime"><%=obj[2] %></td>
     				 	
     			</tr>
				<%
				}
				%>

			</tbody>
		</table>

	</div>
	</div>
	</div>
</body>
</html>