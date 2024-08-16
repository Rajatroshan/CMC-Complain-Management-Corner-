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


@WebServlet("/loginadmin")
public class loginadmin extends HttpServlet
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
            //int n=Integer.parseInt(request.getParameter("id"));
            String n=request.getParameter("id");
            String p=request.getParameter("pass");
        	System.out.println(n);
            System.out.println(p);

            
    		Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from admin;");
            while(rs.next())
            {
            	//int an=Integer.parseInt(request.getParameter("id"));
                String an=rs.getString("AdminID");
                String pp=rs.getString("Password");
                
                System.out.println(an);
                if(n.equals("10")) {
                if(p.equals(pp) && n.equals(an)) {
                	response.sendRedirect("SuperAdmin.jsp");
                	System.out.println("super admin page");
                }
                }
                else if(p.equals(pp)&&n.equals(an))
                {
                    session.setAttribute("name",rs.getString("Category"));
                    session.setAttribute("id",rs.getString("AdminID"));
                   
                    session.removeAttribute("error");
                	response.sendRedirect("adminpage.jsp");
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
            	session.setAttribute("error2","Wrong Password <br>");
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
