<%-- 
    Document   : ApplyCovidTest1
    Created on : 13 Apr, 2021, 9:45:09 PM
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
        body
        {
            margin: 0;
            padding: 0;
                        background: url(images/bg.png);

        }
        .addtestresult
        {
            width: 330px;
            padding: 8px;
            text-align: center;
            position: absolute;
            top: 43%;
            left: 50%;
            transform: translate(-50%,-50%);
            overflow: hidden;
            margin-top: 40px;
            margin-bottom: 40px;
            background-color: #14B09B;
            }
            .addtestresult h4
            {
            margin-top: 40px;
            font-family: 'Permanent Marker',cursive;
            color: #fff;
            font-size: 30px;
            }
            .addtestresult input
            {
                display: block;
                width: 100%;
                padding: 0 15px;
                height: 20px;
                text-align: center;
                box-sizing: border-box;
                outline: none;
                border: none;
                font-family: 'montserrat',sans-serif;
                }
                .txtb
                {
                    margin: 4px 0;
                    background: rgba(255,255,255,5);
                    border-radius: 6px;
                    
                }
   .save-btn{
   border:0;
  background: none;
  display: block;
  margin: 10px auto;
  text-align: center;
  border: 2px solid #2ecc71;
  padding: 14px;
  outline: none;
  color: white;
  border-radius: 10px;
  transition: 0.25s;
  cursor: pointer;
  font-size: 15px;
}
.cnl-btn{
    
  border:0;
  background: none;
  display: block;
  margin: 10px auto;
  text-align: center;
  border: 2px solid #2ecc71;
  padding: 14px;
  outline: none;
  color: white;
  border-radius: 10px;
  transition: 0.25s;
  cursor: pointer;
  font-size: 15px;
}

.save-btn:hover
{
transform: scale(0.96);    
}
.cnl-btn:hover
{
transform: scale(0.96);    
}
.addtestresult a{
    text-decoration: none;
    color: #fff;
    font-family: 'montserrat',sans-serif;
    font-size: 14px;
    padding: 8px;
    transition: 0.8s;
    display: block;
}
.addtestresult a:hover
{
    background: rgba(0,0,0,.3);
    
}
input [type=text],select
{
    width: 100%;
    padding: 10px 18px;
    margin: 10px 0;
    background: rgba(255,255,255,5);
    border-radius: 6px;
    
}
.addtestresult h1{
    color:white;
}


   </style> 
    </head>
    <body>
        <div class="addtestresult">
            <h1><u>Apply Covid Test</u></h1>
        <form method="post" action="ApplyCovidTest2.jsp">
                  <table>
              <%
String s1=(String)session.getAttribute("s");
 
rs=s.executeQuery("select * from register where Email='"+s1+"'");        

if(rs.next())
       {
   
out.println("<input type='text'  readonly name='Name' placeholder='Name' class='txtb' value='"+rs.getString("username")+"'>");
out.println("<input type='text' readonly  name='Address' placeholder='Address' class='txtb' value='"+rs.getString("Address")+"'>");
out.println("<input type='text' readonly name='Phonenumber' placeholder='Phonenumber' class='txtb' value='"+rs.getString("PhoneNumber")+"'>");
out.println("<input type='text' readonly name='Email' placeholder='Email' class='txtb' value='"+rs.getString("Email")+"'>");
out.println("<input type='text' name='fa' placeholder='Father Name' class='txtb'>");
out.println("<input type='text' name='re' placeholder='enter reason' class='txtb'>");
out.println("<input type='date' name='da' class='txtb'>");
out.println("<select name='choose' class='txtb'><option value='select Option'>SYMPTOMS</option><option value='Cold'>Cold</option><option value='Cough'>Cough</option><option value='fever'>fever</option><option value='body Pain'>Body Pain</option><option value='blood down'>Blood down</option></select>");
out.println("<select name='groups' class='txtb'><option value='select Option'>BLOOD GROUP</option><option value='O+'>O+</option><option value='O-'>O-</option><option value='AB-'>AB-</option><option value='AB+'>AB+</option><option value='B+'>B+</option><option value='B-'>B-</option><option value='A+'>A+</option><option value='A-'>A-</option></select>");
}
   %>
   <input type="submit" value="Apply" class="save-btn">
   <a href="usermainpage1.jsp"><input type="button" value="USER MAIN" class="cnl-btn"></a>
                  </table>
        </form>
        </div>
                  
    </body>
</html>
<%@include file="footer.jsp" %>