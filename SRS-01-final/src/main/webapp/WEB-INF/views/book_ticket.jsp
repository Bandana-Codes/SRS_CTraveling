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
                <li><a href="#">ABOUT</a></li>
                
                <li id="login" ><a href="user_login"><img  src="<c:url value="/resources/images/login.png" />"></a></li>
                
            </ul>
        
    </nav>
    
    	 <div class="bg-image" style="display: grid; place-items:center;" >
	

	<div class="card " style="width: 35%;display: grid; place-items:center;background-color: #d9e1e8;" >
 		 
  		<div class="card-body" >
  			
  			<h1 class="m-3" style="font-family: 'Tapestry', cursive;">Booking details</h1>
  				
    	
    		
    			
    	<form action="${pageContext.request.contextPath}/payment-done/${ship.getId()}" method="post">
    				
    				<div class="m-3" >
    			<label class="me-4">Ship Name</label>
    			<input type="text" value="${ship.getShipName()}"  name="ShipName" style="border:none;font-weight: bold;background-color: #d9e1e8;">
    			</div>
    			<div class="m-3" >
    			<label class="me-4">Source</label>
    			<input type="text" value="${ship.getSource()}" style="border:none;font-weight: bold;background-color: #d9e1e8;">
    			</div>
    			<div class="m-3" >
    			<label class="me-4">Destination</label>
    			<input type="text" value="${ship.getDestination()}" style="border:none;font-weight: bold;background-color: #d9e1e8;">
    			</div>
    			<div class="m-3" >
    			<label class="me-4">TravelDuration</label>
    			<input type="text" value="${ship.getTravelDuration()} days" style="border:none;font-weight: bold;background-color: #d9e1e8;">
    			</div>	
    			<div class="m-3 " >
    			<label class="me-3 ">Passenger Name</label>
	    		<input class="" type="text" name="PassengerName" placeholder="Enter you name" style="border-radius: 2px;">
    			</div>
					
				<div class="m-3 " >
	    		<label class="me-5 ">Gender</label>
    			<input class="" type="radio"  name="Gender" id="radio1" value="Male">
  				<label class="form-check-label" for="radio1">Male</label>
				
  				<input class="" type="radio"  name="Gender" id="radio2" value="Female">
  				<label class="form-check-label" for="radio2">Female</label>
				</div>	    
				
				<div class="m-3" >
				<label class="me-3 ">Adhaar Number</label>
				<input  type="text"  placeholder="Enter you adhaar number" name="AdhaarNumber" style="border-radius: 2px;">
				</div> 		
				<div class="container text-center">
				
    				<button type="submit" class="btn btn-warning">Book Now</button>
    				
    			 	
				</div>
    		
    		</form>
  		</div>
	</div>
</div> 
    
    
</body>
</html>