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

//-->
</script>
</head>

<div class="title" width="1500" id="div2">
<h1 style="text-align:center; font-color:yellow;font-size:40">
<img src="ra.jpg" align="center" alt="logo" height="50" width="50">
SHOPEE<img src="ra.jpg" align="center" alt="logo" height="50" width="50"></H1> 
<h1 align="right">
<a href="register.html" >
	<button width="48" height="48">REGISTER</button></a>
	<a href="pro.jsp" >	<button width="48" height="48">MY-SHOP</button></a>
	<a href="logout.jsp"><input type='button' value="LOG-OUT"  /></a>
</h1>
</DIV>
<div id="log1">
<%
String name=(String)session.getAttribute("name");
if(name==null)
{}
else  
out.print("Hello "+name);
%> 
</div>

<div class="log" width="1500" id="div3" align="right">
<form name='myForm'>
Mail-id: <input type='text' id='age' /> <br />
Password: <input type='password' id='wpm' />

<input type='button' onclick='ajaxFunction()' value="LOG-IN"  />
</form>


</form>  
  

</div>

<DIV CLASS="HOME">


</h1> 

<TABLE style="margin-bottom:0;" align="center">
<tr>
<td align="right" colspan="2">

</td></tr>
<TR>
<TD align="center">
<figure>
<a href="boy.jsp" ><img src="ra1.png" alt="buy" border="5" height="250" width="250"></a>
<figcaption>BUY IT!!</figcaption>
</figure>
</TD>

<td align="center">

<figure><a href="sold.jsp" ><img src="ra2.png" alt="sell" border="5" height="250" width="250"></a>
<figcaption>SELL</figcaption></figure></td>
<tr>
<td align="center"><a href="bmain.jsp" ><img src="ra3.png" alt="buy" border="5" height="250" width="250"></a><figcaption>BOOKS</figcaption></td>
<td align="center"><a href="tmain.jsp" ><img src="ra4.png" alt="buy" border="5" width="250" height="250"></a><figcaption>TABLETS</figcaption></td>


</tr>
<tr>
<td colspan="2" align="center"><a href="smain.jsp" ><img src="ra5.jpg" alt="buy" border="5" height="250" width="250" ></a><figcaption>MOBILES</figcaption></td>
</tr>
</TABLE>
</HTML>

