<%-- 
    Document   : ApplyCovidTest2
    Created on : 15 Apr, 2021, 12:17:20 AM
    Author     : Dell
--%>
<%@include file="confile.jsp" %>

<%@page import="com.in.Mail.Mail" %>

<%

String t1=request.getParameter("Name");
String t2=request.getParameter("Address");
String t3=request.getParameter("Phonenumber");
String t4=request.getParameter("Email");
String t5=request.getParameter("fa");
String t6=request.getParameter("re");
String date=request.getParameter("da");
String t7=request.getParameter("choose");
String t8=request.getParameter("groups");

if(t1 != null)
 {  
    int i=1;
    i = s.executeUpdate("insert into applycovid value('"+t1+"','"+t2+"','"+t3+"','"+t4+"','"+t5+"','"+t6+"','"+date+"','"+t7+"','"+t8+"','no','no','no','no','no','no','no','no')");   
    if(i == 1)
    {
        Mail m = new Mail();
     
        m.secretMail( "you have succesfully applied to covid test", t1, t4);
       
        
       response.sendRedirect("usermainpage1.jsp?msg=success");
        out.println("Record Saves  Successfully");
        
    }
    else
               {
        out.println("error");
    }
}


    


   


%>
