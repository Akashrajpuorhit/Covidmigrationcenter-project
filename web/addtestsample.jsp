<%-- 
    Document   : addtestsample
    Created on : 9 Mar, 2021, 1:02:57 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerfile.jsp" %>
<%@include file="footer.jsp" %>
<%@include file="confile.jsp" %>
<%@page import="java.util.Random" %>



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
            background: #487eb0;
             background-image: url("images/dark.jpg");
                   background-repeat: no-repeat;
                   background-size: cover;
        }
         a{
                 color:white;
                 text-decoration: none;
         font-weight: bold;
                 padding:10px;
                 text-decoration: none;
             }
             a:hover{
                 background-color: #14B09B;
                    color:lightcyan;
             }
        .addtestsample
        {
            width: 300px;
            padding: 10px;
            text-align: center;
            background: url(images/bg.png);
            position: absolute;
            top: 43%;
            left: 50%;
            transform: translate(-50%,-50%);
            overflow: hidden;
            margin-top: 50px;
            margin-bottom: 50px;
            }
            .addtestsample h2
            {
            margin-top: 40px;
            font-family: 'Permanent Marker',cursive;
            color: #fff;
            font-size: 30px;
            }
            .addtestsample input
            {
                display: block;
                width: 100%;
                padding: 0 16px;
                height: 30px;
                text-align: center;
                box-sizing: border-box;
                outline: none;
                border: none;
                font-family: 'montserrat',sans-serif;
                }
                .txtb
                {
                    margin: 9px 0;
                    background: rgba(255,255,255,5);
                    border-radius: 6px;
                    
                }
   .save-btn{
 margin-top: 20px;
 margin-bottom: 20px;
 background:#487eb0;
 color:#fff;
 border-radius: 44px;
 cursor: pointer;
 transition: 0.8s;
}
.cnl-btn{
 margin-top: 8px;
 margin-bottom: 10px;
 background:#487eb0;
 color:#fff;
 border-radius: 44px;
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
.addtestsample a{
    text-decoration: none;
    color: #fff;
    font-family: 'montserrat',sans-serif;
    font-size: 14px;
    padding: 8px;
    transition: 0.8s;
    display: block;
}
.addtestsample a:hover
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
input[type=submit]{
                padding:15px;
                background-color:lavender;
                color:darkblue;
                border-radius: 5px;
                width:100px;
                height:40px;
            }
            input[type=submit]:hover{
                color:green;
                background:lightblue;
            }



   </style>
   
    </head>
    
    <body>
         <BR>
         <a href="labmainpage1.jsp">LAB MAIN</a>
        
         <br>
         <br>
        
         <%@page import= "java.util.*" %>
        <%
        Random rand = new Random();
        String r1="TEST" + String.valueOf(rand.nextInt(10)) + String.valueOf(rand.nextInt(10)) + String.valueOf(rand.nextInt(10));
        %>
        
                
        
    <center>
        <div class="addtestsample">
            <h2>Add Test Sample No</h2>
        <form method="post" action="addtestsample.jsp">
      <input type="text" name="text1" placeholder="Email" class="txtb">
                    <input type="submit" value="Search">
                            
     
                   </form> 
            <center>
            
        
              <form action="addtestsample1.jsp" method="get">
                  <table>
              <%
String s1=request.getParameter("text1");  
 
 
rs=s.executeQuery("select * from applycovid where email='"+s1+"'");        

if(rs.next())
       {
     out.println("<input type='text' name=sample1 value='"+rs.getString("date")+"' class='txtb'></td>");
     out.println("<input type='text' name=sample2 value='"+rs.getString("username")+"' class='txtb'></td>");
     out.println("<input type='text' name=sample3 value='"+rs.getString("Address")+"' class='txtb'></td>");
     out.println("<input type='text' name=sample4 value='"+rs.getString("PhoneNumber")+"' class='txtb'></td>");
     out.println("<input type='text'  name=sample5 value='"+rs.getString("email")+"' class='txtb'></td>");
     out.println("<input type='text' name=sample value='"+r1+"' class='txtb'></td>");
      //out.println("<a href=adminmainpage1.jsp?a1="+ rs.getString("email")+">submit</a>");

     
         }

   %>
   
   
                  </table>
   
   <input type="submit" value="submit" class="save-btn">
  
              </form>
        </div>
   
        </body>
        </html>

