<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CMC</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&family=Roboto:wght@100&display=swap" rel="stylesheet">
    <script type="text/javascript">
    	history.forward();
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#stud").hide();
            $("#stude").on("click",function(){
                $("#stud").show();
                $("#stu").show();
                $("#stui").show();
                $("#stud").show();
                $("#empd").hide();
                $("#emp").hide();
                $("#empi").hide();
                $("#empd").hide();
            });
            $("#empl").on("click",function(){
                $("#empd").show();
                $("#emp").show();
                $("#empi").show();
                $("#empd").show();
                $("#stud").hide();
                $("#stu").hide();
                $("#stui").hide();
                $("#stud").hide();
            });
        });
        </script>
<style>
body{
    font-family: 'Baloo Bhai 2', cursive;

    /* background-image: url('complain2.png'); */
    background-size: cover;
    font-family: "open sans";
    color: rgba(33, 11, 73, 0.938);
}
header::before{
    background: url('CMCLOGIN1.png') no-repeat center center/cover;
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
section{
    font-family: 'Baloo Bhai 2', cursive;

    position: relative;
    height: 100%;
    width: 100%;
    background-size: cover ;
    background-position: center center;
   
}
@media only screen and (min-width:600px){
    .holecontain{
        display: flex;
        /* position: initial; */
        position: absolute;
        margin-left: 372px;
        margin-top: 50px;

    
    }   
}


.form-container{
    font-family: 'Baloo Bhai 2', cursive;

    position: initial;
    margin-top: -35px;
    margin-left: 270px;
    margin-bottom: 50px;
    color: white;
    /* background: linear-gradient(rgba(8, 8, 8, 0.685),rgb(12, 12, 12)); */
    /* background: linear-gradient(rgba(231, 228, 228, 0.685),rgb(199, 186, 186)); */
        background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));

    /* rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74) */
    width: 280px;
    color: white;
    padding: 50px 30px;
    border-radius: 10px;
    box-shadow: 7px 7px 60px #000;

@media only screen and (min-width:600px){
    .form-container{
        position: initial;
        margin-top: 50px;
        margin-bottom: 50px;
        background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));
        width: 280px;
        padding: 50px 30px;
        border-radius: 10px;
        box-shadow: 7px 7px 60px #000;
     


    }    
}
  
    
}
.form-container2{
    font-family: 'Baloo Bhai 2', cursive;

    position: initial;
    margin-top:-35px;
    margin-left: 270px;
    color: white;
    margin-bottom: 50px;
    background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));
    /* background: transparent; */
    width: 280px;
    padding: 50px 30px;
    border-radius: 10px;
    box-shadow: 7px 7px 60px #000;
    
   
    
}
h1{
    font-family: 'Baloo Bhai 2', cursive;

    text-transform: uppercase;
    font-size: 1.5em;
    text-align: center;
    margin-bottom: 1em;

}
h2{
    font-family: 'Baloo Bhai 2', cursive;

    text-transform: uppercase;
    font-size: 1.5em;
    text-align: center;
    margin-bottom: 1em;

}
.control input{
    font-family: 'Baloo Bhai 2', cursive;

    width: 90%;
    display: block;
    padding: 10px;
    color: rgb(32, 26, 26);
    border:none;
    outline: none;
    margin: 1em 0;
    border-radius: 10px;
    margin-right: 30px;


}
.control2 input{
    font-family: 'Baloo Bhai 2', cursive;

    width: 90%;
    display: block;
    padding: 10px;
    color: rgb(32, 26, 26);
    border:none;
    outline: none;
    margin: 1em 0;
    border-radius: 10px;
    margin-right: 30px;
}
.control3 input{
    font-family: 'Baloo Bhai 2', cursive;

    width: 35%;
    height: 45px;
    border-radius: 10px;
    display: block;
    padding: 10px;
    color: rgb(32, 26, 26);
    border:none;
    outline: none;
    margin: 1em 0;
    margin-left: 187px;
    
}
.control3 input[type="submit"]{
    font-family: 'Baloo Bhai 2', cursive;

    background: rgba(11, 235, 247, 0.938);
    color: white;
    text-transform: uppercase;
    font-size: 1.2em;
    opacity: .9;
    transition: opacity .3s ease;

}
.control3 input[type="submit"]:hover{
    font-family: 'Baloo Bhai 2', cursive;

    opacity: 1.1;
}

img{
    font-family: 'Baloo Bhai 2', cursive;

    margin-center: auto;
}
.iqlu{
    font-family: 'Baloo Bhai 2', cursive;
	margin-lest:500px;
    display: flex;
    margin: 2px;
    padding: 3px;
}
</style>

</head>

<body>

<header>
<div style="display:flex; margin-left:45rem;margin-top:8rem; padding: 0px;font-family: 'Baloo Bhai 2', cursive;">
<input type="radio" id="stude" name="choose" value="student">
<label for="html">STUDENT</label>
<input type="radio" id="empl" name="choose" value="employee" style="margin-left:2rem;">
<label for="css">ADMIN</label>
</div>
        <center><div class="holecontain" style="
            width: 50%;">
    <span><center><div class="form-container" id="stud">
    <div class="iqlu">
        <img src="f1.png" width="70px" ></img>
        <h3 id="stu">STUDENT LOGIN</h3>
    </div>
        <div id="student">
        <div class="control">
 <form action="loginstud" method="post" >
            <input type="text" name="ROLL" id="name" placeholder="Enter Your Roll NO" required >
        </div>
        <div class="control2">
            <input type="password" name="pass" id="pass" placeholder="Enter Your Password" required>
        </div>
		<p style="background-color:rgb(252, 0, 0);">${error1}</p>
         <span><input type="checkbox">Remember me</span>
        <div class="control3">
           
            <input type="submit" name="submit" value="LOGIN" style="box-shadow: #000;">
        </form>
        </div>
    </div>
    </div></center></span>
    <span><center><div class="form-container" id="empd">
        <div class="iqlu">
    <img src="f1.png" width="70px"></img>
    <h3 id="emp">ADMIN LOGIN</h3>
</div>
    <div id="employee">
    <div class="control">
    <form action="loginadmin" method="post">
        <input type="text" name="id" id="name" placeholder="Enter Your ID" required>
    </div>
    <div class="control2">
        <input type="password" name="pass" id="pass" placeholder="Enter Your Password" required>
    </div>
    <p style="background-color:rgb(252, 0, 0);">${error2}</p>    
    <span><input type="checkbox">Remember me</span>
    
    <div class="control3">
        <input type="submit" name="submit" value="LOGIN"></form>
    </div>
    </div>
    </div>
    </div>
    </center></span></center>
</div>
</header>
</body>

</html>