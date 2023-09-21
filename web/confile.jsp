<%-- 
    Document   : confile
    Created on : 9 Mar, 2021, 12:10:56 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %><!--1st step  importing the package-->
<%

Connection c=null;
Statement s=null;
ResultSet rs=null;
try
    {
    Class.forName("com.mysql.jdbc.Driver");//2nd step load and register
    c=DriverManager.getConnection("jdbc:mysql://localhost/covidimigration1?user=root&password=root");//3rd step connection betwwen mysql and java
    s=c.createStatement();//4th step Creating a statement
    }
    catch(Exception e)
    {
      System.out.println(e.getMessage());
                
    }        
        
        
        %>
