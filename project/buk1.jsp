<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%!String name;
String aut;
String pub;
String des;
String seller;
	String buyer;
	String product;
%>
<%

 name=request.getParameter("age");
aut=request.getParameter("wpm");
 pub=request.getParameter("wpmm");
 
 String uid=(String)session.getAttribute("user");
  String id=(String)session.getAttribute("name");

if(uid==null)
{
	out.println("LOGIN AND PROCEED");
} 
else if(name.length()==0||aut.length()==0||pub.length()==0)
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


String select="Select * from mobiles where brand='"+name+"' and model='"+aut+"'and price='"+pub+"';";

ResultSet rel=ps.executeQuery(select);
if(rel==null)
out.println("WE DONT HAVE");
else
{
while(rel.next())
{
	
seller=rel.getString(1);
	 buyer=uid;
	 product="mobile";
	
	

}
if(buyer.equals(seller))
{
	out.println("BUYER AND SELLER CANT BE ONE");
}
else
{
String query = "INSERT INTO buk (buyer,seller,product) VALUES ('"+buyer+"','"+seller+"','"+product+"');";

 int i=ps.executeUpdate(query);
 if(i>0)
	out.println("YOUR ID HAS BEEN SEND TO SELLER");
else
	out.println("SORRY FOR INCONVINENECE");
}
}
	}%>