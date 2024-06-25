<%@page import="com.wipro.model.Route,com.wipro.model.Ship,com.wipro.model.ScheduleAdmin"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>


</head>
<body>

<h1 class="text-center">Schedule</h1>
<div class="mt-3">
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
      <th scope="col">Costperkm</th>
      <th scope="col">TravellingDay</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="item" items="${scheduleAdmins}">
	<tr>
			<%
			%>
			<td>${item.getId()}</td>
			<td>${item.getShip().getShipName()}</td>
			<td>${item.getShip().getSource()}</td>
			<td>${item.getShip().getDestination()}</td>
			<td>${item.getShip().getTravelDuration()}</td>
			<td>${item.getShip().getSeatingCapacity()}</td>
			<td>${item.getShip().getPendingReservationSeats()}</td>
			<td>${item.getShip().getWaitingList()}</td>
			<td>${item.getRoute().getCostperkm()}</td>
			<td>${item.getTravellingday()}</td>
			
			
			
	</tr>
	</c:forEach> 
	
	<tr>
		
			
	</tr>
  </tbody>
</table>

	<div class="container text-center" style="margin-top:30px">
		
		<a href="index.jsp"  class="btn btn-success">Home</a>
	</div>

</div>
 
 

</body>
</html>
