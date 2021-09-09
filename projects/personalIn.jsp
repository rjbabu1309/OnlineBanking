<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta charset="utf-8">
        <title>Stick</title>
        <link href="https://fonts.googleapis.com/css?family=Merienda+One" rel="stylesheet">
        <link href="index.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css">
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
        <script src="main.js" type="text/javascript">
        </script>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script async defer
    src="https://maps.googleapis.com/maps/api/js?&callback=initMap">
    </script>
    <style>
        body{
            background-color: antiquewhite;
            width: 100%;
            height: 100%;
        }
        .main{
            width: 80%;
            height: 80%;
            background-color: darkcyan;
            position: absolute;
            left: 50%;
            top: 70%;
            transform: translate(-50%,-50%);
            border-radius: 20px;
        }
        .con{
            width: 100%;
            height: 20%;
            border-bottom: 2px solid red;
            text-align: center;
            line-height: 80px;
        }
        .comm{
            border-radius: 6px;
            width: 15%;
            height: 20%;
            background-color: aqua;
            display: inline-table;
            text-align: center;
        }
        .contener{
            position: absolute;
            left: 25%;
            top: 50%;
            transform: translate(-25%,-50%);
            
        }
        .comm a{
            text-decoration: none;
            font-size: 18px;
        }
    </style>
</head>
<body>
<div class="wrapper">
           
            <nav>
                <div class="logo"><a href="index.html"><span>Y</span>ours <span>B</span>ank<br><p style="line-height: 0px;font-size: 14px;float: right">With you Always</p></a></div>
                <ul>
                    <li><a href="#fi">Services</a></li>
                    <li><a href="#" target="">products</a></li>
                    <li><a href="#">About us</a></li>
                    <li><a href="#footer"> Contect</a></li>
                    <li><a class="active" href="http://localhost:8080/projects/login.jsp">Log OUT</a></li>
                </ul>
            </nav>
        </div>


    <div class="main">
        <div class="con">
            <h1>Personal Banking Services</h1>
        </div>
        <div class="contener">
            <div id="FT" class="comm"><h2><a href="#">Fund Transfer</a></h2></div>
            <div id="OAC" class="comm"><h2><a href="#">Open Account</a></h2></div>
            <div id="CB" class="comm"><h2><a href="http://localhost:8080/projects/session.jsp">Check Balence</a></h2></div>
            <div id="MS" class="comm"><h2><a href="#">Mini Statement</a></h2></div>
            <div id="LOAN" class="comm"><h2><a href="http://localhost:8080/projects/Loan.html">Loan Details</a></h2></div>
            <div id="Con" class="comm"><h2><a href="http://localhost:8080/projects/index.html#foot">Contact &nbsp US</a></h2></div>
        </div>
    </div>
</body>
</html>