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


@WebServlet("/ChangeAdmin")
public class ChangeAdmin extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String url="jdbc:mysql://localhost/cmc";
		String uname="root";
		String pass="subha@ganu";
        HttpSession session=request.getSession();
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection(url,uname,pass);
            String n=request.getParameter("categ");
            String op=request.getParameter("op");
            String email=request.getParameter("email");
            String np=request.getParameter("np");
            String ap=request.getParameter("anp");    	            
    		Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from admin where category='"+n+"';");
            while(rs.next())
            {
                String pp=rs.getString("password");
                
                
                if(op.equals(pp))
                {
                    if(np.equals(ap)) {
                    	Statement st1=con.createStatement();
                        st1.execute("UPDATE admin SET Emailid ='"+email+"',password='"+np+"' WHERE category = '"+n+"'");
                        st1.close();
                    	session.setAttribute("errorad","Admin Changed <br>");
                        response.sendRedirect("SuperAdmin.jsp");

                    }
                    else {
                    	session.setAttribute("errorad","New Password doesn't match <br>");
                        response.sendRedirect("SuperAdmin.jsp");

                    }
        		    break;
                }
                else
                {
                	session.setAttribute("errorad","You Entered wrong Password <br>");
                    response.sendRedirect("SuperAdmin.jsp");

                }
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

