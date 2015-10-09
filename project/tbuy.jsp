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
			var ajaxDisplay = document.getElementById('ta');
			
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		}
	}
	var age = document.getElementById('name').value;
	var wpm = document.getElementById('aut').value;
	var wpmm = document.getElementById('pub').value;
	
	var queryString = "?age=" + age + "&wpm=" + wpm + "&wpmm=" + wpmm ;
	ajaxRequest.open("GET", "buy3.jsp" + queryString, true);
	ajaxRequest.send(null); 
}
function ajaxFunction5(){
	
	var ajaxRequest;  // The variable that makes Ajax possible!
	alert("ORDER HAS BEEN SENT");
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
	var wpmm = document.getElementById('pub').value;
	
	var queryString = "?age=" + age + "&wpm=" + wpm + "&wpmm=" + wpmm ;
	ajaxRequest.open("GET", "buk2.jsp" + queryString, true);
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
	<a href="pro.jsp" >	<button width="48" height="48">MY-SHOP</button></a>
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


</h1> 


<td><form method="POST"  name="form1">

    <table border="2" align="center" cellpadding="7">
<caption>TABLET-DETAILS</caption>
   
        <tr>

            <td><strong>BRAND:</strong></td>

   
            <td>
 
                <input type="text" name="name" id="name" onblur='ajaxFunction1()'   />
            </td>
     
        </tr>

      <tr>

            <td><strong>MODEL NO:</strong></td>

   
            <td>
 
                <input type="text" name="reg" id="aut" onblur='ajaxFunction1()' />
            </td>
     
        </tr>
        <td><strong>PRICE:</strong></td>


        <td>
    
            <input type="number" name="pub" id="pub" onblur='ajaxFunction1()'/>
        </td>
    
        </tr>

       
       

       
        
        <tr align="center">

            <td>
                <!--Submit Button, Function verify need to be called when we process
                submit button-->
                <input type='button' onclick='ajaxFunction5()' value="BUY"  />
            </td>

            <td>
                <!--Reset Button-->
                <a href="tbuy.jsp"><input type="button" value="RELOAD"></a>
            </td>
        </tr>
</form>

    <!--Form Close -->


        <!--Table Close-->
    </table>
    <DIV CLASS="success" align="center" id="div4">
    <table>
    <tr ><td id="ta"></td></tr>
    </div>
</HTML>


