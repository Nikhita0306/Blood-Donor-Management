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

<%
System.out.println("before if");
if(request.getParameter("reg")!=null)
{
	System.out.println("after if");
	String dname=request.getParameter("dname");
	String bgroup=request.getParameter("bgroup");
	String demail=request.getParameter("demail");
	String dphone=request.getParameter("dphone");
	String daddress=request.getParameter("daddress");
	
	try
	
	{
		
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root","root");
        Statement st=con.createStatement();
        String query="insert into donors (dname,bgroup,demail,dphone,daddress)values('"+dname+"','"+bgroup+"','"+demail+"','"+dphone+"','"+daddress+"') ";
      
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
 <h1 style="text-align:center">Donor Registration Form</h1>
  <p>&nbsp;</p>
  <form action="">
  <table align="center">
   <tr>
     <td>Donor Name:</td>
     <td><input type="text" name="dname" required /></td>
   </tr>
   <tr>
   <td>&nbsp;</td>
   </tr>
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
     <td>Donor Email:</td>
     <td><input type="email" name="demail" required /></td>
   </tr>
   <tr>
   <td>&nbsp;</td>
   </tr>
   <tr>
     <td>Donor Phone:</td>
     <td><input type="text" name="dphone" required /></td>
   </tr>
   <tr>
   <td>&nbsp;</td>
   </tr>
   <tr>
     <td>Donor Address:</td>
     <td><textarea rows="5" cols="20" name="daddress" required></textarea> </td>
   </tr>
   <tr>
   <td>&nbsp;</td>
   </tr>
   <tr>
    <td> <input type="submit" value="Register" name="reg">
   </td>
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