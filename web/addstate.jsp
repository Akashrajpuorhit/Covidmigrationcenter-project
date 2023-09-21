<%-- 
    Document   : addstate
    Created on : 9 Mar, 2021, 1:01:33 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="confile.jsp"%>
<%@include file="headerfile.jsp" %>
<%
String t1=request.getParameter("Statename");
String t2=request.getParameter("Details");
int a1=0;
session.setAttribute("slvar", "");
rs=s.executeQuery("select * from StateTab where Statename='"+t1+"'");
if(rs.next())
       {
    session.setAttribute("slvar","This record is all ready present please check");
    a1=1;
   }
if(a1!=1)
       {
    if(t1!=null && t1!="")
               {
        s.executeUpdate("insert into StateTab values('"+t1+"','"+t2+"')");
        session.setAttribute("slvar", "Record Saved Succesfully");
    }
    else
               {
        session.setAttribute("slvar", "Please Enter all the fields");
    }
}


%>
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

    background-image: url("images/state.jpg");
            background-repeat: no-repeat;  
                box-sizing: border-box;
                font-family: sans-serif;
                height:-300px;
}

.box{
  width: 300px;
  padding: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: url(images/bg.png);
  text-align: center;
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
  color: white;
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
.box input[type ="reset"]
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
  background: #2ecc71;
}
.box input[type="reset"]:hover
{
    background: #2ecc71;
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
        <BR>
        <a href="adminmainpage1.jsp">ADMIN MAIN</a>
        <form class="box" action="addstate.jsp" method="post">
            <h1>ADD STATE FORM</h1>
            <input type="text" name="Statename" placeholder="StateName">
            <input type="text" name="Details" placeholder="Details"><br>
              <input type="submit" value="SAVE">
       <input type="reset" value="RESET"></a></td>
        <h3> <%= session.getAttribute("slvar")%></h3>
             </form>
    </body>
</html>
<%@include file="footer.jsp" %>