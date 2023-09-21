<%-- 
    Document   : addtestresult1
    Created on : 10 Apr, 2021, 10:42:56 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="confile.jsp" %>
<%
String  re1=request.getParameter("re");
 String s3=request.getParameter("sa");

 if(re1!=null&&re1!="")
       {
    s.executeUpdate("update applycovid set result='"+re1+"' where Email='"+s3+"'");
    out.println("Record Saved Successfully");
}
 else
         {
     out.println("there is some error");
 }
%>
