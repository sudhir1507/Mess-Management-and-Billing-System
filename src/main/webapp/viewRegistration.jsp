
<%@page import="java.util.List"%>
<%@page import="org.messmangement.admin.service.RegistrationServiceImpl"%>
<%@page import="org.messmangement.admin.service.RegistrationService"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Registration</title>
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

table thead{
  background:#1976d2;
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

table th,
table td {
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
#catcaption{
   text-align: center;
   font-family: sans-serif;
   font-size: 1.5em;
   margin-bottom:1em;
  color: black; 
}
</style>
</head>
<body>
<%@include file="admindashboard.jsp"%>
	<div class="col-md-9 mx-2">
		<br> <br>
		<h2 id="catcaption">Registration Information</h2>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Sr.No.</th>
					<th>Name</th>
					<th>Contact</th>
					<th>Address</th>
					<th>Reg. start</th>
					<th>Reg. end</th>
					<th>Amount paid</th>
					<th>Username</th>
					<th>Password</th>
					<th>Category</th>
					<th>Role</th>
					<th>Delete</th>
					<th>Update</th>
				</tr>
			</thead>
			<tbody>
				<%
				RegistrationService rService=new RegistrationServiceImpl();
				List<Object[]> list=rService.getAllRegistration();
				int count=0;
				for (Object []obj:list) {
				%>
				<tr>
					<td data-label="Sr.No."><%=++count%></td>
					<td data-label="Name"><%=obj[1] %></td>
					<td data-label="Contact"><%=obj[2] %></td>
					<td data-label="Address"><%=obj[3]%></td>
					<td data-label="Reg. start"><%=obj[4]%></td>
					<td data-label="Reg. end"><%=obj[5] %></td>
					<td data-label="Amount paid"><%=obj[6]%></td>
					<td data-label="Username"><%=obj[7] %></td>
					<td data-label="Password"><%=obj[8] %></td>
					<td data-label="Category"><%=obj[9]%></td>
					<td data-label="Role"><%=obj[10]%></td>
					<td data-label="Delete"><a href="deleteregistration?rid=<%=obj[0]%>"><img src="images/Trash.webp" alt="delete icon" width="30" height="30" class="rounded-circle"></a></td>
					<td data-label="Update"><a href="updateregister?rid=<%=obj[0]%>&name=<%=obj[1]%>&contact=<%=obj[2]%>&address=<%=obj[3]%>&rsdate=<%=obj[4]%>&redate=<%=obj[5]%>&amount=<%=obj[6]%>&username=<%=obj[7]%>&password=<%=obj[8]%>&category=<%=obj[9]%>&rolename=<%=obj[10]%>"><img src="images/edit.webp" alt="update icon" width="30" height="30" class="rounded-circle"></a></td>
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
