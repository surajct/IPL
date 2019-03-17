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
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import %>
<%
String id=request.getParameter("id");
String ings=request.getParameter("ings");
String runs=request.getParameter("runs");

String hundred=request.getParameter("hundred");
String fifty=request.getParameter("fifty");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection c;
	c = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","suraj123");
	java.sql.Statement s =c.createStatement();
	java.sql.ResultSet rs;
	
	String query="select runs ings from batsman where player_id= "+id;
	rs=s.executeQuery(query);
	if(rs.next())
	{
		String x = rs.getString(1);
		String y = rs.getString(2);
		
	   
		  
		
	}
	
	
	String a="update batsman set ings= ings+"+ings+",runs=runs+"+runs+",hundred=hundred+"+hundred+",fifty =fifty+"+fifty+" where player_id="+id;
	out.println(a);
	if(true)
		
	{
	int i = s.executeUpdate(a);
	response.sendRedirect("batsman1.html");
	}
}catch(Exception e)
{out.println(e);
}





%>
</body>
</html>