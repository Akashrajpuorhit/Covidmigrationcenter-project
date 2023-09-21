<%-- 
    Document   : addtestsample1
    Created on : 9 Apr, 2021, 4:39:27 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="confile.jsp" %>
<%
String s2=request.getParameter("sample"); 

        String s3=request.getParameter("sample5");
 
        if(s2!=null&&s2!="")
           {
  s.executeUpdate("update applycovid set sampleno='"+s2+"' where email='"+s3+"'");
  out.println("Updated SampleNo successfully");

 }
        else
                       {
            out.println("something went wrong");
        }











%>

