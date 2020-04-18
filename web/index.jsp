<%-- 
    Document   : index
    Created on : Sep 24, 2019, 5:48:29 PM
    Author     : JayJomJohn
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="connect.jsp"%>
    <jsp:include page="header.jsp"/>      
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="image/ADTR-2010.jpg">    
        <title>Home</title>
    <br>
    <div class="row">
        <div class="col-md-6">
            <h3>JSP CRUD</h3>
        </div>
        <div class="col-md-6 text-right">
             <a href="addnew.jsp" class="btn btn-primary">ADD NEW DATA</a> 
        </div>
              
    </div>    
    <p></p>
    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
                <th class="text-center">Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                               
               String sql = "SELECT * FROM tbdata ORDER BY id DESC";
               pst=conn.prepareStatement(sql);
               rs=pst.executeQuery();
               while(rs.next()){
                             
            %>
            <tr>
                <td><%=rs.getString("id")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("phone")%></td>
                <td><%=rs.getString("address")%></td>
                <td class="text-center">
                   
                    <a href='update.jsp?u=<%=rs.getString("id")%>' class="btn btn-warning">EDIT</a>
                    <a href='delete.jsp?d=<%=rs.getString("id")%>' class="btn btn-danger">DELETE</a>
                    
                </td>
            </tr>
            <%
             }
            %>
        </tbody>
    </table>
   
    </head>
   <jsp:include page="footer.jsp"/>     
</html>
