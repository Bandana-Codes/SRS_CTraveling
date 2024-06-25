<%@page import="com.wipro.service.RouteService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.wipro.model.Route,com.wipro.model.Ship,com.wipro.model.ScheduleAdmin"%>
    
    <%@include file="./base.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

		<div class="container mt-5">
    
    	<h1 class="text-center mb-3">Fill Schedule Details</h1>
	
    	<form action="handle-schedule" method="post">
    	
    	
    	<div class="form-group">
		    <label for="" class="form-label">RouteID</label>
		    <select name="route" id="route">
		    <c:forEach var="item" items="${routes}">
			  <option value="${item.getId()}">${item.getId()}</option>
			 </c:forEach>
			</select>
		   
		  </div>
		  
		  <div class="form-group">
		    <label for="" class="form-label">ShipID</label>
		    <select name="ship" id="ship">
		    <c:forEach var="item" items="${ships}">
			  <option value="${item.getId()}">${item.getId()}</option>
			 </c:forEach>
			</select>
		   
		  </div>
		  
		  <div class="form-group">
		    <label for="" class="form-label">TravellingDay</label>
		    <input type="text" class="form-control" id="travellingday" aria-describedby="emailHelp" name="travellingday">
		   
		  </div>
    		
		  <div class="container text-center">
		  	<a href="/display-schedule" class="btn btn-danger">Back</a>
		  	
		 	 <button type="submit" class="btn btn-success">Add</button>
		  </div>
    	</form>
    </div>
</body>
</html>