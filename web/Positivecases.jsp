<%-- 
    Document   : Positivecases
    Created on : 17 Aug, 2021, 11:14:24 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerfile.jsp" %>
<%@include file="confile.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <style>
            body{
                padding: 0;
                margin: 0;
                background-image: url("images/db.jpg");
            background-repeat: no-repeat;  
               background-size: cover;
                font-family: sans-serif;
               
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
                color:lavender;
                
            }
            th,td{
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            #header
            {
                background-color: #16a085;
                color: #fff;
                
            }
            h1{
                font-weight: 400;
                text-align: center;
                background-color: #16a085;
                color: #fff;
                padding: 10px 0px;
                
            }
            tr:hover
            {
                background-color:white;
                color:darkblue;
                transform: scale(1.02);
                border-bottom: 1px solid #ddd;
                box-shadow: 2px 2px 12px rgba(0,0,0,0.2),-1px -1px 8px rgba(0,0,0,0.2);
            }
        </style>
    </head>
    <body>
        <BR>
         <a href="labmainpage1.jsp">LAB MAIN</a>
        
         <br>
         <br>
     <form method="post" action="Positivecases.jsp">
        <div class="container">
	
            <table>
            <tr id="header">
                <th>Name</th>
                <th>Address</th>
                <th>PhoneNumber</th>
                <th>Email</th>
                <th>Father Name</th>
                <th>Reason</th>
                <th>dateOfBirth</th>
                <th>choose</th>
                <th>groups</th>
            </tr>
   
<% 
                rs=s.executeQuery("select * from applycovid where result='positive'");
		
                while( rs.next())
                {
               out.println("<tr> <td height=20>"+rs.getString("username")+ " </td> <td> " + rs.getString("Address")+ "</td><td>"+rs.getString("Phonenumber")+"</td>  <td>" +rs.getString("email")+"</td> <td>"+rs.getString("father")+"</td><td>"+rs.getString("reason")+"</td><td>"+rs.getString("date")+"</td><td>"+rs.getString("choose")+"</td><td>"+rs.getString("groups")+"</td></tr>" );            
                }
                %>  
            </table>
        </div>
        </form>

       
    </body>
</html>
<%@include file="footer.jsp" %>