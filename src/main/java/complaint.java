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
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@WebServlet("/complaint")
public class complaint extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String url="jdbc:mysql://localhost/cmc";
		String uname="root";
		String mail=null;
		String pass="subha@ganu";
        HttpSession session=request.getSession();
        String roll=request.getParameter("ROLL");
		String comp=request.getParameter("Complaint");
		String category=request.getParameter("categ");
		String query="insert into Complaint(Category,Complaint,SID) values(?,?,?);";
		System.out.println(comp+category+roll);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,uname,pass);
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1,category);
			st.setString(2,comp);
			st.setString(3,roll);
			st.executeUpdate();

			Statement st2 = con.createStatement();
            ResultSet rs = st2.executeQuery("select * from admin where Category='"+category+"';");
            while(rs.next())
            {
            	//int an=Integer.parseInt(request.getParameter("id"));
                mail=rs.getString("EmailId");
            }
            
            st.close();
            con.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		// Recipient's email ID needs to be mentioned.
       // String to = "21cse351.subhashreemohanty@giet.edu";
		String to=mail;
        // Sender's email ID needs to be mentioned
        String from = "complaintmanagementcorner@gmail.com";

        // Assuming you are sending email from through gmails smtp
        String host = "smtp.gmail.com";

        // Get system properties
        Properties properties = System.getProperties();

        // Setup mail server
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");

        // Get the Session object.// and pass username and password
        Session session1 = Session.getInstance(properties, new javax.mail.Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {

                return new PasswordAuthentication("complaintmanagementcorner@gmail.com", "zleyhxqnnlnpvcgk");

            }

        });

        // Used to debug SMTP issues
        session1.setDebug(true);

        try {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session1);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

            // Set Subject: header field
            message.setSubject("Hello "+category+" Admin");

            // Now set the actual message
            message.setText(comp);

            System.out.println("sending...");
            // Send message
            Transport.send(message);
            System.out.println("Sent message successfully....");
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
		
        response.sendRedirect("studentl.jsp");
        
	}
}