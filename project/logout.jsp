<%
   // New location to be redirected
  session.invalidate();
   String site = new String("http://localhost:8080/examples/jsp/project/app1.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
   out.println("LOGGED-OUT") ;
%>