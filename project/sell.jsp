<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%!

String name;
String aut;
String pub;
String des;
%>
<%

 name=request.getParameter("age");
aut=request.getParameter("wpm");
 pub=request.getParameter("wpmm");
 des=request.getParameter("wp");
 String uid=(String)session.getAttribute("user");
 
if(uid==null)
{
	out.println("LOGIN AND PROCEED");
} 
if(name.length()==0||aut.length()==0||pub.length()==0||des.length()==0)
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


String query = "INSERT INTO book (name,title,author,publisher,description) VALUES ('"+uid+"','"+name+"','"+aut+"','"+pub+"','"+des+"');";

// Get the query results and display them.
int i= ps.executeUpdate(query);


if(i>0)  
{
out.println("THANKS FOR YOUR BOOKS"+uid);

}
else
out.println("error");




// Close the connection.

ps.close();
conn.close();
 }
%>