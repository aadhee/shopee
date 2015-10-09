<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>
<%!

String aut;
String select;
String des;
%>
<%


aut=request.getParameter("wpm");

 String uid=(String)session.getAttribute("user");

if(uid==null)
{
	out.println("LOGIN AND PROCEED");
} 
else if(aut.length()==0)
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





 select="Select * from buk where buyer='"+uid+"' and product='"+aut+"';";

ResultSet rel=ps.executeQuery(select);
try{
while(rel.next())
{
	out.println(rel.getString(1));
		out.println();
		out.println(rel.getString(2));
		out.println();
		out.println(rel.getString(3));
		out.println("<br>");
}
}
catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }






// Close the connection.

ps.close();
conn.close(); }
%>