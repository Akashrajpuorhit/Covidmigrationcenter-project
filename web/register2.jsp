<%-- 
    Document   : register2
    Created on : 18 Apr, 2021, 8:12:40 PM
    Author     : Dell
--%>

<%@include  file="confile.jsp" %>
<%@page import="com.in.Mail.Mail" %>
<%

String s1=request.getParameter("Username");
String s2=request.getParameter("password");
String r3=request.getParameter("PhoneNumber");
String r4=request.getParameter("Address");
String r5=request.getParameter("Email");
String r6=request.getParameter("AdharNumber");
String r7=request.getParameter("Regno");

if(s1!=null&&s1!="")
       {
    s.executeUpdate("insert into register value('"+s1+"','"+s2+"','"+r3+"','"+r4+"','"+r5+"','"+r6+"','"+r7+"')");
    out.println("Record Saved Succesfully");
    response.sendRedirect("main.jsp");
    session.setAttribute("em", r5);
    session.setAttribute("emid", s1);
}


%>