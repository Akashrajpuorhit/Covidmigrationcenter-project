<%-- 
    Document   : GiveAppointment
    Created on : 7 Apr, 2021, 9:29:09 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerfile.jsp" %>
<%@include file="confile.jsp" %>
<%@page import="com.in.Mail.Mail" %>
<%
String time=request.getParameter("time");
//String date=request.getParameter("Appointmentdate");
String mail=request.getParameter("mail");
String name=request.getParameter("name");



if(time!=null&&time!=""){
    int i=1;
    i=s.executeUpdate("update ApplyCovid set time='"+time+"' where email='"+mail+"'");
    if(i==1)
               {
        Mail m =  new Mail();
        m.secretMail("you have got to Appointment",name,mail);
       
       response.sendRedirect("index.jsp?msg=success");
    }
}





%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
        body
        {
            margin: 0;
            padding: 0;
            background: url(images/bg.png);
        }
        .addtestresult
        {
            width: 330px;
            padding: 8px;
            text-align: center;
           background: url(images/bg.png);
            position: absolute;
            top: 47%;
            left: 50%;
            transform: translate(-50%,-50%);
            overflow: hidden;
            margin-top: 40px;
            margin-bottom: 40px;
            }
            .addtestresult h4
            {
            margin-top: 40px;
            font-family: 'Permanent Marker',cursive;
            color: #fff;
            font-size: 30px;
            }
            .addtestresult input
            {
                display: block;
                width: 100%;
                padding: 0 15px;
                height: 33px;
                text-align: center;
                box-sizing: border-box;
                outline: none;
                border: none;
                font-family: 'montserrat',sans-serif;
                }
                .txtb
                {
                    margin: 6px 0;
                    background: rgba(255,255,255,5);
                    border-radius: 6px;
                    
                }
   .save-btn{
 margin-top: 18px;
 margin-bottom: 20px;
 background:#487eb0;
 color:#fff;
 border-radius: 44px;
 cursor: pointer;
 transition: 0.8s;
}
.cnl-btn{
 margin-top: 6px;
 margin-bottom: 20px;
 background:#487eb0;
 color:#fff;
 border-radius: 49px;
 cursor: pointer;
 transition: 0.8s;
}
.save-btn:hover
{
transform: scale(0.96);    
}
.cnl-btn:hover
{
transform: scale(0.96);    
}
.addtestresult a{
    text-decoration: none;
    color: #fff;
    font-family: 'montserrat',sans-serif;
    font-size: 14px;
    padding: 8px;
    transition: 0.8s;
    display: block;
}
.addtestresult a:hover
{
    background: rgba(0,0,0,.3);
    
}
input [type=text],select
{
    width: 100%;
    padding: 10px 18px;
    margin: 10px 0;
    background: rgba(255,255,255,5);
    border-radius: 6px;
    
}



   </style> 
   
    </head>
    <body>
        <div class="addtestresult">
        <form method="post" action="GiveAppointment.jsp">
            <%
String email=request.getParameter("name");
rs=s.executeQuery("select * from Applycovid where email='"+email+"'");
if(rs.next())
       {
    
    out.println("<input type='text' name='name' value='" + rs.getString("Name")+"' readonly class='txtb'>");    
    out.println("<input type='text' value='"+rs.getString("Address")+"'class='txtb'>");
    out.println("<input type='text' value='"+rs.getString("Phonenumber")+"'class='txtb'>");
    out.println("<input type='email' name='mail' value='"+rs.getString("email")+"'class='txtb'>");
    out.println("<input type='text' value='"+rs.getString("Fathename")+"'class='txtb'>");
    out.println("<input type='text' name='id' value='" + rs.getString("reason")+"'class='txtb'>");    
    out.println("<input type='text'  value='" + rs.getString("date")+"'class='txtb'>");    
    out.println("<input type='text'  value='" + rs.getString("choose")+"'class='txtb'>");    
    out.println("<input type='text'  value='" + rs.getString("groups")+"'class='txtb'>");    

       
    

}
%>
<input type="time" name="time" class="txtb">

       
 <input type="submit" value="Give Appointment" class="save-btn"> 
        
        <a href="adminmainpage1.jsp"><input type="button" value="CANCEL" class="cnl-btn"></a>
        </form>
        </div>
    </body>
</html>
<%@include file="footer.jsp" %>