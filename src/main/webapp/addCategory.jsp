<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add category</title>
<style type="text/css">
form {
  min-width:300px;
  max-width:400px;
  padding:20px;
  margin:0 auto;
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
  border:none;
  margin-top:20px;
  border-radius:2px;
  display: block;
  width: 100%;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

form button:hover {
  background-color: #0056b3;
}

</style>
 

<script type='text/javascript' src="JS/AllValidations.js">
</script>

</head>
<body>
    <%@include file="admindashboard.jsp"%>
    <div class="col-md-8 mt-5">
        <div class="container">
            <form name="frm" action="addcategory" method="POST">
                <h3 style="font-family:Arial, sans-serif">Add Category</h3>
                <hr>
                <div class="form-group">
                    <label for="name">Category Name :</label> 
                    <input type="text" class="form-control mt-1" name="category" placeholder="e.x. Monthly" onkeyup="nameValidate(this.value)">
                    <span id="sn"></span>
                </div>
                <div class="form-group">
                    <label for="number">Category Fees :</label> 
                    <input type="number" class="form-control mt-1" name="fees" placeholder="e.x. 3000" onkeyup="validateFees(this.value)">
                    <span id="fee"></span>
                </div>
                <button type="submit" class="btn" style="background-color: #007BFF;">Submit</button>
            </form>
        </div>
    </div>
    </div>
	</div>
</body>
</html>
