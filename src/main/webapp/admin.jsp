<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/style2.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&family=Roboto:wght@100&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#con1").hide();
            $("#con2").hide();
            $("#con3").show();

            // $("#empd").hide();
            $("#S-2").on("click",function(){
                $("#con1").show();
                $("#con2").hide();
                $("#con3").hide();

                // $("#stui").show();
                // $("#stud").show();
                
            });
            $("#S-1").on("click",function(){
            	$("#con1").hide();
                $("#con2").show();
                $("#con3").hide();

                // $("#empi").show();
               
            });
            $("#S-3").on("click",function(){
                $("#con1").hide();
                $("#con2").hide();
                $("#con3").show();
            });
        });
        </script>
    <style>
    
        body{
          font-family: 'Baloo Bhai 2', cursive;
			background-color: #91bfb8;
        }
        #con1{
          font-family: 'Baloo Bhai 2', cursive;

            position: initial;
    margin-top:70px;
    margin-left: 303px;
    color: white;
    margin-bottom: 50px;
    width: 750px;
    height: 400px;
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
    height: 100%;
    z-index: -1;
    opacity: 0.70;
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
    background-color: #f2f2f2;
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

 input[type="submit"]:hover{
    background-color:#d41a0c;
 }
 nav li:hover{
   color: #dac510;
 }
 .NOTI{
        position: initial;
        /* margin-top: 100px; */
        margin-bottom: 50px;
        background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));
        width:100%;
        padding: 30px 150px;
        border-radius: 10px;
        box-shadow: 7px 7px 60px #000;
        height: 150PX;
        position: absolute;
    }
    .control1 input[type="button"]{
        background: darkcyan;
        color: #fff;
        text-transform: uppercase;
        font-size: 1.2em;
        opacity: .7;
        transition: opacity .3s ease;
        cursor: pointer;
        padding: 10px;
       
       
        position: relative;
        bottom: 0.5rem;
        right: 25rem;
        
        
       
    
    }
    .control1 input[type="button"]:hover{
        opacity: 1;
    }
    .control2 input[type="button"]{
        margin-top: 100px;
        background: darkcyan;
        color: #fff;
        text-transform: uppercase;
        font-size: 1.2em;
        opacity: .7;
        transition: opacity .3s ease;
        cursor: pointer;
        /* padding: 10px; */
        /* position:static; */
        bottom: 0.5rem;
        right: 15rem;
    }
    .control2 input[type="button"]:hover{
        opacity: 1;
    }
    section{
        position: relative;
        height: 100%;
        width: 100%;
        
        background-size: cover ;
        background-position: center center;
    }
    </style>
</head>
<body>
	
	
    <header>
        <NAv class="x">
            <UL class="ME">
            <li id="S-1"><a  style=" text-decoration: none; color: darkblue;">COMPLAINTS</a></li>
            <li id="S-2"><a  style=" text-decoration: none;">MY PRIFILE</a></li>
            <!-- <h1 class="S-2">ABOUT ME</h1> -->
            <LI id="S-3"><a  style=" text-decoration: none;">STATUS</a></LI>
            </ul>
        </NAv>
        <!-- <SECtion class="SUB">
            <H1>NOVA FAM</H1>
            <P>Lorem ipsum dolor sit amet consectetur adipisicing elit.</P>
        </SECtion> -->
        </header>
        <div id="con1">
            <label>
                ADMIN:
              </label><P id="sname"></P>
              <label>
               ID:
             </label><P id="post"></P>
             <!-- <label>
               DEPARTMENT:
             </label><P id="dptname"></P> -->
             <label>
               NUMBER:
             </label><P id="buildname"></P>
             <label>
               MAIL_ID:
             </label><P id="fname"></P>
             <!-- <label>
               ROOM NO:
             </label><P id="Rname"></P> -->
            </div>
             
               
            </div>
            <div id="con2">
   
            <form action="">
    <h1 class="main-heading" style="font-size:40px">Complaint Form</h1>
    <hr>
    <center><div class="NOTI">
           
        <div style="font-size: 22px;">
            <p>
            </p>
        </div>
        <div style="margin-top:49px; margin-left:790px;">
       
            
                <input type="button" name="btn" value="add COMMENT" style="width:91px;height:33px;margin-top: 20px;background: darkcyan;
                color: #fff;
                text-transform: uppercase;
                font-size: .7em;
                opacity: .7;
                transition: opacity .3s ease;
                cursor: pointer;">
            <!-- <div class="control2"> -->
                <input type="button" name="btn" value="Resolved" style="width:91px;height:33px;margin-top: 20px;background: darkcyan;
                color: #fff;
                text-transform: uppercase;
                font-size: .7em;
                opacity: .7;
                transition: opacity .3s ease;
                cursor: pointer;">
            <!-- </div> -->
        </div>
        </div>
        
    </center>
       </div>
       <div id="con3"></div>
</body>
</html>