<%-- 
    Document   : main
    Created on : 14 Apr, 2021, 8:09:07 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerfile.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name='viewport' content='width=device-width, initial-scale=1'>
        <style>
            *
            {
                padding: 0;
                margin: 0;
            }
            body
            {
                background-image: url("images/corona.jpg");
                background-repeat: repeat;  
                box-sizing: border-box;
                font-family: sans-serif;
                height:-100%;
                width :- 400px;   
            }
            
            image{
                max-width: 100%;
            }
            
            .menu-bar
            {
                background:#0359AE;
                text-align:center;
                
            }
            
            .menu-bar ul
            {
                display: inline-flex;
                list-style: none;
                color: #fff;
            }
            
            .menu-bar ul li
            {
                width: 120px;
                margin: 15px;
                padding: 15px; 
            }
            
            .menu-bar ul li a
            {
                text-decoration: none;
                color: #fff;
            }
            
            .active, .menu-bar ul li:hover
            {
              background: #14B09B;
              border-radius: 3px;
            }
            
            .sub-menu-1
            {
                display: none;
            }            
            .menu-bar ul li:hover .sub-menu-1
            {
                display: block;
                position: absolute;
                background:steelblue;
                margin-top: 15px;
                margin-left: 15px;
            }
            .menu-bar ul li:hover .sub-menu-1 ul
            {
            display:block;
            margin: 10px;
            }
            .form1 p{
             align : center;   
            }
        </style>
    </head>
    <body>
     
        
        
         <div class="menu-bar">
        <ul>
            
            <li class="active"><i class="fa fa-home fa-2x"></i>HOME</li>
            
            <li><a href="register1.jsp"><i class="fa fa-registered fa-2x"></i>REGISTER</a></li>
            <li><i class="fa fa-user-circle-o fa-2x" aria-hidden="true" ></i>ADMIN
                <div class="sub-menu-1">
                    <ul>
                    <li><a href="Adminlogin.jsp"><i class="fa fa-unlock fa-2x" aria-hidden="true"></i>Admin Login</a></li>
                    </ul>
                    </div>
            </li>
            <li><i class="fa fa-user-circle-o fa-2x" aria-hidden="true" ></i>USER
                <div class="sub-menu-1">
                    <ul>
                    
                        <li><a href="userlogin.jsp"><i class="fa fa-unlock fa-2x" aria-hidden="true"></i>User Login</a></li>
                    </ul>
                    </div>
            </li>
            <li><i class="fa fa-user-circle-o fa-2x" aria-hidden="true" ></i>LAB
                <div class="sub-menu-1">
                    <ul>
                    
                        <li><a href="labLogin.jsp"><i class="fa fa-unlock fa-2x" aria-hidden="true"></i>Lab Login</a></li>
                    </ul>
                    </div>
            </li>
        
            <li>
                <a href="index.jsp"><i class="fa fa-power-off fa-2x" aria-hidden="true" onclick="closeWindow"></i>QUIT</a></li>
            
            </ul>
        </div>
        <img scr =" images/covid1_1"></img>
        <form name =" form1" >
            <h1 align = "center">ABSTRACT</h1>
            <p font-size = "50px">The Covid-19 Immigration Management System is a Java-based project designed to address the challenges of the pandemic in immigration processes. 
                It offers a comprehensive platform for immigration authorities to manage travelers securely and health-consciously.
                The system includes traveler registration with health declarations, risk assessment, and contact-less check-in using biometric technology.  
                During quarantine, travelers' health is monitored in real-time, and efficient contact tracing is facilitated in case of positive Covid-19 cases. 
                The project prioritizes data security and privacy through robust encryption and adherence to data protection regulations. Furthermore, comprehensive dashboards provide real-time insights into travelers' health status and pandemic trends. <br>
                The system's primary goal is to ensure safe international travel by streamlining immigration procedures while safeguarding public health.</p>
        </form>
        <br>
        <br>


    </body>
</html>
<%@include file="footer.jsp" %>