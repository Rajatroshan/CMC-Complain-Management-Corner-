import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/addcat")
public class AddCategory extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String url="jdbc:mysql://localhost/cmc";
		String uname="root";
		String mail=null;
		String pass="subha@ganu";
        HttpSession session=request.getSession();
        String username=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String otp=request.getParameter("otp");
		String otpsent=request.getParameter("otpsent");


		String query="insert into admin(Category,EmailId,Password) values(?,?,?);";
//		System.out.println(comp+category+roll);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,uname,pass);
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1,username);
			st.setString(2,email);
			st.setString(3,password);
			st.executeUpdate();

			
            
            st.close();
            con.close();
			
			
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		

    
		
        response.sendRedirect("SuperAdmin.jsp");
        
	}
}