<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="./base.jsp" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, intial-scale=1.0">
        <meta name="description" content="CTravelling">

        <title>CTravelling</title>

        
        <style><%@include file="/WEB-INF/views/style.css"%></style>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="ct.js"></script>

        <script>
            $(document).ready(function(){
                $('#icon').click(function(){
                    $('ul').toggleClass('show')
                });
            });
            </script>
</head>


  <body>
        <nav>
            <div class="logo"><img src="<c:url value="/resources/images/logo.png" />" alt="CTravelling"></div>
            <div class="heading"><h1>C TRAVELLING</h1></div>
        

            <ul>
                <li><a href="display-routes">ROUTES</a></li>
                <li><a href="display-schedule">SCHEDULE</a></li>
                <li><a href="display-ship">SHIP DETAILS</a></li>
                <li><a href="display-passenger">PASSENGER DETAILS</a></li>
                
                
            </ul>
            <div class="bg-image"><img alt="ship1" src=<c:url value="/resources/images/ship2.jpg"/> style="width:100%;height:100%"></div>
            <div class="bg-text">
            	
                <h1>Travelling Made Easier And Comfortable</h1>
                <p>Start Your Journey Now</p>
              </div>
            <div id="icon">
                <i class="fas fa-bars"></i>
            </div>
        </nav>
                
        <div class="bg">
			<img alt="ship1" src=<c:url value="/resources/images/ship1.jpg"/> style="width:100%;height:100%">
			
			
        </div>
        
      
        
        
    
        
    <br>
    

    </body>
</html>


