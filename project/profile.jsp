<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<%

 
 String uid=(String)session.getAttribute("user");
 String id=(String)session.getAttribute("name");
 
if(uid==null)
{
	out.println("LOGIN AND PROCEED");
} 

else
{
 Class.forName("com.mysql.jdbc.Driver").newInstance();

// Open new connection.
java.sql.Connection conn;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");

Statement ps=conn.createStatement();


// Get the query results and display them.

%>
 <table border="2" align="center" cellpadding="7">
<tr>
<td align="CENTER" colspan="3">
PROFILE
</td>
</tr>
<TR>
<td align="CENTER" >
BOOKS UPLOADED
</td>
<td align="CENTER" >
MOBILES UPLOADED
</td>
<td align="CENTER" >
TABLETS UPLOADED
</td>
<TR>
<td align="center">
<%
out.println("BOOKS UPLOADED");
out.println("<br>");
String select="Select * from book where name='"+uid+"';";
ResultSet rel=ps.executeQuery(select);

while(rel.next())
{
	out.println("TITLE~~"+rel.getString(2));
		out.println();
		out.println("AUTHOR~~"+rel.getString(3));
		out.println();
		out.println("PUBLISHER~~"+rel.getString(4));
		out.println("<br>");
}
%>
</td>
<td>
<%
out.println("MOBILES UPLOADED");
out.println("<br>");
 select="Select * from mobiles where name='"+uid+"';";
 rel=ps.executeQuery(select);

while(rel.next())
{
	out.println("BRAND~~"+rel.getString(2));
		out.println();
		out.println("MODEL NO~~"+rel.getString(3));
		out.println();
		out.println("PRICE~~"+rel.getString(4));
		out.println("<br>");
}
%>
</td>
<td>
<%
out.println("TABLETS UPLOADED");
out.println("<br>");
 select="Select * from tablets where name='"+uid+"';";
 rel=ps.executeQuery(select);

while(rel.next())
{
	out.println("TITLE~~"+rel.getString(2));
		out.println();
		out.println("AUTHOR~~"+rel.getString(3));
		out.println();
		out.println("PUBLISHER~~"+rel.getString(4));
		out.println("<br>");
}
%>
</td>
</TR>
<tr>
<td align="CENTER" colspan="3">
PEOPLE INTRESTED IN YOUR GOODS 

<%

out.println("<br>");
 select="Select * from buk where seller='"+uid+"';";
 rel=ps.executeQuery(select);

while(rel.next())
{
	out.println("BUYER-ID~~"+rel.getString(2));
		out.println();
		out.println("PRODUCT~~"+rel.getString(3));
		out.println();
		
		out.println("<br>");
}
%>
</td>
</tr>
</TABLE>
<%
// Close the connection.

ps.close();
conn.close();
}
%>