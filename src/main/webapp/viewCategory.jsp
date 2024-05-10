<%@page import="java.util.*"%>
<%@page import="org.messmanagement.admin.model.CategoryModel"%>
<%@page import="org.messmangement.admin.service.CategoryServiceImpl"%>
<%@page import="org.messmangement.admin.service.CategoryService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View category</title>
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
	<div class="col-md-8 offset-md-1">
		<br> <br>
		<h2 id="catcaption">Category Information</h2>
		<table class="table table-hover">
<!-- 			<caption>Universitas Amikom Yogyakarta</caption> -->
			<thead>
				<tr>
					<th>Sr.No.</th>
					<th>Category Name</th>
					<th>Fees</th>
					<th>Delete</th>
					<th>Update</th>
				</tr>
			</thead>
			<tbody>
				<%
				CategoryService cService=new CategoryServiceImpl();
				List<CategoryModel> list=cService.getAllCategories();
				int count=0;
				for (CategoryModel model:list) {
				%>
				<tr>
					<td data-label="count"><%=++count%></td>
      				<td data-label="category"><%=model.getCategory() %></td>
     				 <td data-label="fees"><%=model.getFees() %></td>
     				 <td data-label="Delete"><a href="deletecategory?cid=<%=model.getCid()%>"><img src="images/Trash.webp" alt="delete icon" width="30" height="30" class="rounded-circle"></a></td>
					<td data-label="Update"><a href="updatecategory?cid=<%=model.getCid()%>&category=<%=model.getCategory()%>&fees=<%=model.getFees()%>"><img src="images/edit.webp" alt="update icon" width="30" height="30" class="rounded-circle"></a></td>
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