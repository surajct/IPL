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
    background-image: url(http://localhost:8082/IPL/images/all.jpg);

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
<center>
<% 
try

{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection c = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","suraj123");

    String query="select p.name,p.bats,p.bowls,b.runs,b.average,b.best,b.hundred,b.fifty,c.wickets,c.economy,c.best from player p,bowler c,batsman b where p.role='Allrounder' and p.p_id=b.player_id and p.p_id=c.player_id order  by c.wickets DESC ,b.runs DESC;";

    Statement s=c.createStatement();
	ResultSet rs;
	
	rs=s.executeQuery(query);
	%>
	<h2>ALLROUNDER STATS</h2>
	<table border=1>
	<tr>
	<th>NAME</th>
	<th>BATS</th>
	<th>Bowls</th>
	<th>RUNS</th>
	<th>AVERAGE</th>

	<th>BEST</th>
	<th>100's</th>
	<th>50's</th>
	<th>Wickets</th>
	<th>Economy</th>
	<th>Best</th>
	
	</tr>
	<% while( rs.next()) 
	{
	%>

<tr>
<td><%= rs.getString(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>
<td><%= rs.getString(7) %></td>
<td><%= rs.getString(8) %></td>
<td><%= rs.getString(9) %></td>
<td><%= rs.getString(10) %></td>
<td><%= rs.getString(11) %></td>

</tr>



	<%} %>

	</table>
	
	
	
	<% 
}
catch(Exception e)
{
	System.out.println(e);
}
	%>
	</center>
</div>	
</body>
</html>