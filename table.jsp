<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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

body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
    background-image: url(http://localhost:8082/IPL/images/points.jpg);

    /* Full height */
    height: 130%; 
    
   
    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-color: rgba(255,255,255,0.6);
    background-blend-mode: screen;
}
.text {
    color: #000000;
    
    position: relative;
}

</style>
</head>
<body>
<div class="bg">
<div class="navbar">
  <a href="home.jsp">Home</a>
  
  <div class="dropdown">
    <button class="dropbtn">Teams
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     
      
      <a href="mi.jsp">MI</a>
      <a href="srh.jsp">SRH</a>
      <a href="dd.jsp">DD</a>
       <a href="rcb.jsp">RCB</a>
       <a href="csk.jsp">CSK</a>
      <a href="rr.jsp">RR</a>
      <a href="kkr.jsp">KKR</a>
      <a href="kxp.jsp">KXIP</a>
    </div>
    
  </div> 
 <div class ="dropdown">
  <button class="dropbtn">AUCTION
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     
      
      <a href="mum.jsp">MI</a>
      <a href="hyd.jsp">SRH</a>
      <a href="del.jsp">DD</a>
       <a href="bglr.jsp">RCB</a>
       <a href="che.jsp">CSK</a>
      <a href="raj.jsp">RR</a>
      <a href="kol.jsp">KKR</a>
      <a href="pun.jsp">KXIP</a>
    </div>
    
  </div>
  <a href="#">PointsTable</a>
  <div class="dropdown">
    <button class="dropbtn">Players
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href= "batsman.jsp">Batsman</a>
     
      <a href="allrounder.jsp">Allrounder</a>
      <a href="bowler.jsp">Bowlers</a>
    </div>
    
  </div>
  
 
  
</div>
<div class="text">



</body>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:powderblue;">

<br><br><br><br>


<center>
<%@ page import="java.sql.*" %>
<h2>POINTS TABLE</h2>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	
	java.sql.Connection c = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","suraj123");
	
	java.sql.Statement s=c.createStatement();
	
	String query1="select name,played,won,lost,total from points  order by total DESC;";

	ResultSet rs1= s.executeQuery(query1);
	%>
	<table border=1>
	<tr>
	<th>NAME</th>
	<th>MATCHES PLAYED</th>
	<th>WON</th>
	<th>LOST</th>
	<th>TOTAL</th>
	</tr>
	
	
	
	
	
	
	
	<% 
	
	while(rs1.next())
	{
		%>

<tr>
<td><%= rs1.getString(1) %></td>
<td><%= rs1.getString(2) %></td>
<td><%= rs1.getString(3) %></td>
<td><%= rs1.getString(4) %></td>
<td><%= rs1.getString(5) %></td>
</tr>
	
	<%
	}
	%>
	
	
	



<%	
}
catch(Exception e)
{
	System.out.println(e);
}

%>


</div>


</div>
</table>
</center>
<br>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>