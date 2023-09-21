<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerfile.jsp" %>
<%@include file="confile.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">      
            
                <style>
                    
            *
            {
                padding: 0;
                margin: 0;
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
                color: #fff;
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
            h2{
                color:white;
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
            input[type=text],input[type=file]{
                font-size:15px;
                padding:15px;
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
         <BR>
            <br><br>
            
        <center>
            <h2>Upload File</h2>
            <br><br>
                    <!--<p>Please fill in this form to create an account.</p>-->
                    <form method="post" action="FileUpload" enctype="multipart/form-data">
                        <center><table>
                                <tr>
                                    <th style="color: #080808"><label style="color: #1BBD36; font-size: 15px">File Name :</label></th>
                                    <th style="color: #080808"><input style="width: 300px" type="text" id="fname" required="" name="fname" placeholder=""></th>
                                </tr>
                                
                                <tr>
                                    <th style="color: #080808"><label style="color: #1BBD36; font-size: 15px">Select Data:&nbsp;&nbsp;&nbsp;&nbsp;</label></th>
                                    <th style="color: #080808"><input style="width: 300px" type="file" id="fname" name="file" placeholder=""></th>
                                </tr>
                                <tr>
                                    <th style="color: #080808"></th>
                                    <th style="color: #080808"><input type="submit" value="Upload"></th>
                                </tr>

                            </table>
                        </center><br>
                    </form>
        </center>


    </body>
</html>