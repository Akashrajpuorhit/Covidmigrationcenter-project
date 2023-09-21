<%-- 
    Document   : Adminlogin
    Created on : 9 Mar, 2021, 12:22:56 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerfile.jsp" %>
<%@include file="adlink.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
  margin: 0;
  padding: 0;
  font-family: sans-serif;

  background-image: url("images/admin.jpeg");
            
                 background-repeat: no-repeat;
          
                 
.box{
  width: 300px;
  padding: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: url(images/download2.jpg);
  text-align: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.box h1{
  color: white;
  text-transform: uppercase;
  font-weight: 500;
}
.box input[type = "text"],.box input[type = "password"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 14px 10px;
  width: 200px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
  font-size: 20px;
}
.box input[type = "text"]:focus,.box input[type = "password"]:focus{
  width: 280px;
  border-color: #2ecc71;
}
.box input[type = "submit"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #2ecc71;
  padding: 14px 40px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;
}
.box input[type ="button"]
{
    border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #2ecc71;
  padding: 14px 40px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;
}
.box input[type = "submit"]:hover{
  background-color:#14B09B;
}
.box input[type="button"]:hover
{
    background: #14B09B;
}
 .box input[type="reset"]
{
    background: #14B09B;
    
    border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #2ecc71;
  padding: 14px 40px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;
}
.box input[type="reset"]:hover{
  background-color:#14B09B;
}
        </style>
    </head>
    
        <body>
    <form class="box" action="adminmainpage.jsp" method="post">
            <h1>Admin Login</h1>
            <input type="text" name="text1" placeholder="AdminName" required="">
            <input type="Password" name="text2" placeholder="Password" required="">
            <input type="submit" value="Login" >
          <input type="reset" value="RESET">
            
        </form>
   
    </body>
</html>
<%@include file="footer.jsp" %>
