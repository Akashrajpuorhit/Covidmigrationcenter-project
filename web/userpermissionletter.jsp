<%-- 
    Document   : viewresult1
    Created on : 29 Mar, 2021, 10:25:02 AM
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
            table
            {
                  border-collapse: collapse;
                width: 100%;
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


.search1
{
    background-color: lightgreen;
}
 
        </style>
    </head>
    <body>
         <BR>
        <a href="adminmainpage1.jsp">ADMIN MAIN</a>
        <br>
        <br>
         <table>
            <tr id="header">
    <th>Date</th>
    <th>Name</th>
    <th>Address</th>
    <th>PhoneNumber</th>
    <th>Email</th>
    <th>Sample No</th>
    <th>result</th>
    <th>upload</th>
            </tr>
   
<% 
   String email=request.getParameter("useremail");
rs=s.executeQuery("select * from applycovid where email ='"+email+"' and status='approved' ");
		
                while( rs.next())
                {
                    session.setAttribute("uemail",email);
                out.println("<tr> <td height=20>"+rs.getString("Date")+ " </td> <td> " + rs.getString("username")+ "</td> <td>"+rs.getString("Address")+"</td> <td>"+rs.getString("PhoneNumber")+"</td>  <td>"+rs.getString("Email") +"</td><td>"+rs.getString("SampleNo")+"</td><td>"+rs.getString("result")+"</td><td><a href=uploadletter.jsp?name="+rs.getString("username")+ ">Upload Permission Letter</a></td></tr>" );             
                }
%>
            </table>
             <form method="post" action="userpermissionletter.jsp">
             <div class="search1">  
   <div class="search">
            Enter Email :<input type="text" name="useremail" vaue="" class="txtb">
             <input type="submit" value="Search"class="save-btn">  
          
             </div>
             </div>

        </form>
           
    </body>
</html>
<%@include file="footer.jsp" %>
