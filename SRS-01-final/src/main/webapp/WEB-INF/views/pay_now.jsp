<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style><%@include file="/WEB-INF/views/style-user-home.css"%></style>
<style>
@import url('https://fonts.googleapis.com/css2?family=Tapestry&display=swap');
</style>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        

        <script>
            $(document).ready(function(){
                $('#icon').click(function(){
                    $('ul').toggleClass('show')
                });
            });
            </script>
<title>Insert title here</title>

</head>
<body>

<nav>
            <div class="logo"><img src="<c:url value="/resources/images/logo.png" />" alt="CTravelling"></div>
            <div class="heading"><h1>C TRAVELLING</h1></div>
        

            <ul>
            	<li><a href="#">TICKETS</a></li>
                <li><a href="display-routes-for-user">ROUTES</a></li>
                <li><a href="display-schedule-for-user">SCHEDULE</a></li>
                <li><a href="about.jsp">ABOUT</a></li>
                
                <li id="login" ><a href="user_login"><img  src="<c:url value="/resources/images/login.png" />"></a></li>
                
            </ul>
        
    	</nav>
    	<div class="container text-center" style="border-radius:10px;width: 35%;height:60%;display: grid; place-items:center;background-color: #d9e1e8;">
    		<h1 class="" style="margin:5px ;color:black;font-family: 'Tapestry', cursive;">Pay Now</h1>
    		
    		<div class="m-1" > 
    		<h4>
    		Ship Name:
    		</h4>
    		 <span style="font-weight: bold;color: #1b61d1">${ship.getShipName()}</span>
    		</div>
    		
    		<div class="m-1"> 
    		<h4>Source:</h4>
    		<span style="font-weight: bold;color: #1b61d1">${ship.getSource()}</span>
    		</div>
    		
    		
    		<div class="m-1"> 
    		<h4>Destination:</h4>
    		<span style="font-weight: bold;color: #1b61d1">${ship.getDestination()}</span>
    		</div>
    		
    		<div class="m-1">
    		<h4>TravelDuration:</h4> 
    		<span style="font-weight: bold;color:#1b61d1">${ship.getTravelDuration()}</span>
    		</div>
    		
    		
			<a href="https://rzp.io/l/ooqHjM7" class="btn btn-success me-3">Pay Now</a>
			</div>
</body>
</html>