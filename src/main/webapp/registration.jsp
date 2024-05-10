
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
<style type="text/css">

/*   body { */
/*     margin: 0; */
/*     padding: 0; */
/*     font-family: Arial, sans-serif; */
/*     background-color: #f5f5f5; */
/*     display: flex; */
/*     justify-content: center; */
/*     align-items: center; */
/*     height: 100vh; */
/*   } */

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

  input[type="text"],
  input[type="date"],
  input[type="number"],
  select {
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
<script src="JS/AllValidations.js">
</script>
</head>
<body>
   <%@include file="admindashboard.jsp"%>
	<div class="col-md-8 offset-md-1">
		<div class="container">
  <h2>Registration Form</h2>
  <hr>
  <form name="frm" action="addregistration" method="post">
    <div class="form-group">
      <label for="name">Name:</label>
       <input type="text" id="name" value='' name="name" required="required" onkeyup="nameValidate()">
        <span id="sn"></span>
    </div>
    <div class="form-group">
      <label for="contact">Contact:</label>
      <input type="text" id="contact" name="contact" required>
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
      <input type="text" id="address" name="address" required>
    </div>
    <div class="form-group">
      <label for="registration_start">Registration Start Date:</label>
      <input type="date" id="registration_start" name="rsdate" required>
    </div>
    <div class="form-group">
      <label for="registration_end">Registration End Date:</label>
      <input type="date" id="registration_end" name="redate" required>
    </div>
    <div class="form-group">
      <label for="amount">Amount:</label>
      <input type="number" id="amount" name="amount" required>
    </div>
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="text" id="username" name="username" required>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required>
    </div>
    <%
    CategoryService cService=new CategoryServiceImpl();
	List<CategoryModel> list=cService.getAllCategories();
	LinkedHashMap<Integer,String> hs=new LinkedHashMap<Integer,String>();
	for(CategoryModel model:list) {
		hs.put(model.getCid(), model.getCategory());
	}
    %>
    <div class="form-group">
      <label for="category">Category:</label>
      <select id="category" name="category" required>
        <option value="">Select Category</option>
        <%
        Set<Map.Entry<Integer, String>> s=hs.entrySet();
		for(Map.Entry<Integer, String> m:s) {
        %>
        <option value='<%=m.getKey()%>'><%=m.getValue() %></option>
       <%
		}
       %>
      </select>
    </div>
    <input type="submit" value="Register">
  </form>
</div>
</div>
	</div>
	</div>
</body>
</html>