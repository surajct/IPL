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
String id=request.getParameter("id");
String ings=request.getParameter("ings");
String runs=request.getParameter("runs");
String avg=request.getParameter("avg");
String sr=request.getParameter("sr");
String best=request.getParameter("best");
String hundred=request.getParameter("hundred");
String fifty=request.getParameter("fifty");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection c;
	c = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","suraj123");
	java.sql.Statement s =c.createStatement();
	java.sql.ResultSet rs;
	
	String a="insert into batsman values ("+"\""+id+"\""+","+"\""+ings+"\""+","+"\""+runs+"\""+","+"\""+avg+"\""+","+"\""+sr+"\""+","+"\""+best+"\""+","+"\""+hundred+"\""+","+"\""+fifty+"\""+");";
	out.println(a);
	if(true)
		
	{
	int i = s.executeUpdate(a);
	response.sendRedirect("batsman.html");
	}
}catch(Exception e)
{out.println(e);
}





%>
</body>
</html>