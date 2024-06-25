<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include  file="./base.jsp" %>
</head>
<body>
	<div class="container mt-5">
    
    	<h1 class="text-center mb-3">Update Ship Details</h1>
    	<form action="/handle-ship" method="post">
    	
    		<input type="text" value="${ship.id}" name="id"> 
    		<div class="form-group">
		    <label for="" class="form-label">ShipName</label>
		    <input type="text" class="form-control" id="ShipName" aria-describedby="emailHelp" name="ShipName" value="${ship.getShipName()}">
		   
		  </div> 
    		<div class="form-group">
		    <label for="" class="form-label">Source</label>
		    <input type="text" class="form-control" id="Source" aria-describedby="emailHelp" name="Source" value="${ship.getSource()}">
		   
		  </div>
		  <div class="form-group">
		    <label for="" class="form-label">Destination</label>
		    <input type="text" class="form-control" id="Destination" aria-describedby="emailHelp" name="Destination" value="${ship.getDestination()}"> 
		   
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="" class="form-label">Duration</label>
		    <input  type="text" class="form-control" id="TravelDuration" aria-describedby="emailHelp" name="TravelDuration" value="${ship.getTravelDuration() }"></input>
		   
		  </div>
		  <div class="form-group">
		    <label for="" class="form-label">SeatingCapacity</label>
		    <input  type="text" class="form-control" id="SeatingCapacity" aria-describedby="emailHelp" name="SeatingCapacity" value="${ship.getSeatingCapacity()}"></input>
		   
		  </div>
		  
		  <div class="form-group">
		    <label for="" class="form-label">PendingReservationSeats</label>
		    <input  type="text" class="form-control" id="PendingReservationSeats" aria-describedby="emailHelp" name="PendingReservationSeats" value="${ship.getPendingReservationSeats()}"></input>
		   
		  </div>
		  <div class="form-group">
		    <label for="" class="form-label">WaitingList</label>
		    <input  type="text" class="form-control" id="WaitingList" aria-describedby="emailHelp" name="WaitingList" value="${ship.getWaitingList()}"></input>
		   
		  </div>
		  
		  <div class="container text-center">
		  	<a href="/display-ship" class="btn btn-danger">Back</a>
		  	
		 	 <button type="submit" class="btn btn-success">Update</button>
		  </div>
    	</form>
    </div>
	
</body>
</html>