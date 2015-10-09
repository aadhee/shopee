
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
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


<script language="javascript" type="text/javascript">
<!-- 
//Browser Support Code
function ajaxFunction(){
	var ajaxRequest;  // The variable that makes Ajax possible!
	
	try{
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();
	} catch (e){
		// Internet Explorer Browsers
		try{
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");
				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){
		if(ajaxRequest.readyState == 4){
			var ajaxDisplay = document.getElementById('div3');
				var ajaxDisplay1 = document.getElementById('log1');
			
			var name=ajaxRequest.responseText;
			
			 alert (name);
			
			
							ajaxDisplay1.innerHTML = name;
			
			
		}
	}
	var age = document.getElementById('age').value;
	var wpm = document.getElementById('wpm').value;

	var queryString = "?age=" + age + "&wpm=" + wpm ;
	ajaxRequest.open("GET", "log.jsp" + queryString, true);
	ajaxRequest.send(null); 
}
function ajaxFunction2(){
	var ajaxRequest;  // The variable that makes Ajax possible!
	
	try{
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();
	} catch (e){
		// Internet Explorer Browsers
		try{
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");
				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){
		if(ajaxRequest.readyState == 4){
			
		}
	}
	

	
	ajaxRequest.open("GET", "logout.jsp" , true);
	ajaxRequest.send(null); 
}

function verify() {

            //for field must take some input
				
            if (form1.name.value == "") {
                alert("Please give the TITLE");
             
                return false;
            }
	 	if (form1.reg.value == "") {
                alert("Please give the AUTHOR");
             
                return false;
            }
            if (form1.pub.value == "") {
                alert("Please give the PUBLISHER");
             
                return false;
            }

            

           
		send();
      return( true );
 
}
function ajaxFunction1(){
	
	var ajaxRequest;  // The variable that makes Ajax possible!
	
	try{
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();
	} catch (e){
		// Internet Explorer Browsers
		try{
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");
				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){
		if(ajaxRequest.readyState == 4){
			var ajaxDisplay = document.getElementById('div4');
			
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		}
	}
	var age = document.getElementById('name').value;
	var wpm = document.getElementById('aut').value;

	var queryString = "?age=" + age + "&wpm=" + wpm ;
	ajaxRequest.open("GET", "del.jsp" + queryString, true);
	ajaxRequest.send(null); 
}
function ajaxFunction20(){
	
	var ajaxRequest;  // The variable that makes Ajax possible!
	
	try{
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();
	} catch (e){
		// Internet Explorer Browsers
		try{
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");
				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){
		if(ajaxRequest.readyState == 4){
			var ajaxDisplay = document.getElementById('div4');
			
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		}
	}
	var age = document.getElementById('name').value;
	var wpm = document.getElementById('aut').value;

	var queryString = "?age=" + age + "&wpm=" + wpm ;
	ajaxRequest.open("GET", "del1.jsp" + queryString, true);
	ajaxRequest.send(null); 
}
function ajaxFunction10(){
	
	var ajaxRequest;  // The variable that makes Ajax possible!
	
	try{
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();
	} catch (e){
		// Internet Explorer Browsers
		try{
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");
				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){
		if(ajaxRequest.readyState == 4){
			var ajaxDisplay = document.getElementById('div14');
			
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		}
	}

	var wpm = document.getElementById('aut1').value;

	var queryString = "?wpm=" + wpm ;
	ajaxRequest.open("GET", "delreq.jsp" + queryString, true);
	ajaxRequest.send(null); 
}
function ajaxFunction15(){
	
	var ajaxRequest;  // The variable that makes Ajax possible!
	
	try{
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();
	} catch (e){
		// Internet Explorer Browsers
		try{
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");
				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){
		if(ajaxRequest.readyState == 4){
			var ajaxDisplay = document.getElementById('div14');
			
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		}
	}

	var wpm = document.getElementById('aut1').value;

	var queryString = "?wpm=" + wpm ;
	ajaxRequest.open("GET", "delreq1.jsp" + queryString, true);
	ajaxRequest.send(null); 
}
</script>
</head>

<div class="title" width="1500" id="div2">
<h1 style="text-align:center; font-color:yellow;font-size:40">
<img src="ra.jpg" align="center" alt="logo" height="50" width="50">
SHOPEE<img src="ra.jpg" align="center" alt="logo" height="50" width="50"></H1> 
<h1 align="right">
<a href="register.html" >
	<button width="48" height="48">REGISTER</button></a>
	<a href="logout.jsp"><input type='button' value="LOG-OUT"  /></a>
		<a href="app1.jsp"><input type='button' value="HOME"  /></a>
</h1>
</DIV>
<div id="log1">
<%
String name=(String)session.getAttribute("name");
if(name==null)
{out.print("LOGIN PLEASE ");}
else  
out.print("Hello "+name);
%>   
</div>
<div class="log" width="1500" id="div3" align="right">

 <span id="log">
<form name='myForm'>
Mail-id: <input type='text' id='age' /> <br />
Password: <input type='password' id='wpm' /><br />

<input type='button' onclick='ajaxFunction()' value="LOG-IN"  />
</form>
</span>
 
  

</div>

<DIV CLASS="HOME" align="center">
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
<tr align="center">
<td align="CENTER" colspan="2"><form method="POST"  name="form1">

    <table border="2" align="center" cellpadding="7">
<caption>REMOVE YOUR PRODUCT</caption>
   
        <tr>

            <td><strong>PRODUCT:</strong></td>

   
            <td>
 						<select id="name">
 					<option value="book">BOOK</OPTION>	
               <option value="mobiles">MOBILES</OPTION>
               <option value="tablets">TABLETS</OPTION>
            </td>
     
        </tr>

      <tr>

            <td><strong>TITLE/MODEL-NO:</strong></td>

   
            <td>
 
                <input type="text" name="reg" id="aut" onblur='ajaxFunction1()' />
            </td>
     
        </tr>
        
    
     

       
       

       
        
        <tr align="center">

            <td>
                <!--Submit Button, Function verify need to be called when we process
                submit button-->
                <input type='button' onclick='ajaxFunction20()' value="DELETE"  />
            </td>

            <td>
                <!--Reset Button-->
                 <a href="pro.jsp"><input type="button" value="RELOAD"></a>
            </td>
        </tr>
</form>

    <!--Form Close -->


        <!--Table Close-->
    </table>



</div>
<div id="div4">
</div>
<td align="CENTER" colspan="2"><form method="POST"  name="form1">

    <table border="2" align="center" cellpadding="7">
<caption>REMOVE YOUR REQUEST</caption>
   
       
            <td><strong>PRODUCT:</strong></td>

   
            <td>
 
                <input type="text" name="reg" id="aut1" onblur='ajaxFunction10()' />
            </td>
     
        </tr>
        
    
     

       
       

       
        
        <tr align="center">

            <td>
                <!--Submit Button, Function verify need to be called when we process
                submit button-->
                <input type='button' onclick='ajaxFunction15()' value="DELETE REQUEST"  />
            </td>

            <td>
                <!--Reset Button-->
                 <a href="pro.jsp"><input type="button" value="RELOAD"></a>
            </td>
        </tr>
</form>

    <!--Form Close -->


        <!--Table Close-->
    </table>

<%
// Close the connection.

ps.close();
conn.close();
}
%>

</div>
<div id="div14">
</div>