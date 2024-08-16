<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.IOException,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.SQLException,java.sql.Statement"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
   
    <style>
        .admin-details1 {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
        }

        .admin-name {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .admin-email {
            font-size: 16px;
            color: #555;
        }

        .admin-actions {
            margin-top: 10px;
        }

        .edit-button,
        .delete-button {
            padding: 5px 10px;
            margin-right: 10px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .delete-button {
            background-color: #ff3737;
        }
        /* add admin */
        .containeradd {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 500px;
            position: relative;
            margin-top: 7%;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 16px;
        }

        button[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
            border-radius: 7PX;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
        /* show status */
       canvas {
      max-width: 600px;
      margin: 20px auto;
    }
    
    .complaint-container {
      max-width: 600px;
      margin: 20px auto;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
      border-radius: 8px;
    }
    
    .complaint-status {
      margin-top: 20px;
      font-weight: bold;
    }
        /* Your CSS styles go here */
        body {
            font-family: Arial, sans-serif;
            overflow-x: hidden;
            margin: 0;
        }
        
        .containerup {
            display: flex;
        }
        
        .sidebar {
            width: 0;
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            background-color: #333;
            overflow-x: hidden;
            padding-top: 60px;
            color: white;
            transition: width 0.3s;
        }
        
        .sidebar h2 {
            padding: 20px;
        }
        
        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }
        
        .sidebar ul li {
            padding: 10px;
        }
        
        .sidebar ul li a {
            text-decoration: none;
            color: white;
            display: block;
            transition: 0.2s;
            padding: 10px 20px; /* Increase padding for hover effect */
        }
        
        .sidebar ul li a:hover {
            background-color: #dfc909;
        }
        
        .content {
            flex-grow: 1;
            padding: 15px;
            background-color: #f3f3f3;
            transition: margin-left 0.3s;
        }
        
        .open-button {
            background-color: #333;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 2;
        }
        
        .close-button {
            position: absolute;
            top: 0;
            right: 10px;
            font-size: 30px;
            margin-left: 10px;
            cursor: pointer;
        }
        
        /* Your additional styles go here */
    </style>
    <title></title>
</head>
<body>
    <div class="containerup">
        <button class="open-button" onclick="toggleSidebar()">&#9776;</button>
        <div class="sidebar" id="sidebar">
            <h2>ADMIN </h2>
            <ul>
                <li id="addb"><a href="javascript:void(0);" onclick="loadPage('ADD CATEGORY')">ADD CATEGORY</a></li>
                <li id="sh"><a href="javascript:void(0);" onclick="loadPage('CATEGORY WISE STATUS')">SHOW STATUS</a></li>
                <li id="delc"><a href="javascript:void(0);" onclick="loadPage('DELETE/EDIT CATEGORY')">Delete/Edit</a></li>
                <li id="edadmin"><a href="javascript:void(0);" onclick="loadPage('DELETE/EDIT CATEGORY')">Edit Admin</a></li>
                <li id="logout"><a href="login.jsp" > <-LOG OUT</a></li>
                
            </ul>
        </div>
        <div class="content" id="content">
            <!-- <h1>Welcome to the Full-Screen Sidebar</h1> -->
            <!-- <p>This is the initial content of the page.</p> -->
        </div>
    </div>
    <section>
    <center>
   <div class="complaint-container" id="per">
    <% String url2 = "jdbc:mysql://localhost/cmc";
        String uname2 = "root";
        String pass2 = "subha@ganu";  
        int pr=0;
        int r=0;
        int p=0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url2, uname2, pass2);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from category ;");
            System.out.println("select * from category ;");
            while(rs.next()) {
                p=0;
                r=0;
                pr=0;
                String v=rs.getString("Category");                
                System.out.println("select * from complaint where Category = '"+v+"';");
                Statement st1 = con.createStatement();
                ResultSet rs1 = st1.executeQuery("select * from complaint where Category = '"+v+"';");
                while(rs1.next()){
                    String c=rs1.getString("Status");
                    if(c.equals("Pending")) {
                        p=p+1;
                    }
                    else if(c.equals("Resolved")) {
                        r=r+1;
                    }
                    else {
                        pr=pr+1;
                    }
                }
                System.out.println(p+" "+r+" "+pr);
                rs1.close();
    %>

    <div class="complaint-status">
        <h2> <%= v %></h2>
        <canvas id="complaintChart<%= v.hashCode() %>"></canvas>
    </div>
    <script>
        // Mock data for complaint status
        const complaintData<%= v.hashCode() %> = {
            resolved: <%= r %>,
            pending: <%= p %>,
            processing: <%= pr %>,
        };

        // Function to create the chart
        function createComplaintChart<%= v.hashCode() %>(canvasId, data) {
            const canvas = document.getElementById(canvasId);

            new Chart(canvas, {
                type: 'bar',
                data: {
                    labels: ['Resolved', 'Pending', 'Processing'],
                    datasets: [
                        {
                            data: [
                                data.resolved,
                                data.pending,
                                data.processing,
                            ],
                            backgroundColor: ['#36A2EB', '#FFCE56', '#FF6384'],
                        },
                    ],
                },
                plugins: {
                    datalabels: {
                        color: '#fff',
                        formatter: (value, ctx) => {
                            const total = data.resolved + data.pending + data.processing;
                            const percentage = ((value / total) * 100).toFixed(1);
                            return `${value} (${percentage}%)`;
                        },
                    },
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: {
                                stepSize: 1,
                            },
                        },
                    },
                },
            });
        }

        // Create charts
        createComplaintChart<%= v.hashCode() %>('complaintChart<%= v.hashCode() %>', complaintData<%= v.hashCode() %>);

    </script>

    <%
            }
            st.close();
            rs.close();
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    %>
</div>

    
</center>
<center><div class="containeradd" id="add">
    <h2>Add Admin</h2>
        <form action="AddCategory" method="post">
            <div class="form-group">
                <label for="username">Catagory:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
           
            
           
            <div class="form-group">
                <button type="submit">Add Admin</button>
            </div>
        </form>
</div>

</center>
<center>
<div class="admin-details" id="del">

  <%String url5="jdbc:mysql://localhost/cmc";
       String uname5="root";
       String pass5="subha@ganu";  
		        	try {
		        		//<input type=\""+"hidden"+"\" name=\""+"id"+"\" value=\""+"b"+"\"><input type=\""+"hidden"+"\" name=\""+"val"+"\" value=\""+"Resolved"+"\">
        		Class.forName("com.mysql.jdbc.Driver");
            	Connection con = DriverManager.getConnection(url5,uname5,pass5);
        	    Statement st=con.createStatement();
	    		
        	    ResultSet rs = st.executeQuery("select * from complaint;");
        	    while(rs.next()){
        	    	//String b=rs.getString("CId");
        	    	String a=rs.getString("Complaint");
        	    	String cat=rs.getString("Category");
        	    	String c=rs.getString("comment");
        	    	int ID=Integer.parseInt(rs.getString("CId"));

        	    		%>
        	    		<div class="admin-details1" id="del">
        	    		
        <div class="admin-name"><%=a %></div>
        <div class="admin-email">Comment : <%=c %></div>
        <div class="admin-email">Under : <%=cat %></div>
        <div class="admin-actions">
        <form action="Edit" method="post">
             
            </form>
            <form action="Delete" method="post">
             <input type="hidden" name="Cid" value=<%=ID%>>
            <button class="delete-button">Delete</button>
            </form>
        </div>
        </div>
     <% 
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
    
    
</center>
<center><div class="containeradd" id="chad">
    <h2>Edit Admin</h2>
        <form action="ChangeAdmin" method="post">
            <div class="form-group">
               <<select name="categ" id="sel" style="width="60px"">
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
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Old Password:</label>
                <input type="password" id="password" name="op" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="np" required>
            </div>
           	 <div class="form-group">
                <label for="password">Confirm Password:</label>
                <input type="password" id="password" name="anp" required>
            </div>
            		<p style="background-color:rgb(252, 0, 0);">${errorad}</p>
            
            
            
           
            <div class="form-group">
                <button type="submit">Change</button>
            </div>
        </form>
</div>

</center>
</section>
    <script>
       
        function toggleSidebar() {
            const sidebar = document.getElementById("sidebar");
            if (sidebar.style.width === "250px") {
                sidebar.style.width = "0";
                document.getElementById("content").style.marginLeft = "0";
                document.getElementById("per").style.marginLeft = "320px";
                document.getElementById("add").style.marginLeft = "0px";
                document.getElementById("del").style.marginLeft = "0px";
                document.getElementById("chad").style.marginLeft = "0px";



            } else {
                sidebar.style.width = "250px";
                document.getElementById("content").style.marginLeft = "250px";
                document.getElementById("per").style.marginLeft = "450px";
                document.getElementById("add").style.marginLeft = "310px";
                document.getElementById("del").style.marginLeft = "250px";
                document.getElementById("chad").style.marginLeft = "310px";


            }
        }
       
        function loadPage(pageName) {
            const content = document.getElementById("content");
            content.innerHTML = `<h1>${pageName}</h1>`;
             // Close the sidebar after selecting a page
            
        }
    </script>
</body>

<script>
    $(document).ready(function(){            
            $("#per").show();
            $("#add").hide();
            $("#del").hide();
            $("#chad").hide();


        });
    $("#sh").on("click",function(){
                $("#per").show();
                $("#add").hide();
                $("#del").hide();
                $("#chad").hide();


            });
     $("#addb").on("click",function(){
         $("#add").show();
         $("#per").hide();
         $("#del").hide();
         $("#chad").hide();



     });        
     $("#delc").on("click",function(){
         $("#add").hide();
         $("#per").hide();
         $("#del").show();
         $("#chad").hide();

     });    
     $("#edadmin").on("click",function(){
         $("#add").hide();
         $("#per").hide();
         $("#del").hide();
         $("#chad").show();

     });   
   </script>
</html>
