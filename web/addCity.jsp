<%-- 
    Document   : addCity
    Created on : 10 Mar, 2021, 3:21:33 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerfile.jsp" %>
<%@ include file="confile.jsp"%>
<%
String p1=request.getParameter("Cityname");
String p2=request.getParameter("Details");
String p3=request.getParameter("Statename");
int a1=0;
session.setAttribute("slvar", "");
rs=s.executeQuery("select * from CityTab where Cityname='"+p1+"'");
if(rs.next())
       {
    session.setAttribute("slvar","This record is all ready present please check");
    a1=1;
   }
if(a1!=1)
       {
    if(p1!=null && p1!="")
               {
        s.executeUpdate("insert into CityTab values('"+p1+"','"+p2+"','"+p3+"')");
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
  background-image:url("images/state.jpg");
}
.box{
  width: 300px;
  padding: 30px;
  position: absolute;
  top: 53%;
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
select{
   border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 14px 10px;
  width: 200px;
  outline: none;
  color:darkcyan;
  border-radius: 24px;
  transition: 0.25s;
  
}
placeholder{
     border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 14px 10px;
  width: 200px;
  outline: none;
  color:darkcyan;
  border-radius: 24px;
  transition: 0.25s;
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
        <form class="box" action="addCity.jsp" method="post">
            <h1>ADD CITY FORM</h1>
            <%

rs= s.executeQuery("select * from stateTab order by statename");
                
                out.println("<select name=Statename placeholder=Statename sixe=1>");
                out.println("<option>Select From State</option>");
               while(rs.next())
                    {
                    out.println("<option>" + rs.getString("statename")+"</option>");
                    }
                out.println("</select>");            
            %>
            <input type="text" name="Cityname" placeholder="CityName">
            <input type="text" name="Details" placeholder="Details"><br>
              <input type="submit" value="SAVE">
    <input type="reset" value="RESET">
        <h3> <%= session.getAttribute("slvar")%></h3>
             </form>
    </body>
</html>
<%@include file="footer.jsp" %>
