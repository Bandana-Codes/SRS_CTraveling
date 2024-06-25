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
    	<form action="/update-data-schedule" method="post">
    	
    		<input type=" text" value="${scheduleAdmin.id}" name="id"> 
    		
    		<div class="form-group">
		    <label for="" class="form-label">RouteID</label>
		    <select name="route" id="route"">
		    	<option selected >${scheduleAdmin.getRoute().getId()}</option>
			    <c:forEach var="item" items="${routes}">
			    <c:if test="${item.getId()!= scheduleAdmin.getRoute().getId()}">
					  <option value="${item.getId()}">${item.getId()}</option>
			    </c:if>
				 </c:forEach>
			</select>
		   
		  </div>
		  
		    <div class="form-group">
		    <label for="" class="form-label">ShipID</label>
		    <select name="ship" id="ship">
		    <option selected >${scheduleAdmin.getShip().getId()}</option>
		    <c:forEach var="item" items="${ships}">
		     <c:if test="${item.getId()!= scheduleAdmin.getShip().getId()}">
				  <option value="${item.getId()}">${item.getId()}</option>
			  </c:if>
			 </c:forEach>
			</select>
		   
		  </div>
		
		
		  <div class="form-group">
		    <label for="" class="form-label">TravellingDay</label>
		    <input type="text" class="form-control" id="travellingday" aria-describedby="emailHelp" name="travellingday" value="${scheduleAdmin.getTravellingday()}">
		   
		  </div>
    	  
		  <div class="container text-center">
		  	<a href="/display-ship" class="btn btn-danger">Back</a>
		  	
		 	 <button type="submit" class="btn btn-success">Update</button>
		  </div>
    	</form>
    </div>
	
</body>
</html>