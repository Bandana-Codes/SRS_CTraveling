<%@page import="com.wipro.model.Route,com.wipro.model.Ship,com.wipro.model.ScheduleAdmin"%>
<%@page import="com.wipro.model.ScheduleAdmin" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
List<ScheduleAdmin> list=(List<ScheduleAdmin>)request.getAttribute("scheduleAdmins");
for (ScheduleAdmin sa : list)
{
%>
<%= sa.getShip().getShipName()%>
<%= sa.getShip().getSource()%>
<%= sa.getShip().getDestination()%>
<%= sa.getShip().getTravelDuration()%>
<%= sa.getShip().getSeatingCapacity()%>
<%= sa.getShip().getPendingReservationSeats()%>
<%= sa.getShip().getWaitingList()%>
<%= sa.getRoute().getCostperkm()%>



<% }%>

</body>
</html>