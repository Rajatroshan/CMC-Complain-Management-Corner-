<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style2.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&family=Roboto:wght@100&display=swap" rel="stylesheet">
     <style>
    
        body{
          font-family: 'Baloo Bhai 2', cursive;

        }
        .con{
          font-family: 'Baloo Bhai 2', cursive;

            position: initial;
    margin-top:70px;
    margin-left: 303px;
    color: white;
    margin-bottom: 50px;
    background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));
    width: 750px;
    height: 4000px;
    padding: 25px 30px;
    border-radius: 10px;
    box-shadow: 7px 7px 60px #000;
    font-size: 30px;
        }
    *{
   font-family: 'Baloo Bhai 2', cursive;

    box-sizing:border-box;
    /* padding: 0px;
    margin: 0px; */
}

body{
    /* font-family:Verdana, Geneva, Tahoma, sans-serif; */
    font-family: 'Baloo Bhai 2', cursive;

   
    font-size:17px;
    padding:8px;
}
header::before{
    background: url('BACKG.jpg') no-repeat center center/cover;
    content: "";
    position: absolute;
    top:0px;
    left:0;
    width: 100%;
    height: 750px;
    z-index: -1;
    opacity: 0.50;
    margin-left: 0px;
    margin-top: 0px;
}
.ME{
   display: flex;
  
   top: 0;
   /* color: white; */
   margin: 0px;
   padding: 0px;
}
.x{
   /* background-color: rgb(10, 10, 14); */
   height: 50PX;
   width: 100%;
   cursor: pointer;
   margin-right: 0px;
  
   /* box-shadow: -3px -3px 3px 5px rgb(9, 9, 10), 3px 3px 4px 5px rgb(9, 9, 10) ; */
   /* box-shadow: 3px 3px 3px 5px rgb(53, 47, 47); */
}
LI{
   /* margin: auto; */
   padding: 2PX 20PX; 
    /* padding-top: 15px; */
   list-style: none;
}
.container{
    padding:5px 20px 15px 20px;
    /* border:1px solid lightgray; */
    /* border-radius:4px; */
    /* width: 1350px; */
   /* margin:0px; */
    margin-top: 0px;
    /* height: 90%; */
}
 input[type="text"],
 textarea{
    width:100;
    padding:12px;
    border:1px solid #ccc;
    border-radius:5px;
    margin: 30px;
    height: 225px;
 }
 #sel{
    width: 150px;
    height: 30px;
    padding: 2px;
 }
 .main-heading{
    text-align:center;
 }

 input[type="submit"]{
    background-color:#3e609e;
    color:white;
    padding:17px 20px;
    border:none;
    border-radius:6px;
    cursor:pointer;
 }

 
    </style>
</head>
<body>
    
    <div class="container">
        <header>
            <NAv class="x">
                <UL class="ME">
                <li class="S-2"><a href="next.html" style=" text-decoration: none; color: darkblue;">Home</a></li>
                <li class="S-2"><a href="ame.html" style=" text-decoration: none;">My Profile</a></li>
                <!-- <h1 class="S-2">ABOUT ME</h1> -->
                <LI class="S-3"><a href="complain.html" style=" text-decoration: none;">Complaints</a></LI>
                </ul>
            </NAv>
            <!-- <SECtion class="SUB">
                <H1>NOVA FAM</H1>
                <P>Lorem ipsum dolor sit amet consectetur adipisicing elit.</P>
            </SECtion> -->
            </header>
            
   </div>
</div>
</body>
</html>