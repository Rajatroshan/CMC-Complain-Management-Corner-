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
   <script type="text/javascript">
    	history.forward();
    </script>
    <link rel="stylesheet" href="/style2.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
   

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&family=Roboto:wght@100&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
    
    history.forward();
        $(document).ready(function(){
            $("#con1").hide();
            $("#con2").show();
            $("#con3").hide();
            $("#con4").hide();
            $("#con5").hide();


            // $("#empd").hide();
            $("#S-2").on("click",function(){
                $("#con1").show();
                $("#con2").hide();
                $("#con3").hide();
                $("#con4").hide();
                $("#con5").hide();


                // $("#stui").show();
                // $("#stud").show();
                
            });
            $("#S-1").on("click",function(){
            	$("#con1").hide();
                $("#con2").show();
                $("#con3").hide();
                $("#con4").hide();
                $("#con5").hide();


                // $("#empi").show();
               
            });
            $("#S-3").on("click",function(){
                $("#con1").hide();
                $("#con2").hide();
                $("#con3").show();
                $("#con4").hide();
                $("#con5").hide();


            });
            $("#S-4").on("click",function(){
                $("#con1").hide();
                $("#con2").hide();
                $("#con3").hide();
                $("#con4").show();
                $("#con5").hide();


            });
            $("#S-5").on("click",function(){
                $("#con1").hide();
                $("#con2").hide();
                $("#con3").hide();
                $("#con4").hide();

                $("#con5").show();

            });
            
        });
        document.getElementById('submitBtn').addEventListener('onclick', function() {
            alert('your query is submited');
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
    color:white;
        }
         #con4{
        font-family: 'Baloo Bhai 2', cursive;
          position: absolute;
    margin-top: 20px;
    margin-bottom: 50px;
    margin-left: 340px;
    background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));
    width: 600px;
    padding: 50px 30px;
    border-radius: 10px;
    box-shadow: 7px 7px 60px #000;
        color:white;
    
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
    width: 100%;
    height:100%;
    font-size:17px;
    padding:8px;
    margin-left: 0px;
    margin-top: 0px;
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
#con3{
margin-top:70px;
    color:white;

}
.container{
    background-color: #f2f2f2;
    padding:5px 20px 15px 20px;
    /* border:1px solid lightgray; */
    /* border-radius:4px; */
    /* width: 1350px; */
   /* margin:0px; */
    margin-top: 0px;
        color:white;
    
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

 .contain{
  /*position: initial;*/
        /* margin-top: 100px;position: absolute; background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));*/
        margin-bottom: 50px;
        
        width:95%;
        padding: 30px 150px;
        border-radius: 10px;
        box-shadow: 7px 7px 60px #000;
        height: 120PX;
            color:white;
        
        
 }
 #btnb{
        width:80px;
        position:fixed;
        height:25px;
        margin-top: -20px;
		background-color:red;
                color: white;
                text-transform: uppercase;
                font-size: .6em;
                opacity: .7;
                transition: opacity .3s ease;
                cursor: pointer;

    }
     canvas {
      max-width: 600px;
      margin: 0px auto;
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
        color:white;
        /* position: absolute; */
    }
    #bdiv{
    margin-top:-30px; 
    margin-left:950px;
    }
    </style>
    <script>
        function checkPasswordMatch() {
            var password1 = document.getElementById("name1").value;
            var password2 = document.getElementById("name2").value;
            var submitBtn = document.getElementById("res");
            if (name1 === name2) {
                res.disabled = false;
            } else {
                res.disabled = true;
            }
        }
    </script>
</head>
<body>
	
	
    <header>
        <NAv class="x">
            <UL class="ME">
            <li class="nav-bar__link" id="S-1"><a  style=" text-decoration: none; color: white;">HOME</a></li>
            <li class="nav-bar__link" id="S-2"><a  style=" text-decoration: none; width:;">CHANGE PASSWORD</a></li>
            <!-- <h1 class="S-2">ABOUT ME</h1> -->
            <LI class="nav-bar__link" id="S-3"><a  style=" text-decoration: none;">COMPLAINTS</a></LI>
            <LI class="nav-bar__link" id="S-4"><input type="hidden" name="sid" value=${rollno}><a  style=" text-decoration: none;">STATUS</a></LI>
            <LI class="nav-bar__link" id="S-5"><a  style=" text-decoration: none;">VIEW COMMENTS</a></LI>
            
            <LI  id="S" style="margin-left:450px;"><a  style=" text-decoration: none;"><form action="login.jsp" >
            <button class="open-button" style="background-color:red;height:30px; border-radius:10px; width:100px;">LOG OUT</button>
            </div>
        </form></a></LI>
            </ul>
        </NAv>
        <!-- <SECtion class="SUB">
            <H1>NOVA FAM</H1>
            <P>Lorem ipsum dolor sit amet consectetur adipisicing elit.</P>
        </SECtion> -->
        </header>
        <div id="con1">
            <h1 style="margin-left:105px">CHANGE PASSWORD</h1>
            <br>
            <form action="reset" method="post">
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
                            <input type="text" name="np" id="name1"  style=" width: 300px; height: 20px;" placeholder="Enter new password ">
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
                            <input type="text" name="anp" id="name2"  style=" width: 300px; height: 20px;" placeholder="Enter new password again ">
                        </div>
                    </td>
                    
                </tr>
                
                </table>
                  <p style="background-color:rgb(252, 0, 0);">${error}</p>    
                
                <input type="hidden" name="sid" value=${rollno}>
                <input id="res" type="submit" name="submit" value="Reset" style="width: 120px; height:50px;  border-radius: 10px;margin-left: 400px; color: white; background-color: rgb(18, 152, 175);border-color: rgb(18, 152, 175)">
                
                </form>
            </div>
            <div id="con2">
   
    <form action="complaint" method="post" >
    
    <h1 class="main-heading" style="font-size:40px; color:white;">Complaint Form</h1>
    <hr>
    <h2 style="color:white;">CONTENT:</h2>
    <label style="color:white;">Roll No:</label><input id="rum"  type="text" style="color:white; weidth:20px;height:10px;text-size:30px"value=&emsp;${rollno} disabled>
    <input style="color:white;" type="hidden" id="custId" name="ROLL" value=${rollno}>
    <label style="color:white;" >Catagory :   </label>
    <select name="categ" id="sel">
         <%
         String url="jdbc:mysql://localhost/cmc";
 		String uname="root"; 
 		String pass="subha@ganu";
        	
        	try {
        		Class.forName("com.mysql.cj.jdbc.Driver");
        	    Connection con = DriverManager.getConnection(url,uname,pass);
        	    
        	    Statement st=con.createStatement();
        	    ResultSet rs = st.executeQuery("select Category from category ;");
        	    
        	    while(rs.next())
        	    {
        	    	String a=rs.getString("Category");
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
    <p style="color:white;">Complaint:  <br> <textarea name="Complaint" id="complaint" style="height:100px; width:90%"></textarea></p>
    <input onclick="alert('Complaint submitted: ')" type="submit" id="submitBtn" value="Submit" style="margin-left: 1150px; width:150px;">
   </form>
       </div>
       <center>
       <div class="cla" id="con3">
       <%String url1="jdbc:mysql://localhost/cmc";
       String uname1="root";
       String pass1="subha@ganu";  
		        	try {
        		Class.forName("com.mysql.cj.jdbc.Driver");
            	Connection con = DriverManager.getConnection(url1,uname1,pass1);
        	    Statement st=con.createStatement();
        	    String abc=session.getAttribute("rollno").toString();
        	    ResultSet rs = st.executeQuery("select * from complaint where SID='"+abc+"';");
        	    while(rs.next()){
        	    	//String b=rs.getString("CId");
        	    	String a=rs.getString("Complaint");
        	    	String co=rs.getString("Status");
        	    	String s=rs.getString("comment");
        	    	
        	    	
					System.out.println(s);
        	    	//"<option value=\""+a+"\">"+a+"</option>"
        		    //out.println("<option value=\""+b+"\">"+a+"</option>");
       	    	  // out.print("<div class=\""+"cla"+b+"\"id=\""+"con3"+"\"><div style=\""+"font-size: 22px"+"\"><p style=\""+"position:relative"+"\">"+a+"</p></div></div>");
        		   // out.println( "<p style=\""+"position:relative"+"\">"+a+"</p>");
         	    out.print("<div class=\""+"contain"+"\" style=\""+"font-size: 22px"+"\"><p style=\""+"position:relative"+"\">"+a+"</p><div id=\""+"bdiv"+"\"><input type=\""+"button"+"\" id=\""+"btnd"+"\" name=\""+"btn"+"\" value=\""+co+"\"></div></div>");
        	    }
        	    
        	    st.close();
        	    con.close();
        	} catch (ClassNotFoundException e) {
        		e.printStackTrace();
        	} catch (SQLException e) {
        		e.printStackTrace();
        	}
            %>
            </div>
            </div>
           </center>
            <center>           
           <div id="con4">
            <h1 style="margin-left:10px">STATUS VIEW </h1>
            <br>
             <%String url2="jdbc:mysql://localhost/cmc";
       String uname2="root";
       String pass2="subha@ganu";  
       int pr=0;
       int r=0;
       int p=0;
		        	try {
		        		Class.forName("com.mysql.cj.jdbc.Driver");
		            	Connection con = DriverManager.getConnection(url,uname,pass);
		                //int n=Integer.parseInt(request.getParameter("id"));
        	    		String n=session.getAttribute("rollno").toString();
		            	System.out.println(n);

		                
		        		Statement st = con.createStatement();
		                ResultSet rs = st.executeQuery("select * from complaint where SID='"+n+"';");
		            	System.out.println("select * from complaint where SID='"+n+"';");
		                while(rs.next())
		                {
		                	//int an=Integer.parseInt(request.getParameter("id"));
		                    String c=rs.getString("Status");                
		                    //System.out.println(c);
		                    
		                    if(c.equals("Pending")) {
		                    	p=p+1;
		                    	
		                    }
		                    else if(c.equals("Resolved")) {
		                    	r=r+1;
		                    }
		                    else
		                    {
		                    	pr=pr+1;
		                    }
		                }
		                
		                	session.setAttribute("pr",pr);
		                	session.setAttribute("p",p);
		                	session.setAttribute("r",r);
		                	System.out.print(pr+p+r);


		                st.close();
		                con.close();
		    		} catch (ClassNotFoundException e) {
		    			e.printStackTrace();
		    		} catch (SQLException e) {
		    			e.printStackTrace();
		    		}
		            
		        	%>
                  <canvas id="complaintChart"></canvas>
                
                                <input type="hidden" name="sid" value=${rollno}>
                  
            </div>
            </center>
           <div id="con5">
           <form action="">
    <h1 class="main-heading" style="font-size:30px;color:white;">Comment</h1>
    <hr>
    <center>
    <%String url5="jdbc:mysql://localhost/cmc";
       String uname5="root";
       String pass5="subha@ganu";  
		        	try {
		        		//<input type=\""+"hidden"+"\" name=\""+"id"+"\" value=\""+"b"+"\"><input type=\""+"hidden"+"\" name=\""+"val"+"\" value=\""+"Resolved"+"\">
        		Class.forName("com.mysql.jdbc.Driver");
            	Connection con = DriverManager.getConnection(url1,uname1,pass1);
        	    Statement st=con.createStatement();
	    		String n=session.getAttribute("rollno").toString();
        	    String abc=session.getAttribute("name").toString();
        	    System.out.print("select Complaint from complaint wheres Category='"+abc+"'");
        	    ResultSet rs = st.executeQuery("select * from complaint where SID='"+n+"';");
        	    while(rs.next()){
        	    	//String b=rs.getString("CId");
        	    	String a=rs.getString("Complaint");
        	    	String c=rs.getString("comment");
        	    	if(c!=null)
        	    		out.print("<div class=\""+"NOTI"+"\"><div id=\""+"ps"+"\"><p>"+a+"<br>"+"cmt:"+c+"</p></div></div>");        
 
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
       
</body>

  <script>
    // Mock data for complaint status
    const complaintData = {
      resolved: ${r},
      pending: ${p},
      processing: ${pr},
    };

    // Get the canvas element
    const canvas = document.getElementById('complaintChart');

    // Create the chart
    new Chart(canvas, {
      type: 'doughnut',
      data: {
        labels: ['Resolved', 'Pending', 'Processing'],
        datasets: [
          {
            data: [
              complaintData.resolved,
              complaintData.pending,
              complaintData.processing,
            ],
            backgroundColor: ['#36A2EB', '#FFCE56', '#FF6384'],
            borderWidth: 0,
          },
        ],
      },
      options: {
        plugins: {
          datalabels: {
            color: '#fff',
            formatter: (value, ctx) => {
              const dataset = ctx.chart.data.datasets[0];
              const total = dataset.data.reduce((acc, data) => acc + data, 0);
              const complaintCount = dataset.data[ctx.dataIndex];
              const percentage = ((complaintCount / total) * 100).toFixed(1);
              return `${complaintCount} (${percentage}%)`;
            },
          },
        },
      },
    });
  </script>
</html>