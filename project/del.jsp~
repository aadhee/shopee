<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>
<%!

String name;
String aut;
String select;
String des;
%>
<%

 name=request.getParameter("age");
aut=request.getParameter("wpm");

 String uid=(String)session.getAttribute("user");

if(uid==null)
{
	out.println("LOGIN AND PROCEED");
} 
else if(name.length()==0&&aut.length()==0)
{
	
	out.println("FILL the Fields");
	}
else
{
 Class.forName("com.mysql.jdbc.Driver").newInstance();

// Open new connection.
java.sql.Connection conn;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");

Statement ps=conn.createStatement();


// Get the query results and display them.

if(name.length()!=0&&aut.length()!=0)

{


if(name.equals("book"))
{

select="Select * from book where name='"+uid+"'and title='"+aut+"';";
}
if(name.equals("tablets"))
{
 select="Select * from tablets where name='"+uid+"' and model='"+aut+"';";
}
if(name.equals("mobiles"))
{
 select="Select * from tablets where name='"+uid+"' and model='"+aut+"';";
}
ResultSet rel=ps.executeQuery(select);
try{
while(rel.next())
{
	out.println(rel.getString(2));
		out.println();
		out.println(rel.getString(3));
		out.println();
		out.println(rel.getString(4));
		out.println("<br>");
}
}
catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }





}
else if(name.length()!=0)

{

if(name.equals("book"))
{

select="Select * from book where name='"+uid+"';";
}
if(name.equals("tablets"))
{

 select="Select * from tablets where name='"+uid+"' ;";
}
if(name.equals("mobiles"))
{

 select="Select * from mobiles where name='"+uid+"' ;";
}
try{
ResultSet rel=ps.executeQuery(select);

while(rel.next())
{
	out.println(rel.getString(2));
		out.println();
		out.println(rel.getString(3));
		out.println();
		out.println(rel.getString(4));
		out.println("<br>");
}
}
catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }
}
 




// Close the connection.

ps.close();
conn.close(); }
%>