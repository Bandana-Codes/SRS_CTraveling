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
    
    	<h1 class="text-center mb-3">Update Route Details</h1>
    	<form action="/update-route-data" method="post">
    	
    		<input type="hidden" value="${route.id}" name="id">
    		<div class="form-group">
		    <label for="" class="form-label">Source</label>
		    <input type="text" class="form-control" id="source" aria-describedby="emailHelp" name="source" value="${route.source}">
		   
		  </div>
		  <div class="form-group">
		    <label for="" class="form-label">Destination</label>
		    <input type="text" class="form-control" id="destination" aria-describedby="emailHelp" name="destination" value="${route.getDestination()}"> 
		   
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="" class="form-label">Duration</label>
		    <input  type="text" class="form-control" id="duration"" aria-describedby="emailHelp" name="duration" value="${route.getDuration() }"></input>
		   
		  </div>
		  
		  <div class="form-group">
		    <label for="" class="form-label">Costperkm</label>
		    <input  type="text" class="form-control" id="Costperkm"" aria-describedby="emailHelp" name="Costperkm" value="${route.getCostperkm()}"></input>
		   
		  </div>
		  
		  <div class="form-group">
		    <label for="" class="form-label">Distance</label>
		    <input  type="text" class="form-control" id="Distance"" aria-describedby="emailHelp" name="Distance" value="${route.getDistance()}"></input>
		   
		  </div>
		  
		  <div class="container text-center">
		  	<a href="/" class="btn btn-danger">Back</a>
		  	
		 	 <button type="submit" class="btn btn-success">Update</button>
		  </div>
    	</form>
    </div>
	
</body>
</html>