<%-- 
    Document   : connect
    Created on : Sep 24, 2019, 5:25:09 PM
    Author     : JayJomJohn
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<% 
      Connection conn = null;
      ResultSet rs = null;
      PreparedStatement pst = null;  
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");

%>
