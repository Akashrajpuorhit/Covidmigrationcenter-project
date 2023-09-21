<%-- 
    Document   : ResultDetails
    Created on : 18 Apr, 2021, 11:17:42 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                font-family: verdana,Geneva,Tahoma,sans-serif;
                   background-image: url("images/dark.jpg");
                   background-repeat: no-repeat;
                   background-size: cover;
            }
            table
            {
                position: absolute;
                left:50%;
                top: 35%;
                transform: translate(-50%,-50%);
                border-collapse: collapse;
                width: 200px;
                height: 100px;
                border: 1px solid #bdc3c7;
                box-shadow: 2px 2px 12px rgba(0,0,0,0.2),-1px -1px 8px rgba(0,0,0,0.2);
                
                
                
            }
            tr{
                transition: all.2s ease-in;
                cursor: pointer;
                font-size:14px;
                
            }
            th,td{
                padding: 0px;
                text-align: left;
                border-bottom: 1px solid #ddd;
                color:white;
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
                background-color: blue;
                transform: scale(1.02);
                border-bottom: 1px solid #ddd;
                box-shadow: 2px 2px 12px rgba(0,0,0,0.2),-1px -1px 8px rgba(0,0,0,0.2);
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
        <br>
     <a href="adminmainpage1.jsp">ADMIN MAIN</a>
        <form method="get" action="CovidtestDetails.jsp">
        <div class="container">
	
            <table>
            <tr id="header">
                <th>Name</th>
                <th>Address</th>
                <th>Phone No</th>
                <th>Email</th>
                <th>Father Name</th>
                <th>Reason</th>
                <th>Date</th>
                <th>Choose</th>
                <th>Blood groups</th>
                <th>Sample No</th>
                <th>Result</th>
                <th>From State</th>
                <th>From City</th>
                <th>To state</th>
                <th>To city</th>
                <th>Status</th>
                <th>Grant Permission</th>
                   <th>Grant Permission</th>
            </tr>
   
<% 
                rs=s.executeQuery("select * from applycovid order by email");
		
                while( rs.next())
                {
   out.println("<tr> <td height=20>"+rs.getString("username")+"</td> <td> " + rs.getString("Address")+ "</td><td>"+rs.getString("Phonenumber")+"</td>  <td>" +rs.getString("email")+"</td> <td>"+rs.getString("father")+"</td><td>"+rs.getString("reason")+"</td><td>"+rs.getString("date")+"</td><td>"+rs.getString("choose")+"</td><td>"+rs.getString("groups")+"</td><td>"+rs.getString("sampleno")+"</td><td>"+rs.getString("result")+"</td><td>"+rs.getString("fromstate")+"</td><td>"+rs.getString("fromcity")+"</td><td>"+rs.getString("tostate")+"</td><td>"+rs.getString("tocity")+"</td><td>"+rs.getString("status")+"</td><td><a href='ResultDetails1.jsp?email1="+rs.getString("email")+"&id="+rs.getString("username")+"'>approved</a></td><td><a href='ResultDetails2.jsp?email1="+rs.getString("email")+"&id="+rs.getString("username")+"'>Reject</a></td></tr>");            
                }
       
             %> 
             
            </table>
           </div> 
            </form>
    </body>
</html>
