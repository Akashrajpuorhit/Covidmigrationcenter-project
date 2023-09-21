

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerfile.jsp" %>
<%@include file="confile.jsp" %>



<%
/*String s1=request.getParameter("Username");
String s2=request.getParameter("Address");
String t1=request.getParameter("state");
String p1=request.getParameter("city");
String s5=request.getParameter("tostate");
String s6=request.getParameter("tocity");
String s7=request.getParameter("cts");
String s8=request.getParameter("result");
if(s1!=null&&s1!="")
       {
    s.executeUpdate("insert into askpermission value('"+s1+"','"+s2+"','"+t1+"','"+p1+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
        response.sendRedirect("main.jsp");    
       }*/
%>





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
            background: #487eb0;
             background-image: url("images/black.jpg");
                   background-repeat: no-repeat;
                   background-size: cover;
        }
        .addtestresult
        {
            width: 330px;
            padding: 8px;
            text-align: center;
            background-image: url("images/dark.jpg");
                   background-repeat: no-repeat;
                   background-size: cover;
            position: absolute;
            top: 46%;
            left: 50%;
            transform: translate(-50%,-50%);
            overflow: hidden;
            margin-top: 40px;
            margin-bottom: 40px;
            }
            .addtestresult h4
            {
            margin-top: 40px;
            font-family: 'Permanent Marker',cursive;
            color: #fff;
            font-size: 30px;
            }
            .addtestresult h1
            {
                color:white;
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
                    margin: 8px 0;
                    background: rgba(255,255,255,5);
                    border-radius: 6px;
                    
                }
   .save-btn{

  background: black;
 
  margin: 10px auto;
  text-align: center;
  outline: none;
  color: white;
  border-radius: 10px;
 
  cursor: pointer;
  font-size: 15px;
  font-weight: bolder;
  width:200px;
 padding: 200px;
 height:200px;
}
input[type=submit]{
    border-radius: 10px;
 text-align: center;
  cursor: pointer;
  font-size: 15px;
  font-weight: bolder;
  width:200px;
 padding: 20px;
 height:20px;
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
    background: red;
    
}
input [type=text],select
{
    width: 100%;
    
    margin: 10px 0;
    background: rgba(255,255,255,5);
    border-radius: 6px;
    
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
   <script>
       function fun1()
       {
           var x = document.forms["form1"]["fstate"].value;
           alert("state selected " + x);
           document.forms[0].action="AskPermissionA.jsp";
           document.forms[0].method = "post";
           document.forms[0].submit();
       }
   </script>
    </head>
    <body>
        <BR>
         <a href="usermainpage1.jsp">USER MAIN</a>
         <BR>
        <div class="addtestresult">
            <h1><u>Ask Permission To Travel</u></h1>
            <form name ="form1" method="post" action="AskPermission1.jsp">
                <table>
                    <%
                   String s1=(String)session.getAttribute("s");
rs=s.executeQuery("select * from applycovid where Email='"+s1+"'");
if(rs.next())
{
out.println("<input type='text'  readonly name='Name' placeholder='Name' class='txtb' value='"+rs.getString("username")+"'>");
out.println("<input type='text' readonly  name='Address' placeholder='Address' class='txtb' value='"+rs.getString("Address")+"'>");
out.println("<input type='text' readonly name='Phonenumber' placeholder='Phonenumber' class='txtb' value='"+rs.getString("PhoneNumber")+"'>");
out.println("<input type='text' readonly name='Email' placeholder='Email' class='txtb' value='"+rs.getString("Email")+"'>");
out.println("<input type='text' readonly name='sn'  class='txtb' value='"+rs.getString("sampleno") +"'>");
out.println("<input type='text' readonly name='re'  class='txtb' value='"+rs.getString("result") +"'>");

rs= s.executeQuery("select * from stateTab order by statename");
                
                out.println("<select name=fstate onchange=fun1() class='txtb' sixe=1>");
                out.println("<option>Select From State</option>");
               while(rs.next())
                    {
                    out.println("<option>" + rs.getString("statename")+"</option>");
                    }
                out.println("</select>");
  rs= s.executeQuery("select * from CityTab  order by cityname");
                
                out.println("<select name=fcity  class='txtb' sixe=1>");
                out.println("<option>Select From city</option>");
               while(rs.next())
                    {
                    out.println("<option>" + rs.getString("cityname")+"</option>");
                    }
                out.println("</select>");
 rs= s.executeQuery("select * from stateTab order by statename");
                
                out.println("<select name=tstate class='txtb' sixe=1>");
                out.println("<option>Select To State</option>");
               while(rs.next())
                    {
                    out.println("<option>" + rs.getString("statename")+"</option>");
                    }
                out.println("</select>");
  rs= s.executeQuery("select * from CityTab  order by cityname");
                
                out.println("<select name=tcity  class='txtb' sixe=1>");
                out.println("<option>Select To city</option>");
               while(rs.next())
                    {
                    out.println("<option>" + rs.getString("cityname")+"</option>");
                    }
                out.println("</select>");
}                     
                    
                    
                    %>
                    <input type="submit" value="Apply for permission" class="save-btn">
                   
                <a href="usermainpage1.jsp">USER MAIN</a>
                </table>
            </form>
        </div>
    </body>
</html>

<%@include file="footer.jsp" %>
