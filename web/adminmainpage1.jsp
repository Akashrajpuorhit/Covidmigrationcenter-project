<%-- 
    Document   : adminmainpage1
    Created on : 9 Mar, 2021, 12:44:50 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="confile.jsp" %>
<%@include file="headerfile.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
            *
            {
                padding: 0;
                margin: 0;
            }
            body
            {
                background-image:url("images/coronavirus-4991979_1280 (1).jpg");
                background-size: cover;
                background-repeat: no-repeat;
                box-sizing: border-box;
                font-family: sans-serif;
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
                width: 100px;
                margin: 10px;
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
              padding:15px;
            }
            .sub-menu-1
            {
                display: none;
                padding:10px;
            }
            .menu-bar ul li:hover .sub-menu-1
            {
                display: block;
                position: absolute;
                background: rgb(0,100,0);
                margin-top: 15px;
                margin-left: 15px;
            }
            .menu-bar ul li:hover .sub-menu-1 ul
            {
            display:block;
            margin: 10px;
            }
        </style>
    </head>
    
        <body>
        <div class="menu-bar">
        <ul>
            <li class="active"><i class="fa fa-home fa-2x"></i>ADMIN HOME PAGE</li>
            <li><a href="addstate.jsp"><i class="fa fa-registered fa-2x"></i>ADD STATE</a></li>
            <li><a href="addCity.jsp"><i class="fa fa-user-circle-o fa-2x" aria-hidden="true" ></i>ADD CITY</a></li>
            <li><a href="userreports.jsp"><i class="fa fa-registered fa-2x"></i>USER REPORTS</a></li>
            <li><a href="ResultDetails.jsp">Grant Permission</a></li>
            <li><a href="userpermissionletter.jsp"><i class="fa fa-registered fa-2x"></i>UPLOAD PERMISSION LETTER</a></li>
            <!--<li><a href="addtestresult.jsp"><i class="fa fa-user-circle-o fa-2x" aria-hidden="true" ></i>ADD TEST RESULT</a></li>
            <li><a href="addtestsample.jsp"><i class="fa fa-unlock fa-2x" aria-hidden="true"></i>ADD TEST SAMPLE</a></li>-->
            <li><a href="CovidtestDetails.jsp">Covid Test Appoint</a></li>
           
            <li><a href="main.jsp"><i class="fa fa-power-off fa-2x" aria-hidden="true"></i>QUIT</a></li>
         </ul>
        </div>
        
    </body>
</html>
<%@include file="footer.jsp" %>