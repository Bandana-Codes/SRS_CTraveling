<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="org.springframework.http.HttpRequest" %>
   <%-- <%@include file="./base.jsp" %> --%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, intial-scale=1.0">
        <meta name="description" content="CTravelling">

        <title>CTravelling</title>

        <style><%@include file="/WEB-INF/views/style.css"%></style>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="ct.js"></script>

        <script>
            $(document).ready(function(){
                $('#icon').click(function(){
                    $('ul').toggleClass('show')
                });
            });
            </script>
    </head>

    <body>
        <nav>
            <div class="logo"><img src="<c:url value="/resources/images/logo.png" />" alt="CTravelling"></div>
            <div class="heading"><h1>C TRAVELLING</h1></div>
        

            <ul>
            	<li><a href="admin">ADMIN</a></li>
                <li><a href="display-routes-for-user">ROUTES</a></li>
                <li><a href="display-schedule-for-user">SCHEDULE</a></li>
                <li><a href="#">ABOUT</a></li>
                <li id="login" ><a href="user_login"><img  src="<c:url value="/resources/images/login.png" />"></a></li>
                
            </ul>
            <div class="bg-image"></div>
            <div class="bg-text">
                <h1>Travelling Made Easier And Comfortable</h1>
                <p>Start Your Journey Now</p>
              </div>
            <div id="icon">
                <i class="fas fa-bars"></i>
            </div>
        </nav>
                
        <div class="bg">

        </div>
        
        <div class="booknow">
            <a href="user_login">BOOK NOW</a>
        </div>

        
        
    
        
    <br>
    

    </body>y
</html>