<%-- 
    Document   : delete
    Created on : Oct 3, 2019, 9:38:57 PM
    Author     : JayJomJohn
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

    <%@include file="connect.jsp"%>
<%
    
    String id = request.getParameter("d");
    int no = Integer.parseInt(id);
    String sql3 = "DELETE FROM tbdata WHERE id='"+no+"'";
    pst=conn.prepareStatement(sql3);
    pst.executeUpdate();
    response.sendRedirect("index.jsp");
%>
    
    
    
   

   


