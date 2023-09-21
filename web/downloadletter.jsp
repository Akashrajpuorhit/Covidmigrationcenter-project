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
        <title>LAB HOME Page</title>
         <style>
            *
            {
                padding: 0;
                margin: 0;
            }
             input[type=submit]{
                padding:15px;
                background-color:lavender;
                color:darkblue;
                border-radius: 5px;
                width:100px;
            }
            input[type=submit]:hover{
                color:green;
                background:lightblue;
            }
            body
            {
                background-size: cover;
                background-position: center;
                box-sizing: border-box;
                font-family: sans-serif;
                background-image: url("images/dark.jpg");
                   background-repeat: no-repeat;
                   background-size: cover;
            }
            .menu-bar
            {
                background: rgb(0,100,0);
                text-align:center;
                
            }
            .menu-bar ul
            {
                display: inline-flex;
                list-style: none;
                color:white;
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
              background: #2bab0d;
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
                background: rgb(0,100,0);
                margin-top: 15px;
                margin-left: 15px;
            }
            .menu-bar ul li:hover .sub-menu-1 ul
            {
            display:block;
            margin: 10px;
            }
            table
            {
                position: absolute;
                left:50%;
                top: 50%;
                transform: translate(-50%,-50%);
                border-collapse: collapse;
                width: 800px;
                height: 100px;
                border: 1px solid #bdc3c7;
                box-shadow: 2px 2px 12px rgba(0,0,0,0.2),-1px -1px 8px rgba(0,0,0,0.2);
                
                
                
            }
            tr{
                transition: all.2s ease-in;
                cursor: pointer;
                
            }
            th,td{
                padding: 2px;
                text-align: left;
                border-bottom: 1px solid #ddd;
                color:white;
                background: darkblue;
            }
           
            tr,td:hover{
                color:darkblue;
                background-color: white;
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
    
        <body bgcolor="lightblue">
   <BR>
         <a href="usermainpage1.jsp">USER MAIN</a>
        
         <br>
         <br>
        <center>
            
            <div class="container">
	
            <table>
            <tr id="header">
                <th>Id</th>
                <th>File keyword</th>
                <th>File name</th>
                <th>Uploaded time</th>
                <th>View</th>
              
            </tr>
   
<% 
                String email = (String)session.getAttribute("s");
                rs=s.executeQuery("select * from upload1 where email='"+email+"' ");
		
                while( rs.next())
                {
               out.println("<tr> <td height=20>"+rs.getString("id")+ " </td> <td> " + rs.getString("fname")+ "</td><td>"+rs.getString("filename")+"</td>  <td>" +rs.getString("utime")+"</td><td><a href=Downloads1?id="+rs.getString("id")+ ">Download Permission Letter</a></td> </tr>" );            
                }
                %>  
            </table>
        </div>
            
        </center>
    </body>
</html>
<%@include file="footer.jsp" %>