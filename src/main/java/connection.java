import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
public class connection {
	public static void main(String args[]) throws Exception {
		String url="jdbc:mysql://localhost/cmc";
		String uname="root";
		String pass="subha@ganu";
//		String query="insert into complaint(Category,Complaint,SID) values('hostel','food','21CSE351')";
		String query="insert into complaint(Category,Complaint,SID) values(?,?,?)";
		String cat="bus";
		String iss="late";
		String sid="21CSE351";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,uname,pass);
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1,cat);
		st.setString(2,iss);
		st.setString(3,sid);

		int count = st.executeUpdate();
		System.out.println(count+"rows affected");
//		st.executeQuery(query);
//		ResultSet rs = st.executeQuery(query);
//		while(rs.next()) {
//		String name = rs.getInt(1)+rs.getString(2);
//		System.out.println(name);
//		}
//		String query=" ";
		st.close();
		con.close();
	}

}
