<%-- 
    Document   : addtestresult
    Created on : 9 Mar, 2021, 1:03:41 PM
    Author     : Dell
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="confile.jsp" %>
<%@include file="headerfile.jsp" %>
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
            background-image: url("images/dark.jpg");
                   background-repeat: no-repeat;
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
        .addtestresult
        {
            width: 330px;
            padding: 10px;
            text-align: center;
            background: url(images/bg.png);
            position: absolute;
            top: 47.5%;
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
            .addtestresult input
            {
                display: block;
                width: 100%;
                padding: 0 16px;
                height: 25px;
                text-align: center;
                box-sizing: border-box;
                outline: none;
                border: none;
                font-family: 'montserrat',sans-serif;
                }
                .txtb
                {
                    margin: 5px 0;
                    background: rgba(255,255,255,5);
                    border-radius: 6px;
                    
                }
   .save-btn{
 margin-top: 20px;
 margin-bottom: 20px;
 background:#487eb0;
 color:#fff;
 border-radius: 44px;
 cursor: pointer;
 transition: 0.8s;
}
.cnl-btn{
 margin-top: 8px;
 margin-bottom: 10px;
 background:#487eb0;
 color:#fff;
 border-radius: 44px;
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
    background: rgba(0,0,0,.3);
    
}
input [type=text],select
{
    width: 100%;
    padding: 6px 18px;
    margin: 10px 0;
    background: rgba(255,255,255,5);
    border-radius: 6px;
    
}



   </style> 
    </head>
    <body>
         <BR>
         <a href="labmainpage1.jsp">LAB MAIN</a>
        
         <br>
         <br>
        <div class="addtestresult">
            <h4> Add Test Result</h4>
            <form action="addtestresult.jsp" method="post">
                <input type="text" name="text1" placeholder="enter Email" class="txtb">
                <center>
                <input type="submit" value="search" class="save-btn">
            </form>
            <center>
        <form method="get" action="addtestresult1.jsp">
            
         <%
         
String s1=request.getParameter("text1");

rs=s.executeQuery("select * from applycovid where email='"+s1+"'");
session.setAttribute("sa",s1);

if(rs.next())
{
     out.println("<input type='text' value='"+rs.getString("date")+"' class='txtb'>");
     out.println("<input type='text' value='"+rs.getString("username")+"' class='txtb'>");
     out.println("<input type='text' value='"+rs.getString("Address")+"' class='txtb'>");
     out.println("<input type='text' value='"+rs.getString("PhoneNumber")+"' class='txtb'>");
     out.println("<input type='text'  name='sa' value='"+rs.getString("email")+"' class='txtb'>");
     out.println("<input type='text' value='"+rs.getString("sampleno")+"' class='txtb'>");
     
     out.println("<select name='re' class='txtb'><option value='select Option'>RESULT</option><option value='Positive'>+ve</option><option value='Negative'>-ve</option></select>");

}
%>   
        <input type="Submit" value="Submit" class="save-btn"> 
       
            
            <!--
           
            <input type="date" id="start" name="date" placeholder="DATE" class="txtb"
                value="2018-07-22"
                min="2018-01-01" max="2020-12-31">
            <input type="text" name="Name" placeholder="Name" class="txtb">
            <input type="text" name="Address" placeholder="Address" class="txtb">
            <input type="text" name="Phonenumber" placeholder="Phonenumber" class="txtb">
            <input type="text" name="Email" placeholder="Email" class="txtb">
            <input type="text" name="SampleNo" placeholder="SampleNo" class="txtb">
            <div class="lbl">
            <label for="result" id="start" placeholder="result"></label>
                    <select name="result">
            <option value="result">Select result</option>
            <option value="+ve">+ve</option>
            <option value="-ve">-ve</option>
                    </select>
            </div>
         <input type="SUBMIT" name="" value="SAVE" class="save-btn">
         <a href="adminmainpage1.jsp"><input type="button" name="" value="CANCEL" class="cnl-btn"></a>
            -->
                </form>
        </div>
                 
    </body>
</html>
<%@include file="footer.jsp" %>