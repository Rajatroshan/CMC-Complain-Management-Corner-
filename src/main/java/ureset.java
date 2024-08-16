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


@WebServlet("/ureset")
public class ureset extends HttpServlet
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
            String n=request.getParameter("sid");
            String op=request.getParameter("op");
            String np=request.getParameter("np");
            String ap=request.getParameter("anp");    	            
    		Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from admin where AdminID='"+n+"';");
            while(rs.next())
            {
                String pp=rs.getString("Password");
                
                
                if(op.equals(pp))
                {
                    if(np.equals(ap)) {
                    	Statement st1=con.createStatement();
                        st1.execute("UPDATE admin SET password ='"+np+"' WHERE AdminID = '"+n+"';");
                        st1.close();
                    	session.setAttribute("error4","Password Changed <br>");
                    	
                    }
                    else {
                    	session.setAttribute("error4","New Password doesn't match <br>");
                        response.sendRedirect("adminpage.jsp");

                    }
        		    break;
                }
                else
                {
                	session.setAttribute("error4","You Entered wrong Password <br>");
                    response.sendRedirect("adminpage.jsp");

                }
            }

            st.close();
            con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
        response.sendRedirect("adminpage.jsp");

	}
}

