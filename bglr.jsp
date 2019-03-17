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
    background-image: url(http://localhost:8082/IPL/images/bglr.jpg);

    /* Full height */
    height: 120%; 
    
   
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
  <a href="table.jsp">PointsTable</a>
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

 
</body>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>

<div class="text">
<center>
<%
try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection c = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","suraj123");
	Statement s=c.createStatement();
	String q1="select p.name from player p , auction a where p.p_id=a.p_id and a.retained='Yes' and p.team_id= 1;";
	ResultSet rs1= s.executeQuery(q1);
%> 
	<h3>Royal Challengers Banglore</h3>
	<h4>Retained players </h4>
	<table border=1 allign="right">
	<tr>
	<th>Name</th>
	</tr>
	<%
    while(rs1.next())
    {
    %>
    	<tr>
    	<td><%= rs1.getString(1) %></td>
    	</tr>
    	
    <%    	
    }
	%>
	</table>
	<h4>players taken from bid</h4>
	
	<%
	String q2="select p.name,a.bid_amount from player p,auction a where p.p_id=a.p_id and p.team_id=1 and a.bid_amount > 0  order by a.bid_amount DESC;";
	
	ResultSet rs2=s.executeQuery(q2);
	%>
	<table border=1 allign="centre">
	<tr>
	<th>Name</th>
	<th>Bid Amount(crores)</th>
	
	</tr>
	
	<%
	while(rs2.next())
	{
	%>
	<tr>
	<td><%= rs2.getString(1) %></td>
	<td><%= rs2.getString(2) %>
	
	
	<%} %>
	
	
	</table>

<%
}
catch(Exception e)
{
}

%>
</center>
</div>
</div>

</body>
</html>