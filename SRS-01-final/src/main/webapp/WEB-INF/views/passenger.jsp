<%@page import="com.wipro.model.Route"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<style type="text/css">
.table {
    margin: 0 auto;
    width: 80%;
} 
</style>
</head>
<body>

<h1 class="text-center">Passenger Details</h1>
<div class="container mt-3">
	<table class="table">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">PassengerName</th>
      <th scope="col">Gender</th>
      <th scope="col">SeatNumber</th>
      <th scope="col">ShipName</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="item" items="${passengers}">
	<tr>
			
			<td>${item.getId()}</td>
			<td>${item.getPassengername()}</td>
			<td>${item.getDestination()}</td>
			<td>${item.getDuration() }</td>
			<td>${item.getCostperkm()}</td>
			
			
			
			
	</tr>
	</c:forEach> 
	
	<tr>
		
			
	</tr>
  </tbody>
</table>

	<div class="container text-center " style="margin-top:30px">
		
		<a href="index.jsp"  class="btn btn-success">Home</a>
	</div>

</div>
 
 

</body>
</html>
