<%-- 
    Document   : footer
    Created on : 12 Mar, 2021, 10:36:54 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        .footer {
  position:fixed;
  bottom:0;
  left:0;
  width:100%;
  height:50px;
  background-color: #14B09B;
}
.footer-text-left {
  font-size:20px;
  padding-left:40px;
  float:left;
  word-spacing:20px;
}

a.menu:hover {
   background-color: lightblue;
  font-size:25px;
  
}
a.menu{
    text-decoration: none;
    font-size: 20px;
    font-weight: bold;
    color:black;
    padding:10px;
    border-radius: 7px;
 
}

.footer-content-right {
  padding-right:40px;
  margin-top:15px;
  float:right;
  float: top;
}

.icon-style {
  height:25px;
  margin-left:10px;
  margin-top:0px;
}

.icon-style:hover {
  background-color:yellow;
  padding:5px;
}
        </style>
    </head>
    <body>
       <div class="footer">
 <p class="footer-text-left">
    <a href="main.jsp" class="menu">home</a>
    <a href="https://www.who.int/health-topics/coronavirus" class="menu">about</a>
    <a href="https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf" class="menu">HelpLine</a>
        </p>
        
        <div class="footer-content-right">
  <img src="images/github.jpg" class="icon-style" alt="Github icon">
  <img src="images/twitter.jpg" class="icon-style" alt="Twitter icon">
   <img src="images/email.jpg" class="icon-style" alt="Emailicon">
</div>
    </div>
        
    </body>
</html>
