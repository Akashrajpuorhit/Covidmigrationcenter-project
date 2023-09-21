<%-- 
    Document   : ResultDetails1
    Created on : 21 Apr, 2021, 3:15:00 PM
    Author     : Dell
--%>

<%@page import="com.in.Mail.Mail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="confile.jsp" %>
<%
String email=request.getParameter("email1");
String userid=request.getParameter("id");

//String email=(String)session.getAttribute("em");
//String emailid=(String)session.getAttribute("emid");
s.executeUpdate("update applycovid set status='rejected' where email='"+email+"'");
System.out.println(email+" "+userid);
int i=1;
if(i==1)
{
Mail m=new Mail();

m.secretMail("Rejected", userid, email);
out.println("mail send");
response.sendRedirect("ResultDetails.jsp");
 }
else
{
    out.println("mail not send");
}     
%>