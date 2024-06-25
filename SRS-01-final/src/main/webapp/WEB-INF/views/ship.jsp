<%@page import="com.wipro.model.Route"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<!-- <style type="text/css">
.table {
    margin: 0 auto;
    width: 80%;
} 
</style> -->
</head>
<body>

<h1 class="text-center">Ship</h1>
<div class="container mt-3">
	<table class="table">
  <thead>
    <tr>
      <th scope="col">id</th>
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
	<tr>
			
			<td>${item.getId()}</td>
			<td>${item.getShipName()}</td>
			<td>${item.getSource()}</td>
			<td>${item.getDestination()}</td>
			<td>${item.getTravelDuration() }</td>
			<td>${item.getSeatingCapacity()}</td>
			<td>${item.getPendingReservationSeats()}</td>
			<td>${item.getWaitingList()}</td>
			<td><a href="delete-ship/${item.getId()}" class="btn btn-danger" >Delete</a>
			<a href="update-ship/${item.getId()}" class="btn btn-primary" >Update</a>
			</td>
			
			
	</tr>
	</c:forEach> 
	
	<tr>
		
			
	</tr>
  </tbody>
</table>

	<div class="container text-center" style="margin-top:30px">
		<a href="add-ship"  class="btn btn-success">Add</a>
		<a href="admin_home"  class="btn btn-success">Home</a>
	</div>

</div>
 
 

</body>
</html>
