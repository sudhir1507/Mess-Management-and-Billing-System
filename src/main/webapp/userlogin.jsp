<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<link rel="stylesheet" href="CSS/adminstyle.css"/>
</head>
<body style="background-image: url('images/background.jpg')">
	<div class="login-page">
  <div class="form">
<!--     <form class="register-form"> -->
<!--       <input type="text" placeholder="name"/> -->
<!--       <input type="password" placeholder="password"/> -->
<!--       <input type="text" placeholder="email address"/> -->
<!--       <button>create</button> -->
<!--       <p class="message">Already registered? <a href="#">Sign In</a></p> -->
<!--     </form> -->
    <form class="login-form">
      <input type="text" placeholder="username"/>
      <input type="password" placeholder="password"/>
      <input type="submit" id='btn' value='Login'/>
      <p class="message">Forgot Password? <a href="#">Click here</a></p>
    </form>
  </div>
</div>

</body>
</html>