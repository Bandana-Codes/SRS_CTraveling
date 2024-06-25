<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, intial-scale=1.0">
        <meta name="description" content="CTravelling">

        <title>CTravelling</title>

        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="ct.js"></script>

        <script type="text/javascript">
            $(document).ready(function(){
                $('#icon').click(function(){
                    $('ul').toggleClass('show')
                });
            });

            
            function printDiv(divName) {
             var printContents = document.getElementById(divName).innerHTML;
             w=window.open();
             w.document.write(printContents);
             w.print();
             w.close();
    }

        </script>

        <style>
            .booknow a{
                margin-top: 550px;
                margin-left: 650px;
            }

            .container{
                height: 500px;
                width: 400px;
                color: white;
                position: fixed;
                background: linear-gradient(to bottom right, #000000 0%, #17a8cc 100%);
                margin-left: 35%;
                border-radius: 5px;
            }
            .container form{
                margin-top: 20px;
                margin-left: 100px;
            }

            .container h2{
                text-align: center;
                margin-top: 100px;
                font-size: 2.2rem;
            }
        </style>
    </head>

    <body>
        <nav>
            <div class="logo"><img src="logo.png" alt="CTravelling"></div>
            <div class="heading"><h1>C TRAVELLING</h1></div>
        

            <ul>
                <li><a href="#">ROUTES</a></li>
                <li><a href="#">SCHEDULE</a></li>
                <li><a href="about.html">ABOUT</a></li>
                <li id="login"><a href="register.html"><img src="login.png"></a></li>
                
            </ul>

            
            <div id="icon">
                <i class="fas fa-bars"></i>
            </div>
        </nav>

        </div>

        <div class="container">

            <div id="print-content">
            
            <h2>Booking Details</h2>
            <form action="#">
                
                    <label for="fname">First name:</label><br>
                    <input type="text" id="fname" name="fname"><br>
                    <label for="lname">Last name:</label><br>
                    <input type="text" id="lname" name="lname"><br>
                    <label for="phone">Mobile no.</label><br>
                    <input type="number" id="phone" name="phone"><br>
                    <label for="email">Email ID</label><br>
                    <input type="email" id="email" name="email"><br>

                    <input type="button" onclick="printDiv('print-content')" value="Print Tickets"/>
                  
            </form>
            </div>
    </div>
        
        <div class="booknow">
            <a href="https://rzp.io/l/ooqHjM7" class="btntwo">BOOK NOW</a>
        </div>

    <br>

    

    </body>
</html>