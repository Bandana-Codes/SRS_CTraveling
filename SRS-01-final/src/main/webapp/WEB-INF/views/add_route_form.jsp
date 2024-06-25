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
    
    	<h1 class="text-center mb-3">Fill Route Details</h1>
    	<form action="handle-route" method="post">
    	
    		<div class="form-group">
		    <label for="" class="form-label">Source</label>
		    <input type="text" class="form-control" id="source" aria-describedby="emailHelp" name="source">
		   
		  </div>
		  <div class="form-group">
		    <label for="" class="form-label">Destination</label>
		    <input type="text" class="form-control" id="destination" aria-describedby="emailHelp" name="destination"> 
		   
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="" class="form-label">Duration</label>
		    <input  type="text" class="form-control" id="duration"" aria-describedby="emailHelp" name="duration"></input>
		   
		  </div>
		  
		  <div class="form-group">
		    <label for="" class="form-label">Costperkm</label>
		    <input  type="text" class="form-control" id="Costperkm"" aria-describedby="emailHelp" name="Costperkm"></input>
		   
		  </div>
		  
		  <div class="container text-center">
		  	<a href="/display-routes" class="btn btn-danger">Back</a>
		  	
		 	 <button type="submit" class="btn btn-success">Add</button>
		  </div>
    	</form>
    </div>
	
</body>
</html>