<%-- 
    Document   : update
    Created on : Oct 3, 2019, 8:35:22 PM
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
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE</title>
        <br>
    <div class="row">
        <div class="col-md-6">
            <h3>JSP CRUD</h3>
        </div>
    </div>    
    
        <p><br></p>
        
        <form action="" method="post">
            
            <%
            String u = request.getParameter("u");
            int num = Integer.parseInt(u);
            String sql = "SELECT * FROM tbdata WHERE id ='"+num+"'";
            pst=conn.prepareStatement(sql);
            rs=pst.executeQuery();
            while(rs.next()){
                
            %>
            <input type="hidden" name="id" value="<%=rs.getString("id")%>">
            <div class="form-group">
                <label>NAME</label>
                <input type="text" class="form-control" name="nm" value='<%=rs.getString("name")%>' placeholder="Name" required/>
            </div>
            <div class="form-group">
                <label>EMAIL</label>
                <input type="email" class="form-control" name="em" value='<%=rs.getString("email")%>' placeholder="Email" required/>
            </div>
            <div class="form-group">
                <label>PHONE NUMBER</label>
                <input type="number" class="form-control" name="pn" value='<%=rs.getString("phone")%>' placeholder="Name" required/>
            </div>
            <div class="form-group">
                <label>ADDRESS</label>
                <textarea class="form-control" name="ad"><%=rs.getString("address")%></textarea>
            </div>
            <%
            }    
            %>
            
            <button type="submit" class="btn btn-warning">UPDATE</button>
            <a href="index.jsp" class="btn btn-default">BACK</a>
        </form>
    
    
   

    <jsp:include page="footer.jsp"/>
</html>

<%
    String a = request.getParameter("id");
    String b = request.getParameter("nm");    
    String c = request.getParameter("em");
    String d = request.getParameter("pn");    
    String e = request.getParameter("ad");
    if(a!=null && b!=null && c!=null && d!=null && e!=null){
    String sql2 = "UPDATE tbdata SET name=?, email=?, phone=?, address=? WHERE id ='"+a+"'";
    pst=conn.prepareStatement(sql2);
    pst.setString(1,b);
    pst.setString(2,c);
    pst.setString(3,d);
    pst.setString(4,e);
    pst.executeUpdate();
    response.sendRedirect("index.jsp");
    }
%>

