<%-- 
    Document   : adminmainpage
    Created on : 9 Mar, 2021, 12:35:12 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="confile.jsp" %>
<%
String s1=request.getParameter("text1");
String s2=request.getParameter("text2");
rs=s.executeQuery("select * from lablogin where username='" + s1 + "' and password='" + s2 + "'");
if(rs.next())
       {
    out.println("Login Succesfull");
    response.sendRedirect("labmainpage1.jsp");
}
else
       {
    out.println("USERNAME OR PASSWORD IS NOT CORRECT");
}


%>
        