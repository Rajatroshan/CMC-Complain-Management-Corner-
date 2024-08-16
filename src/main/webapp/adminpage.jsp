<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.IOException,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.SQLException,java.sql.Statement"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/style2.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    
   <script type="text/javascript">
    	history.forward();
    </script> 
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&family=Roboto:wght@100&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>

        $(document).ready(function(){
            $("#con1").hide();
            $("#con2").hide();
            $("#con3").show();
            $("#con4").hide();

            // $("#empd").hide();
            $("#S-2").on("click",function(){
                $("#con1").show();
                $("#con2").hide();
                $("#con3").hide();
                $("#con4").hide();
                // $("#stui").show();
                // $("#stud").show();
                
            });
            $("#S-1").on("click",function(){
            	$("#con1").hide();
                $("#con2").show();
                $("#con3").hide();
                $("#con4").hide();

                // $("#empi").show();
               
            });
            $("#S-3").on("click",function(){
                $("#con1").hide();
                $("#con2").hide();
                $("#con3").show();
                $("#con4").hide();
           });
            $("#S-4").on("click",function(){
                $("#con1").hide();
                $("#con2").hide();
                $("#con3").hide();
                $("#con4").show();
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
          position: absolute;
    margin-top: 50px;
    margin-bottom: 50px;
    margin-left: 340px;
    background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));
    width: 600px;
    padding: 50px 30px;
    border-radius: 10px;
    box-shadow: 7px 7px 60px #000;
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
	 background-image: url("BACKG2.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
   top:0px;
    left:0;
    background-size: 100% 100%;
    color:white;
    width: 100%;
    height:100%;
    font-size:17px;
    padding:8px;
    margin-left: 0px;
    margin-top: 0px;
}
.nav-bar__link:hover {
  background-color: rgba(255, 255, 255, 0.2);
}
.nav-bar__link {
  border-radius: 2rem;
  padding: 0.5rem 1.25rem;
  background-color: transporent;
  margin: 0 1rem;
  text-decoration: none;
  color: white;
  transition: box-shadow 0.3s ease-in;
}

nav li:hover {
  box-shadow: 0 4px #eee;
}

header::before{
  
    content: "";
    /*position:absolute;
  background: url('BACKG.jpg') no-repeat center center/cover;
    top:0px;
    left:0;
    width: 100%;
    height: 780px;
    z-index: -1;
    margin-left: 0px;
    margin-top: 0px;*/
    opacity: 0.50;
    
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
  .NOTI{
        /* position: static; */
        /* margin-top: 100px; */
        margin-bottom: 50px;
        /*background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));*/
        width:100%;
        padding: 30px 150px;
        border-radius: 10px;
        box-shadow: 7px 7px 60px #000;
        height: 150PX;
        /* position: absolute; */
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
    #ps{
    font-size: 22px;
    }
    section{
        position: relative;
        height: 100%;
        width: 100%;
        
        background-size: cover ;
        background-position: center center;
    }
    #btnb{
    	position:fixed;
        width:800px;
        height:15px;
        margin-top: -20px;
        background-color:blue;                
        color: #fff;
        text-transform: uppercase;
        font-size: .6em;
        opacity: .7;
        transition: opacity .3s ease;
        cursor: pointer;

    }
     #btnb2{
        width:200px;
        height:25px;
        margin-top: -20px;
        background-color:blue;                
        color: #fff;
        text-transform: uppercase;
        font-size: .6em;
        opacity: .7;
        transition: opacity .3s ease;
        cursor: pointer;

    }
     #btnb3{
        width:100px;
        height:25px;
        margin-top: -20px;
        background-color:blue;                
        color: #fff;
        text-transform: uppercase;
        font-size: .6em;
        opacity: .7;
        transition: opacity .3s ease;
        cursor: pointer;

    }
    #bdiv{
    margin-top:-100px; 
    margin-left:1000px;
    position:flex;
    }
    </style>
</head>
<body>
	
	
    <header>
        <NAv class="x">
            <UL class="ME">
            <li class="nav-bar__link" id="S-1"><a  style=" text-decoration: none; color: white;">COMPLAINTS</a></li>
            <LI class="nav-bar__link" id="S-4"><a  style=" text-decoration: none;">ADD COMMENT</a></LI>
            <li class="nav-bar__link" id="S-2"><a  style=" text-decoration: none;">CHANGE PASSWORD</a></li>
            <!-- <h1 class="S-2">ABOUT ME</h1> -->
            <LI class="nav-bar__link" id="S-3"><a  style=" text-decoration: none;">STATUS</a></LI>
            <LI  id="S" style="margin-left:450px;"><a  style=" text-decoration: none;"><form action="login.jsp" >
            <button class="open-button" style="background-color:red;height:30px; border-radius:10px; width:100px;">LOG OUT</button>
            </div>
            </ul>
        </NAv>
        <!-- <SECtion class="SUB">
            <H1>NOVA FAM</H1>
            <P>Lorem ipsum dolor sit amet consectetur adipisicing elit.</P>
        </SECtion> -->
        </header>
        <div id="con1">
            <h1 style="margin-left:105px"> CHANGE PASSWORD</h1>
            <br>
            <form action="ureset" method="post">
            <table style="font-size: 22px; margin-left:35px; margin-top:-40px">        
    
                <tr>
                    <td>
                        <div class="control2" style="display:flex">
                            <label for="name" style="margin-top:10px; width: 100px; ">OPassword:</label>
                        </div>
                    </td>
                    <td >
                        <div class="control2" style="display:flex;">
                            <input type="text" name="op" id="name" style=" width: 300px; height: 20px;" placeholder="Enter old password">
                        </div>
                    </td>
                    
                    
                </tr>
                <tr>
                    <td >
                        <div class="control2" style="display:flex">
                            <label for="name"style="margin-top:10px; width:100px">NPassword:</label>
                        </div>
                    </td>
                    <td >
                        <div class="control2" style="display:flex">
                            <input type="text" name="np" id="name"  style=" width: 300px; height: 20px;" placeholder="Enter new password ">
                        </div>
                    </td>
                    
                </tr>
                
                <tr>
                    <td >
                        <div class="control2" style="display:flex">
                            <label for="name"style="margin-top:10px; width:100px">Password:</label>
                        </div>
                    </td>
                    <td >
                        <div class="control2" style="display:flex">
                            <input type="text" name="anp" id="name"  style=" width: 300px; height: 20px;" placeholder="Enter new password again ">
                        </div>
                    </td>
                    
                </tr>
                
                </table>
                 <p style="background-color:rgb(252, 0, 0);">${error4}</p>    
                
                <input type="hidden" name="sid" value=${id}>
                <input type="submit" name="submit" value="Reset" style="width: 120px; height:50px;  border-radius: 10px;margin-left: 400px; color: black; background-color: rgb(18, 152, 175);border-color: rgb(18, 152, 175)">
                </form>
            </div>
            <div id="con2">
   
            <form action="">
    <h1 class="main-heading" style="font-size:30px">Complaints</h1>
    <hr>
    <center>
    <%String url1="jdbc:mysql://localhost/cmc";
       String uname1="root";
       String pass1="subha@ganu";  
		        	try {
		        		//<input type=\""+"hidden"+"\" name=\""+"id"+"\" value=\""+"b"+"\"><input type=\""+"hidden"+"\" name=\""+"val"+"\" value=\""+"Resolved"+"\">
        		Class.forName("com.mysql.cj.jdbc.Driver");
            	Connection con = DriverManager.getConnection(url1,uname1,pass1);
        	    Statement st=con.createStatement();
        	    String abc=session.getAttribute("name").toString();
        	    System.out.print("select Complaint from complaint wheres Category='"+abc+"'");
        	    ResultSet rs = st.executeQuery("select * from complaint where Category='"+abc+"';");
        	    while(rs.next()){
        	    	//String b=rs.getString("CId");
        	    	String a=rs.getString("Complaint");
        	    	String b=rs.getString("CId");
        	    	String co=rs.getString("Status");
        	    	if(!co.equals("Resolved")){
        	    	//"<option value=\""+a+"\">"+a+"</option>"
        		    //out.println("<option value=\""+b+"\">"+a+"</option>");
       	    	  // out.print("<div class=\""+"cla"+b+"\"id=\""+"con3"+"\"><div style=\""+"font-size: 22px"+"\"><p style=\""+"position:relative"+"\">"+a+"</p></div></div>");
        		   // out.println( "<p style=\""+"position:relative"+"\">"+a+"</p>");
         	    //out.print("<div class=\""+"contain"+"\" style=\""+"font-size: 22px"+"\"><p style=\""+"position:relative"+"\">"+a+"</p></div>");
         	    //<form action=\""+"buttonclick"+"\" method=\""+"post"+"\"><input type=\""+"hidden"+"\" name=\""+"id"+"\" value=\""+b+"\"><input type=\""+"hidden"+"\" name=\""+"val"+"\" value=\""+"view comment"+"\"><input type=\""+"submit"+"\" id=\""+"btnd"+"\" value=\""+"Add Comment"+"\"></form>
        	         	   out.print("<div class=\""+"NOTI"+"\"><div id=\""+"ps"+"\"><p>"+a+"</p></div><div id=\""+"bdiv"+"\"><form action=\""+"bpro"+"\" method=\""+"post"+"\"><input type=\""+"hidden"+"\" name=\""+"id"+"\" value=\""+b+"\"><input type=\""+"hidden"+"\" name=\""+"val"+"\" value=\""+"Processing"+"\"><input type=\""+"submit"+"\" id=\""+"btnd"+"\" value=\""+"Processing"+"\"></form><br><form action=\""+"breso"+"\" method=\""+"post"+"\"><input type=\""+"hidden"+"\" name=\""+"id"+"\" value=\""+b+"\"><input type=\""+"hidden"+"\" name=\""+"val"+"\" value=\""+"Resolved"+"\"><input type=\""+"submit"+"\" id=\""+"btnd"+"\" value=\""+"Resolved"+"\"></form></div></div>");        
        	    	}
        	    }
        	    st.close();
        	    con.close();
        	} catch (ClassNotFoundException e) {
        		e.printStackTrace();
        	} catch (SQLException e) {
        		e.printStackTrace();
        	}
            %>
            
    </center>
    
    
    
       </div>
       <div id="con3">
       <h1 class="main-heading" style="font-size:30px">Complaints Resolved</h1>
    <hr>
       <center>
    <%String url2="jdbc:mysql://localhost/cmc";
       String uname2="root";
       String pass2="subha@ganu";  
		        	try {
		        		//<input type=\""+"hidden"+"\" name=\""+"id"+"\" value=\""+"b"+"\"><input type=\""+"hidden"+"\" name=\""+"val"+"\" value=\""+"Resolved"+"\">
        		Class.forName("com.mysql.jdbc.Driver");
            	Connection con = DriverManager.getConnection(url2,uname2,pass2);
        	    Statement st=con.createStatement();
        	    String abc=session.getAttribute("name").toString();
        	    System.out.print("select Complaint from complaint wheres Category='"+abc+"'");
        	    ResultSet rs = st.executeQuery("select * from complaint where Category='"+abc+"';");
        	    while(rs.next()){
        	    	//String b=rs.getString("CId");
        	    	String a=rs.getString("Complaint");
        	    	String b=rs.getString("CId");
        	    	String co=rs.getString("Status");
        	    	if(co.equals("Resolved")){
        	    	//"<option value=\""+a+"\">"+a+"</option>"
        		    //out.println("<option value=\""+b+"\">"+a+"</option>");
       	    	  // out.print("<div class=\""+"cla"+b+"\"id=\""+"con3"+"\"><div style=\""+"font-size: 22px"+"\"><p style=\""+"position:relative"+"\">"+a+"</p></div></div>");
        		   // out.println( "<p style=\""+"position:relative"+"\">"+a+"</p>");
         	    //out.print("<div class=\""+"contain"+"\" style=\""+"font-size: 22px"+"\"><p style=\""+"position:relative"+"\">"+a+"</p></div>");
         	   out.print("<div class=\""+"NOTI"+"\"><div id=\""+"ps"+"\"><p>"+a+"</p></div></div>");        
        	    	}
        	    }
        	    st.close();
        	    con.close();
        	} catch (ClassNotFoundException e) {
        		e.printStackTrace();
        	} catch (SQLException e) {
        		e.printStackTrace();
        	}
            %>
            
    </center>
    
       
       </div>
       <div id="con4">
       <form action="commenttoc" method="post" >
    
    <h1 class="main-heading" style="font-size:40px">Comment Form</h1>
    <hr>
    <h2>CONTENT:</h2>
    <label>ID:</label><input id="rum"  type="text" style="weidth:20px;height:10px;text-size:30px;color:white;"value=${id} disabled>
    <input style="color:white;" type="hidden" id="custId" name="ROLL" value=${id}>
    <label>Complaint :   </label>
    <select name="categ" id="sel">
         <%
         String url="jdbc:mysql://localhost/cmc";
 		String uname="root"; 
 		String pass="subha@ganu";
        	
        	try {
        		Class.forName("com.mysql.cj.jdbc.Driver");
        	    Connection con = DriverManager.getConnection(url,uname,pass);
        	    String abc=session.getAttribute("name").toString();
        	    Statement st=con.createStatement();
        	    ResultSet rs = st.executeQuery("select * from complaint where Category='"+abc+"' ;");
                
        	    while(rs.next())
        	    {
        	    	String a=rs.getString("Complaint");
        	    	//"<option value=\""+a+"\">"+a+"</option>"
        		    out.println("<option value=\""+a+"\">"+a+"</option>");
        	    }
        	    
        	    st.close();
        	    con.close();
        	} catch (ClassNotFoundException e) {
        		e.printStackTrace();
        	} catch (SQLException e) {
        		e.printStackTrace();
        	}
            %>
        
    </select>
    <!-- <p>Catagory: <br><input type="text" name="name"></p> -->
    <!-- <p>Roll number: <br><input type="text" pattern="[a-zA-Z0-9]+" id="Roll Number">
    </p> -->
    <p>Comment:  <br> <textarea name="Comment" id="complaint" style="height:100px; width:90%"></textarea></p>
    <input type="submit" value="Submit" style="margin-left: 1050px; width:150px;">
   </form>
       
       
       </div>
      
       
</body>
</html>