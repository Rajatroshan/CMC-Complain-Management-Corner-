import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/buttonclick")

public class buttonclick extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String url="jdbc:mysql://localhost/cmc";
		String uname="root";
		String pass="subha@ganu";
        HttpSession session=request.getSession();
        int l=0;
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection(url,uname,pass);
            String n=request.getParameter("ROLL");
            String p=request.getParameter("pass");
        	System.out.println(n);
            System.out.println(p);

            
    		Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from ustudent;");
            while(rs.next())
            {
            	String un=rs.getString("SRoll");
                String pp=rs.getString("password");
                
                System.out.println(un);
                
                if(p.equals(pp)&&n.equals(un))
                {
                    session.setAttribute("rollno",rs.getString("SRoll"));
                    
                    
                    session.removeAttribute("error");
                	response.sendRedirect("studentl.jsp");
                	String name=rs.getString("name");
        		    session.setAttribute("username",name);
        		    break;
                }
                else
                {
                	l=1;
                }
            }
            if(l==1)
            {
            	session.setAttribute("error","Wrong Password <br>");
            	response.sendRedirect("login.jsp");
            }
            st.close();
            con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
        
	}
}

//public class buttonclick {
	//UPDATE student SET `S_name` = 'myganu' WHERE (`IdStudent` = '4');
//}
