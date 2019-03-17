<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color:#333 ;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: blue;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
</head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>


<%
String id= request.getParameter("id");
String name=request.getParameter("name");
String home=request.getParameter("home");
String  captain=request.getParameter("captain");
String coach =request.getParameter("coach");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection c;
	c = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","suraj123");
	java.sql.Statement s =c.createStatement();
	java.sql.ResultSet rs;
	
	String a="insert into team values ("+"\""+id+"\""+","+"\""+name+"\""+","+"\""+home+"\""+","+"\""+captain+"\""+","+"\""+coach+"\""+");";
	if(true)
	{
	int i = s.executeUpdate(a);
	response.sendRedirect("team.html");
	}
}catch(Exception e)
{out.println(e);}



%>

</body>
</html>