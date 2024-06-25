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
   
	    
	    
	
	    <div class="wrapper">
	         <div class="title-text">
	            <div class="title login">
		               Login Form
		                
			<c:if var="item" test="${fail}">
					<h1>${item}</h1>
			</c:if>       
		           
	            </div>
	            
         </div>
         <div class="form-container">
            <div class="slide-controls">
               <input type="radio" name="slide" id="login" checked>
               
               <label for="login" class="slide login">Login</label>
               
               <div class="slider-tab"></div>
            </div>
            <div class="form-inner">
               <form action="admin_login" class="login" method="post">
                  <div class="field">
                     <input type="text" placeholder="Email Address" name="mail" required>
                  </div>
                  <div class="field">
                     <input type="password" placeholder="Password" name="password" required>
                  </div>
                  <div class="pass-link">
                     <a href="adminforgetpwd.jsp">Forgot password?</a>
                  </div>
                  <div class="field btn">
                     <div class="btn-layer"></div>
                     <a href="login"><input type="submit" value="Login" onclick="register.jsp"></a>
                     <input type="submit" value="Login" >
                  </div>
                  
               </form>
               
            </div>
         </div>
      </div>
     <script>
         const loginText = document.querySelector(".title-text .login");
         const loginForm = document.querySelector("form.login");
         const loginBtn = document.querySelector("label.login");
         /* const signupBtn = document.querySelector("label.signup"); */
         /* const signupLink = document.querySelector("form .signup-link a"); */
         /* signupBtn.onclick = (()=>{
           loginForm.style.marginLeft = "-50%";
           loginText.style.marginLeft = "-50%";
         }); */
         loginBtn.onclick = (()=>{
           loginForm.style.marginLeft = "0%";
           loginText.style.marginLeft = "0%";
         });
         /* signupLink.onclick = (()=>{
           signupBtn.click();
           return false;
         }); */
      </script>
   </body>


	 
</body>
</html>