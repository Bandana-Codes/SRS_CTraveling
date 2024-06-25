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
    
    	<h1 class="text-center mb-3">Fill Ship Details</h1>
    	<form action="handle-ship" method="post">
    	
    	
    	<div class="form-group">
		    <label for="" class="form-label">ShipName</label>
		    <input type="text" class="form-control" id="ShipName" aria-describedby="emailHelp" name="ShipName">
		   
		  </div>
    		<div class="form-group">
		    <label for="" class="form-label">Source</label>
		    <input type="text" class="form-control" id="source" aria-describedby="emailHelp" name="source">
		   
		  </div>
		  <div class="form-group">
		    <label for="" class="form-label">Destination</label>
		    <input type="text" class="form-control" id="destination" aria-describedby="emailHelp" name="destination"> 
		   
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="" class="form-label">TravelDuration</label>
		    <input  type="text" class="form-control" id="TravelDuration"" aria-describedby="emailHelp" name="TravelDuration"></input>
		   
		  </div>
		  
		  <div class="form-group">
		    <label for="" class="form-label">SeatingCapacity</label>
		    <input  type="text" class="form-control" id="SeatingCapacity"" aria-describedby="emailHelp" name="SeatingCapacity"></input>
		   
		  </div>
		  
		   <div class="form-group">
		    <label for="" class="form-label">PendingReservationSeats</label>
		    <input  type="text" class="form-control" id="PendingReservationSeats"" aria-describedby="emailHelp" name="PendingReservationSeats"></input>
		   
		  </div>
		  
		   <div class="form-group">
		    <label for="" class="form-label">WaitingList</label>
		    <input  type="text" class="form-control" id="WaitingList"" aria-describedby="emailHelp" name="WaitingList"></input>
		   
		  </div>
		  
		  <div class="container text-center">
		  	<a href="/display-ship" class="btn btn-danger">Back</a>
		  	
		 	 <button type="submit" class="btn btn-success">Add</button>
		  </div>
    	</form>
    </div>
	
</body>
</html>