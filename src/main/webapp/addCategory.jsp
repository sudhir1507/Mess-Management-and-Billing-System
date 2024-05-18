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
<body onload="hidemessage()">
    <%@include file="admindashboard.jsp"%>
    <div class="col-md-8 mt-5">
        <div class="container mt-5">
            <form name="frm" action="addcategory" method="POST">
                <h3 style="font-family:Arial, sans-serif">Add Category</h3>
                <hr>
                <div class="form-group">
                    <label for="name">Category Name :</label> 
                    <input type="text" class="form-control mt-1" name="category" placeholder="e.x. Monthly" onkeyup="nameValidate(this.value)" required="required">
                    <span id="sn"></span>
                </div>
                <div class="form-group">
                    <label for="number">Category Fees :</label> 
                    <input type="number" class="form-control mt-1" name="fees" placeholder="e.x. 3000" onkeyup="validateFees(this.value)" required="required">
                    <span id="fee"></span>
                </div>
                <h5 id="automatic" style="color: rgba(16, 163, 127);text-align: center;"></h5>
                <button type="submit" class="btn" style="background-color: #007BFF;">Submit</button>
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
