<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="org.springframework.http.HttpRequest" %>
   <%@include file="./base.jsp" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, intial-scale=1.0">
        <meta name="description" content="CTravelling">

        <title>CTravelling</title>

        <style><%@include file="/WEB-INF/views/style-user-home.css"%></style>
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
    <%session.setAttribute("us",request.getParameter("t1"));
    String User= ""+session.getAttribute("to");
    %>
        <nav>
            <div class="logo"><img src="<c:url value="/resources/images/logo.png" />" alt="CTravelling"></div>
            <div class="heading"><h1>C TRAVELLING</h1></div>
        

            <ul>
            	<li><a href="Ticket.jsp">TICKETS</a></li>
                <li><a href="display-routes-for-user">ROUTES</a></li>
                <li><a href="display-schedule-for-user">SCHEDULE</a></li>
                <li><a href="about.jsp">ABOUT</a></li>
                <li><a href="index.java">LOGOUT</a></li>
                
                
                
            </ul>
        
    </nav>
    <div class="bg-image">
    <div >
    <h1 style="color: white; font-weight: bold;" class="text-center">Ships</h1>
<div class="container mb-20">
	<table class="table">
  <thead>
    <tr style="color: white; font-weight: bold;">
      <th  scope="col">id</th>
      <th scope="col">ShipName</th>
      <th scope="col">Source</th>
      <th scope="col">Destination</th>
      <th scope="col">TravelDuration</th>
      <th scope="col">SeatingCapacity</th>
      <th scope="col">PendingReservationSeats</th>
      <th scope="col">WaitingList</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="item" items="${ships}">
	<tr class="p-4 bg-light border" >
			
			<td >${item.getId()}</td>
			<td>${item.getShipName()}</td>
			<td>${item.getSource()}</td>
			<td>${item.getDestination()}</td>
			<td>${item.getTravelDuration() }</td>
			<td>${item.getSeatingCapacity()}</td>
			<td>${item.getPendingReservationSeats()}</td>
			<td>${item.getWaitingList()}</td>
			<td>
			<a href="book-ticket/${item.getId()}" class="btn btn-primary" >Book Now</a>
			</td>
			
			
	</tr>
	</c:forEach> 
	
	<tr>
		
			
	</tr>
  </tbody>
</table>

	<div class="container text-center" style="margin-top:30px">
		
		<!-- <a href="user_home"  class="btn btn-success">Home</a> -->
	</div>

</div>
    
    </div>
    </div>

    <br>
    
      
    
    
    
    

    </body>
</html>
		