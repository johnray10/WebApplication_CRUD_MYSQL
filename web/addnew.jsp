<%-- 
    Document   : addnew
    Created on : Sep 24, 2019, 7:47:32 PM
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
        <title>INSERT</title>
        <br>
    <div class="row">
        <div class="col-md-6">
            <h3>JSP CRUD</h3>
        </div>
    </div>    
    <p><br</p>      
   
    <form action="" method="post">
       
        <div class="form-group">
            <label>Name</label>
            <input type="text" class="form-control" name="nm" placeholder="Name" required/>
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" class="form-control" name="em" placeholder="Email" required/>
        </div>
        <div class="form-group">
            <label>Phone Number</label>
            <input type="number" class="form-control" name="pn" placeholder="Contact" required/>
        </div>
         <div class="form-group">
            <label>Address</label>
            <textarea class="form-control" placeholder="Your Address" name="ad" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">SUBMIT</button>
        <a href="index.jsp" class="btn btn-default">BACK</a>
        
    </form>
</head>
    <jsp:include page="footer.jsp"/>
</html>
<%
  
    String a = request.getParameter("nm");    
    String b = request.getParameter("em");
    String c = request.getParameter("pn");    
    String d = request.getParameter("ad");
    if(a!=null && b!=null && c!=null && d!=null){
    String sql = "INSERT INTO tbdata(name,email,phone,address)VALUES(?,?,?,?)";
    pst=conn.prepareStatement(sql);
    pst.setString(1,a);
    pst.setString(2,b);
    pst.setString(3,c);
    pst.setString(4,d);
    pst.execute();
    response.sendRedirect("index.jsp");
    }
%>