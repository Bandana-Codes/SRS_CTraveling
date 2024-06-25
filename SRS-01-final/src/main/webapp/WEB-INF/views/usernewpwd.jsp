<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="org.springframework.http.HttpRequest" %>
   <%-- <%@include file="./base.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
      <title>Login and Registration</title>
      <style><%@include file="/WEB-INF/views/signup.css"%></style>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>


   <body>
   <%-- <img alt="hello" src="<c:url value="/resources/images/login.png" />"> --%>
   
	<c:if test="${fail == 1}">
		<h1>Hello</h1>
	</c:if>
	
	      <div class="wrapper">
	         <div class="title-text">
	            <div class="title login">
	               Login Form
	               
	               
	            </div>
	            
         </div>
         <div class="form-container">
            <div class="slide-controls">
               
               
               <label for="login" class="slide login">Forget password</label>
               
               <div class="slider-tab"></div>
            </div>
            <div class="form-inner">
               <form action="userupdatepwd.jsp" class="login" method="post">
                  <div class="field">
                
                     <input type="text" id="t1" placeholder="Enter new password" name="t1" required>
                  </div>
                  
                  <div class="field btn">
                     <div class="btn-layer"></div>
                    
                     <input type="submit" value="Submit" >
                  </div>
                  
               </form>
               
            </div>
         </div>
      </div>

   </body>

 

</html>