<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Title goes here</title>
  <meta name="description" content="Description of your site goes here">
  <meta name="keywords" content="keyword1, keyword2, keyword3">
  <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%

   if(session.getAttribute("uname")==null)
   {
	   response.sendRedirect("receipent.jsp");
   }
%>
<div class="page-in">
<div class="page">
<div class="main">
<div class="header">
<div class="header-top">
<h1>Blood Bank <span>Management System</span></h1>
</div>
<div class="header-bottom">
<h2></h2>
</div>
<div class="topmenu">
<ul>
  <li style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"><a href="addRequest.jsp"><span>Add Request</span></a></li>
  <li><a href="viewrequest.jsp"><span>View Requests</span></a></li>
  <li><a href="logout.jsp"><span>Logout</span></a></li>
  
</ul>
</div>
</div>
<!--Designed by--><a href="http://www.usaonlinecasinos.org">
<img src="images/copyright.gif" class="copyright" alt="http://www.usaonlinecasinos.org"></a>
<div class="content">
<h1 style="text-align:center">Add a Request for the Blood</h1>

<%
       String uname=(String)session.getAttribute("uname");
       
      try
   	
   	{
   		
   		  DriverManager.registerDriver(new com.mysql.jdbc.Driver());
   		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root","root");
           Statement st=con.createStatement();
           String query="select * from bloodrequest where uname ='"+uname+"'";
           System.out.println(query);
           ResultSet rs= st.executeQuery(query);
           %>
           <table border="1" width="100%">
           <tr>
           <th>User Name</th>
           <th>Blood Group</th>
           <th>Message</th>
           <th>List</th>
           </tr>  
           <%
           while(rs.next())
           {
        	   %>
        	   <tr>
        	   <th><%=rs.getString(2) %></th>
        	   <th><%=rs.getString(3) %></th>
        	   <th><%=rs.getString(4) %></th>
        	   <th><%=rs.getString(5) %></th>
        	   </tr>
        	   <%
        	   
           }
           
           rs.close();
           st.close();
           con.close();
           
   	}
   	catch(Exception e)
   	{
   		System.out.println(e);
   	}
%>
 </table>
 <br><br>
 <p>&nbsp;</p>
 <img src="images/blood1.jpg"  style="width:150px;height:150px"></img>
</div>
</div>
<div class="footer">
<p>&copy; Copyright 2023.</a>
</p>
</div>
</div>
</div>


</body></html>