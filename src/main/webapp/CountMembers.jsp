<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member count</title>
<style type="text/css">
form {
  min-width: 300px;
  max-width: 400px;
  padding: 20px;
  
  margin: 0 auto;
  background-color: white; 
  -webkit-box-shadow: 3px 3px 23px -9px rgba(0,0,0,0.86);
  -moz-box-shadow: 3px 3px 23px -9px rgba(0,0,0,0.86);
  box-shadow: 2px 2px 25px -9px rgba(0,0,0,0.86);
  align-items: center;
}

form input, form select {
  display: block;
  width: 100%;
  border: 1px solid #eee;
  border-radius: 2px;
  padding: 5px 8px;
  color: #444;
  margin-bottom: 10px;
}

form button {
  color: #fff;
  background-color: #007BFF; /* Updated background color */
  border: none;
  margin-top: 20px;
  border-radius: 2px;
  display: block;
  width: 100%;
  cursor: pointer;
  transition: background-color 0.3s ease;
}
form button:hover {
  background-color: #0056b3;
}

.form-group {
  margin-bottom: 15px;
}

.form-group label {
  font-weight: bold;
  display: block;
  margin-bottom: 5px;
}
#bts{
background-color: #007BFF;
}
</style>
</head>
<body>
  <%@include file="admindashboard.jsp"%>
    <div class="col-md-8 mt-5">
        <div class="container mt-5">
			<form name="frm" action="billgenerate" method="POST">
				<h3 style="font-family: Arial, sans-serif">Count Member</h3>
				<hr>
				<div class="form-group">
					<input type="hidden" id="rid" name="rid" required="required">
				</div>
				
				
				<div class="form-group">
					<label for="cdate">Choose Month:</label>
					<input type="month" id="cdate" name="cdate" required="required">
				</div>
				<button type="submit" class="btn" id="bts">Submit</button>
			</form>
		</div>
	</div>   
</body>
</html>