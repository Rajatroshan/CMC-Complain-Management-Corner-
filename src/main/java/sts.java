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


@WebServlet("/sts")
public class sts extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String url="jdbc:mysql://localhost/cmc";
		String uname="root";
		String pass="subha@ganu";
        HttpSession session=request.getSession();
        int pr=0;
        int r=0;
        int p=0;
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection(url,uname,pass);
            //int n=Integer.parseInt(request.getParameter("id"));
            String n=request.getParameter("sid");
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

            	response.sendRedirect("studentl.jsp");

            st.close();
            con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
        
	}
}
