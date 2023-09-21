<%@include file="confile.jsp" %>

<%
String id= request.getParameter("id");
s.executeUpdate("update upload set status='yes' where id='"+id+"' ");
response.sendRedirect("userreports.jsp?msg=success");
%>
