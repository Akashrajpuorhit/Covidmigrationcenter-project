<%-- 
    Document   : usermainpage
    Created on : 9 Mar, 2021, 3:01:30 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="confile.jsp" %>
<%
String s1=request.getParameter("text1");
String s2s=request.getParameter("text2");
rs=s.executeQuery("select * from register where email='"+s1+"' and password='"+s2s+"'");
if(rs.next())
       {
    out.println("Login Succesfull");
    response.sendRedirect("usermainpage1.jsp");
    session.setAttribute("s", s1);
}
else
       {
    out.println("something error");
        response.sendRedirect("userlogin.jsp");

}


%>
        
