<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	try {
		String rid = session.getAttribute("rid").toString();
	} catch (Exception e) {
		response.sendRedirect("login.jsp");

	}
	%>
</body>
</html>