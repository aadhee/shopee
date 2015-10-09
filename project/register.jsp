<html>
<head>
<title>SHOPEE</TITLE>
<style>

div{




BACKGROUND-COLOR:F7F3F3}
div.home{border-width:12px;
border-style:dotted;
border-color:58FAF4;
border-collapse:collapse;
BACKGROUND-COLOR:F7F3F3;}
</style>
</head>
<div class="title" width="1500"><h1 style="text-align:center; font-color:yellow;font-size:40"><img src="ra.jpg" align="center" alt="logo" height="50" width="50">
SHOPEE.com</H1><BR><H1 style="text-align:right; font-color:yellow;font-size:20">buy for less,sell for more!!</H1>
</DIV>
<DIV CLASS="HOME">


</h1> 
<h1 align="right"><a href="register.html" ><button width="48" height="48">REGISTER</button></a>
<a href="app1.jsp" ><button width="48" height="48">LOG IN</button></a></h1>
<H1 style="text-align:center; font-color:yellow;font-size:20">


<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>


<%

  

String name=request.getParameter("name");

String phone=request.getParameter("reg");

String email=request.getParameter("email");

String password=request.getParameter("pass");

Connection conn=null;
try{

Class.forName("com.mysql.jdbc.Driver");


conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");


Statement ps=conn.createStatement();

String query = "INSERT INTO register (name,phone,email,password) VALUES ('"+name+"',"+phone+",'"+email+"','"+password+"');";



int i= ps.executeUpdate(query);



if(i>0)  
{
%>


</h1>
<h1 align="center">
<img src="stark.jpg" alt="registered">

</h1>


<%
}

else

{
	out.println("error");





}
ps.close();

conn.close();
}
catch(Exception e)
{
e.toString();}

%>


</DIV>
</HTML>

