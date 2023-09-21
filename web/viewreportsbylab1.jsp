<%@include file="confile.jsp" %>

<%
String id= request.getParameter("labid");
s.executeUpdate("update upload set labstatus='yes' where id='"+id+"' ");
response.sendRedirect("viewreportsbylab.jsp?msg=success");
%>
