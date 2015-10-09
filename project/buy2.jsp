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
else if(name.length()==0&&aut.length()==0&&pub.length()==0&&des.length()==0)
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

if(name.length()!=0&&aut.length()!=0&&pub.length()==0)
{String select="Select * from mobiles where brand='"+name+"' and model='"+aut+"'and price='"+pub+"';";
ResultSet rel=ps.executeQuery(select);

while(rel.next())
{
	out.println("BRAND~~"+rel.getString(2));
		out.println();
		out.println("MODEL~~"+rel.getString(3));
		out.println();
		out.println("PRICE~~"+rel.getString(4));
		out.println("<br>");
}
}
 if(name.length()!=0&&aut.length()!=0)
{String select="Select * from mobiles where brand='"+name+"' and model='"+aut+"';";

ResultSet rel=ps.executeQuery(select);

while(rel.next())
{
	out.println("BRAND~~"+rel.getString(2));
		out.println();
		out.println("MODEL~~"+rel.getString(3));
		out.println();
		out.println("PRICE~~"+rel.getString(4));
		out.println("<br>");
}
}
else 
{

String select="Select * from mobiles where brand='"+name+"';";
ResultSet rel=ps.executeQuery(select);
if (rel.next())

	out.print("MATCHES FOUND"+"<br>");
else
	out.print("NO MATCHES FOUND");

while(rel.next())
{
	
		out.println("BRAND~~"+rel.getString(2));
		out.println();
		out.println("MODEL~~"+rel.getString(3));
		out.println();
		out.println("PRICE~~"+rel.getString(4));
		out.println("<br>");
	

}

}



// Close the connection.

ps.close();
conn.close();
 }
%>