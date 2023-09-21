<%-- 
    Document   : usermainpage1
    Created on : 9 Mar, 2021, 3:01:45 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerfile.jsp" %>
<%@include file="confile.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">        
                <style>
                    
            *
            {
                padding: 0;
                margin: 0;
            }
            body
            {
                
                background-size: cover;
                background-position: center;
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
    
        <body bgcolor="lightblue">
        <div class="menu-bar">
        <ul>
            <li class="active"><h4>HOME PAGE</h4></li>
            <li><a href="ApplyCovidTest1.jsp"><h4>APPLY COVID TEST</h4></a></li>
            <li><a href="AskPermission.jsp"><h4>ASK PERMISSION</h4></a></li>
            <li><a href="fileupload.jsp"><h4>UPLOAD FILE</h4></a></li>
            <li><a href="ViewTestSampleNo.jsp"><h4>VIEW SAMPLE NO</h4></a></li>
            <li><a href="viewresult.jsp"><h4>VIEW TEST RESULT</h4></a></li>
            <li><a href="GrantPermission.jsp"><h4>VIEW APPLICATION</h4></a></li>
            <li><a href="downloadletter.jsp"><h4>DOWNLOAD LETTER</h4></a></li>
           
            
            <li><i class="fa fa-power-off fa-2x" aria-hidden="true"></i><a href="main.jsp">QUIT</a></</li>
         </ul>
        </div>
            <%
String name=(String)session.getAttribute("s");
rs = s.executeQuery("select * from register where email='"+name+"'");
if(rs.next()){
    String username = rs.getString("username");
out.println("Welcome:"+username);
}
%>
   
        <center><img src="images/7118.jpg"></center>    
    </body>
</html>
<%@include file="footer.jsp" %>