<%-- 
    Document   : register1
    Created on : 4 Apr, 2021, 6:45:10 PM
    Author     : Dell
--%>



<%@page import="java.util.Random" %>
<%@include file="adlink.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        
        <style>
            body
        {
            margin: 0;
            padding: 0;
           background: url(images/bg.png);
        }
        input[type=submit]:hover{
            background: #14B09B;
            
        }
        .SignUp-form
        {
            width: 300px;
            padding: 10px;
            text-align: center;
            
            position: absolute;
            top: 39%;
            left: 50%;
            transform: translate(-50%,-50%);
            overflow: hidden;
            margin-top: 50px;
            margin-bottom: 50px;
            }
            .SignUp-form h1
            {
            margin-top: 40px;
            font-family: 'Permanent Marker',cursive;
            color: #fff;
            font-size: 40px;
            }
            .SignUp-form input
            {
                display: block;
                width: 100%;
                padding: 0 16px;
                height: 44px;
                text-align: center;
                box-sizing: border-box;
                outline: none;
                border: none;
                font-family: 'montserrat',sans-serif;
                }
                .txtb
                {
                    margin: 10px 0;
                    background: rgba(255,255,255,5);
                    border-radius: 6px;
                    
                }
   .SignUp-btn{
 margin-top: 50px;
 margin-bottom: 20px;
 background:#487eb0;
 color:#fff;
 border-radius: 44px;
 cursor: pointer;
 transition: 0.6s;
}
.SignUp-btn:hover
{
transform: scale(0.96);    
}
.SignUp-form a{
    text-decoration: none;
    color: #fff;
    font-family: 'montserrat',sans-serif;
    font-size: 14px;
    padding: 8px;
    transition: 0.8s;
    display: block;
}
.SignUp-form a:hover
{
    background: rgba(0,0,0,.6);
    
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
   </style> 
   </head>
    <body>
        <div class="SignUp-form">
            <form  autocomplete="off" action="register2.jsp" method="post" >
            <h1>Sign Up</h1>
            
            <%@page import= "java.util.*" %>
        <%
        Random rand = new Random();
        String r1="REGT" + String.valueOf(rand.nextInt(10)) + String.valueOf(rand.nextInt(10)) + String.valueOf(rand.nextInt(10));
        %>
        
            
 <input type="text" name="Regno"  value="<%=r1 %>" class="txtb" required="">               
<input type="text" name="Username" placeholder="UserName" class="txtb"required="">
<input type="password" name="password" placeholder="Password" class="txtb"required="">
<input type="text" name="PhoneNumber" placeholder="Phone Number" class="txtb" pattern="([6-9]{1})([0-9]{9})" title="enter only 10 numbers" >
<input type="text" name="Address" placeholder="Address" class="txtb"required="">
<input type="Email" name="Email" placeholder="Email" class="txtb" required="">
<input type="text" name="AdharNumber" placeholder="Adhar Number" class="txtb" pattern="[0-9]{12}" title="please enter valid adhar number">
<input type="submit" value="Create Account" class="SignUp-btn">
<a href="userlogin.jsp">Already have an Account</a>
                
                
            </form>
        </div>
    </body>
</html>
<%@include file="footer.jsp"%>