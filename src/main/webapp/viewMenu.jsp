<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Menu</title>
</head>
<style type="text/css">
form {
  min-width:300px;
  max-width:400px;
  padding:20px;
  margin-top:7em;
  margin-left:15em;
  background-color: white; 
  -webkit-box-shadow: 3px 3px 23px -9px rgba(0,0,0,0.86);
  -moz-box-shadow: 3px 3px 23px -9px rgba(0,0,0,0.86);
  box-shadow: 3px 3px 23px -9px rgba(0,0,0,0.86);
  align-items: center;
}

form input {
  border:1px solid #eee;
  border-radius:2px;
  padding:5px 8px;
  color:#444;
}

form button {
  color:#fff;
  background-color: #007BFF;
  border:1px solid #fff;
  margin-top:20px;
  border-radius:2px;
  display: block;
  width: 100%;
}

form button:hover {
  background-color: #0056b3;
}

</style>

<body>
	<%@include file="userdashboard.jsp"%>
	<div class="col-md-8 mt-5">
		<div class="container">
            <form name="frm" action="getmenu" method="POST">
                <h3 style="font-family:Arial, sans-serif">Get Menu</h3>
                <hr>
                <div class="form-group">
                    <label for="menu">Select Date :</label> 
                    <input type="date" class="form-control mt-1" value='' name="menu"  required="required">
                     <span id="menuid"></span>
                </div>
                <h5 id="automatic" style="color: rgba(16, 163, 127);text-align: center;"></h5>
                <button type="submit" class="btn" style=" background-color: #007BFF">View Menu</button>
            </form>
        </div>
		
	</div>
	</div>
	</div>
</body>
</html>