import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import java.sql.*;
<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
  
    java.util.Random r=new java.util.Random();
    int n=r.nextInt(9999);
    
    String jdbcUrl = "jdbc:mysql://localhost:3306/ship";
    String username = "root";
    String password = "1234";
    String sql = "update user set otp='"+n+"' where emailID='"+request.getParameter("t1")+"'";
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ship", "root", "1234"); 
    Statement stmt = conn.createStatement();
      
      stmt.executeUpdate(sql);
    out.print(sql);
    session.setAttribute("to",request.getParameter("t1"));
    session.setAttribute("msg","OTP is :"+n);
    session.setAttribute("subject", "OTP");
    session.setAttribute("returnpage","userpwdotp.jsp");
    response.sendRedirect("usersentmail.jsp");
    
%>  