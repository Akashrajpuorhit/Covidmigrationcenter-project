<%-- 
    Document   : GrantPermission
    Created on : 17 Aug, 2021, 10:19:16 PM
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
                font-family: verdana,Geneva,Tahoma,sans-serif;
                   background-image: url("images/db.jpg");
            background-repeat: no-repeat;  
              
                font-family: sans-serif;
                height:-300px;
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

            table
            {
               
              
               
                border-collapse: collapse;
                width: 500px;
                height: 40px;
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
                background-color: #f5f5f5;
                transform: scale(1.02);
                border-bottom: 1px solid #ddd;
                box-shadow: 2px 2px 12px rgba(0,0,0,0.2),-1px -1px 8px rgba(0,0,0,0.2);
            }
            .save-btn{
 margin-top: 18px;
 margin-bottom: 20px;
 background:#487eb0;
 color:#fff;
 border-radius: 44px;
 cursor: pointer;
 transition: 0.8s;
}
.cnl-btn{
 margin-top: 6px;
 margin-bottom: 20px;
 background:#487eb0;
 color:#fff;
 border-radius: 49px;
 cursor: pointer;
 transition: 0.8s;
}
.txtb
{
                    margin: 6px 0;
                    background: rgba(255,255,255,5);
                    border-radius: 6px;
                    width: 40%;
                    
                    
             
}


.search1
{
    background-color: lightgreen;
}
 
        </style>
    </head>
    <body>
         <body>
        <BR>
         <a href="usermainpage1.jsp">USER MAIN</a>
        
         <br>
         <br>
         <form method="post" action="GrantPermission.jsp">
             <div class="search1">  
   <div class="search">
            Enter Email ID:<input type="text" name="Email" vaue="" class="txtb">
             <input type="submit" value="Search" class="save-btn">  
           
             </div>
             </div>

        </form>
         <center>
         <table>
            <tr id="header">
    <th>Date</th>
    <th>Name</th>
    <th>Address</th>
    <th>Phone Number</th>
    <th>Email</th>
    <th>Reason</th>
    <th>From state</th>
    <th>From city</th>
    <th>To state</th>
    <th>To city</th>
    <th>Status</th>
            </tr>
   
<% 
   String s5=request.getParameter("Email");
rs=s.executeQuery("select * from Applycovid where Email ='"+s5+"'");
		
                while( rs.next())
                {
                out.println("<tr> <td height=20>"+rs.getString("Date")+ " </td> <td> " + rs.getString("username")+ "</td> <td>"+rs.getString("Address")+"</td> <td>"+rs.getString("PhoneNumber")+"</td>  <td>"+rs.getString("Email") +"</td><td>"+rs.getString("Reason")+"</td><td>"+rs.getString("fromstate")+"</td><td>"+rs.getString("fromcity")+"</td><td>"+rs.getString("tostate")+"</td><td>"+rs.getString("tocity")+"</td><td>"+rs.getString("status")+"</td></tr>" );             
                }
%>
            </table>
             
    </body>
</html>
<%@include file="footer.jsp" %>
