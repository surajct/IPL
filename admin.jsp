<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
String pswd=request.getParameter("pswd");
String p="admin123";
if(pswd.equals(p))
{
	response.sendRedirect("admin.html");
}
else
{
	out.println("Password Incorrect \n");
	out.println("Contact developer to get password \n");
	
}



%>
</body>
</html>