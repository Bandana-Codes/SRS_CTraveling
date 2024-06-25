<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="./base.jsp" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
        *{
            font-family: 'Poppins', sans-serif; 
        }
        
        html, body {
            background-color: black;
            color: white;
            font-family: 'Montserrat', sans-serif;
            background: -webkit-linear-gradient(top, #000000, #262728);
        }

        h1{
            margin-top: 100px;
            text-align: center;
            color: rgb(18, 151, 151);
        }

        .about p {
            text-align: center;
            margin-top: 50px;
            margin-left: 50px;
            margin-right: 50px;
            border-radius: 1.5em;
            padding: 30px;
            box-shadow: 0 4px 8px 0 rgb(190, 230, 230), 0 6px 20px 0 rgb(190, 230, 230);
        
        }

        .about ul{
            border-radius: 1.5em;
            padding: 30px;
            box-shadow: 0 4px 8px 0 rgb(190, 230, 230), 0 6px 20px 0 rgb(190, 230, 230);
            padding: 30px;
            margin: 50px;
            line-height: 30px;
        }

        .about h2 {
            text-align: center;
            color: rgb(18, 151, 151);
            margin-top: 50px;
            margin-left: 50px;
            margin-right: 50px; 
        }

        .disclaimer h2{
            text-align: center;
            color: rgb(18, 151, 151);
            margin-top: 50px;
            margin-left: 50px;
            margin-right: 50px;  
        }

        .disclaimer p{
            text-align: center;
            margin-top: 50px;
            margin-left: 50px;
            margin-right: 50px;
            border-radius: 1.5em;
            padding: 30px;
            box-shadow: 0 4px 8px 0 rgb(190, 230, 230), 0 6px 20px 0 rgb(190, 230, 230);
        }

        .logo img{
    height: 5rem;
    width: 5rem;
    
}

.heading h1{
    float: left;
    color: white;
    font-size: 2.0rem;
    margin-top: -54px;
    margin-left: 80px;
    font-weight: lighter;
    font-family: 'Montserrat', sans-serif;

}


nav{
    height: 10px;
    width: 100%;
    background-color: black;
}

.logo img{
    
    height: 70px;
    padding: 8px 15px;
}

#login img{
    height: 18px;
    width: 18px;
    
}

nav ul{
    float: right;
    margin-right: 40px;
    margin-top: -80px;
}

nav li{
    display: inline-block;
    margin: 0px 15px;
    line-height: 80px;
}

nav a {
    color: white;
    text-decoration: none;
    font-family: 'Montserrat', sans-serif;   
  }
  
nav a {
    background:
      linear-gradient(
        to right,
        rgb(0, 0, 0),
        rgb(0, 0, 0)
      ),
      linear-gradient(
        to right,
        rgba(255, 0, 0, 2),
        rgba(255, 0, 180, 2),
        rgba(0, 100, 200, 2)
    );
    background-size: 100% 3px, 0 3px;
    background-position: 100% 100%, 0 100%;
    background-repeat: no-repeat;
    transition: background-size 400ms;
    
  }  
  
a:hover {
    background-size: 0 3px, 100% 3px;
  }
  
nav #icon{
    color: white;
    font-size: 30px;
    line-height: 80px;
    float: right;
    margin-right: 30px;
    display: none;
}
    </style>
</head>
<body>
    <nav>
        <div class="logo"><img src="<c:url value="/resources/images/logo.png" />" alt="CTravelling"></div>
          <div class="heading"><h1>C TRAVELLING</h1></div>
    

        <ul>
            <li><a href="userroute">ROUTES</a></li>
            <li><a href="userschedule.jsp">SCHEDULE</a></li>
            <li><a href="about.jsp">ABOUT</a></li>
           <li id="login" ><a href="userlogin.jsp"><img  src="<c:url value="/resources/images/login.png" />"></a></li>
            
        </ul>

        <div id="icon">
            <i class="fas fa-bars"></i>
        </div>
    </nav>

    <h1>ABOUT</h1>
    
    <div class="about">
        <p>Your one stop for looking to travel by ship with great comfornt and ammenities .
             We have experience of more than 7+ years of continuing our journey with you.
            We provide services across the globe with hassle free travelling. Start your Journey with us now experience the ride.  </p>
        
        <h2>SERVICES OFFERED BY US</h2>

        <ul>
            <li>Flexible dates for travelling.</li>
            <li>Travel across the globe.</li>
            <li>Complimentary breakfast and drinks.</li>
            <li>All range of room and seats available.</li>
        </ul>
        
        <h2>CANCELLATION POLICY</h2>

        <ul>
            <li>Tickets should be cancelled atleast 4 days before.</li>
            <li>10% amount will be deducted depending on days of cancellation.</li>
            <li>Refund amount will be credited within 24 hours.</li>
        </ul>

    </div>

    <div class="disclaimer">
        <h2>DISCLAIMER</h2>

        <p>Ads shown on this website has no connection with us please click on it on your own risk.
            Tickets booked through any other source apart from our website does not fall under our resposibility.
            We do not promote any kind of illegal activity in our company or ships.
        </p>
    </div>
</body>
</html>