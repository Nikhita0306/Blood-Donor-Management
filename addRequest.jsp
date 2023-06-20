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

<%
  if(request.getParameter("Send")!=null)
  {
       String uname=(String)session.getAttribute("uname");
       String bgroup=request.getParameter("bgroup");
       String message=request.getParameter("message");
     
      try
   	
   	{
   		
   		  DriverManager.registerDriver(new com.mysql.jdbc.Driver());
   		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root","root");
           Statement st=con.createStatement();
           String query="insert into bloodrequest (uname,bloodgroup,message,list)values('"+uname+"','"+bgroup+"','"+message+"','') ";
           System.out.println(query);
           int x= st.executeUpdate(query);
           if(x==1)
           {
             out.println("<script>alert('Request sent Successfull')</script>");	
           }
           else
           {
           	
           }
           
   	}
   	catch(Exception e)
   	{
   		System.out.println(e);
   	}
      
  }
%>
 <h1 style="text-align:center">Add a Request for the Blood</h1>

 <br><br>
 <form action="">
 <table align="center">
   
     <tr>
     <td>Blood Group:</td>
     <td>
     <select name="bgroup" required>
     <option value="A+">A+</option>
     <option value="A-">A-</option>
     <option value="B+">B+</option>
     <option value="B-">B-</option>
     <option value="AB+">AB+</option>
     <option value="AB-">AB-</option>
     <option value="O+">O+</option>
     <option value="O-">O-</option>
     </select>
     </td>
   </tr>
   <tr>
    <td>&nbsp;</td>
   </tr>
   <tr>
    <td>
        Message:
    </td>
    <td>
        <textarea rows="5" cols="15" name="message"></textarea>
    </td>
   </tr>
   <tr>
    <td>&nbsp;</td>
   </tr>
   <tr>
    <td>
        <input type="submit" value="submit" name="Send" />
    </td>
   </tr>
   
 </table>
 </form>
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