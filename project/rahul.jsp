 
  
<%  
String s=request.getParameter("t1");  
if(s==null || s.trim().equals("")){  
out.print("Please enter id");  
}else{  
int id=Integer.parseInt(s);  
out.print( id);
           }
        %>  

}  
%>  