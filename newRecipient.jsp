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
  <style>
  
  tr,td,input,select,textarea
  {
   font-size:20px;
   
  }
  </style>
</head>
<body>

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
  <li style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"><a href="index.jsp"><span>Home</span></a></li>
  <li><a href="about.jsp"><span>About&nbsp;us</span></a></li>
  <li><a href="donor.jsp"><span>Donor's</span></a></li>
  <li><a href="receipent.jsp"><span>Receipents</span></a></li>
  <li><a href="admin.jsp"><span>admin</span></a></li>
  <li><a href="contact.jsp"><span>Contact</span></a></li>
  
</ul>
</div>
</div>
<!--Designed by--><a href="http://www.usaonlinecasinos.org">
<img src="images/copyright.gif" class="copyright" alt="http://www.usaonlinecasinos.org"></a>
<div class="content">
 <h1 style="text-align:center">Recipient Registration Form</h1>
  <p>&nbsp;</p>
  
  <%
  
    if(request.getParameter("reg")!=null)
    {
    	String uname=request.getParameter("uname");
    	String pass=request.getParameter("pass");
    	String email=request.getParameter("email");
    	String phone=request.getParameter("phone");
    	try
    	
    	{
    		
    		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root","root");
            Statement st=con.createStatement();
            String query="insert into receipents (name,pass,email,phone)values('"+uname+"','"+pass+"','"+email+"','"+phone+"') ";
          
            System.out.println(query);
            int x= st.executeUpdate(query);
            if(x==1)
            {
              out.println("<script>alert('User Registration is  Successfull')</script>");	
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
  <form action="">
  <table align="center">
   <tr>
     <td>User Name:</td>
     <td><input type="text" name="uname" required /></td>
   </tr>
   <tr>
   <td>&nbsp;</td>
   </tr>
   <tr>
     <td>Password:</td>
     <td><input type="password" name="pass" required /></td>
   </tr>
   <tr>
   <td>&nbsp;</td>
   </tr>
   <tr>
     <td>Email:</td>
     <td><input type="email" name="email" required /></td>
   </tr>
   <tr>
   <td>&nbsp;</td>
   </tr>
   <tr>
     <td>Phone:</td>
     <td><input type="text" name="phone" required /></td>
   </tr>
   <tr>
   <td>&nbsp;</td>
   </tr>
   
   <tr>
    <td> <input type="submit" value="Register" name="reg">
   </td>
  </tr>  
  <tr>
  <td>&nbsp;</td>
  </tr>
    <tr>
  <td colspan="2"><a href="receipent.jsp">For Login Click Here</a></td>
  </tr>
  
  </table>
  </form>
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