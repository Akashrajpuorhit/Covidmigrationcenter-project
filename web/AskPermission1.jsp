<%-- 
    Document   : AskPermission1
    Created on : 18 Apr, 2021, 2:37:35 PM
    Author     : Dell
--%>

<%@include file="confile.jsp" %>
<%@page import="com.in.Mail.Mail" %>
<%
String s1=request.getParameter("fstate");
String s2=request.getParameter("fcity");
String s3=request.getParameter("tstate");
String s4=request.getParameter("tcity");
String s5=request.getParameter("Email");

if(s1!=null && s1!="")
       {
    int i=1;
    s.executeUpdate("update applycovid set fromstate='"+s1+"',fromcity='"+s2+"',tostate='"+s3+"',tocity='"+s4+"' where Email='"+s5+"'");
if(i == 1)
    {
        Mail m =  new Mail();
        m.secretMail( "you have succesfully applied to covid test", s1, s5);
       
        
        response.sendRedirect("usermainpage1.jsp?msg=success");
        out.println("Record Saves  Successfully");
    }
    else
               {
        out.println("error");
    }
}


%>
