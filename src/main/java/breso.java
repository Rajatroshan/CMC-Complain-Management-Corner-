import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/breso")

public class breso extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String url="jdbc:mysql://localhost/cmc";
		String uname="root";
		String pass="subha@ganu";
        HttpSession session=request.getSession();
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection(url,uname,pass);
            String n=request.getParameter("id");
            String v=request.getParameter("val");
        	System.out.println("UPDATE complaint SET Status ='"+v+"' WHERE CId = '"+n+"'");
    		//PreparedStatement st = con.prepareStatement("UPDATE complaint SET Status ='"+v+"' WHERE CId = '"+n+"'");
    		 Statement st=con.createStatement();
             st.execute("UPDATE complaint SET Status ='"+v+"' WHERE CId = '"+n+"'");
     		response.sendRedirect("adminpage.jsp");
    		
            st.close();
            con.close();
		} 
        catch (ClassNotFoundException e) {
			e.printStackTrace();
		} 
        catch (SQLException e) {
			e.printStackTrace();
		}
        
	}
}

//public class buttonclick {
	//UPDATE student SET `S_name` = 'myganu' WHERE (`IdStudent` = '4');
//}


	
	
	