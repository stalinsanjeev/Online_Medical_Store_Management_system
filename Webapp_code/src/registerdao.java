
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class registerdao {

	private String dbdriver="com.mysql.jdbc.Driver";
	
	
	public  void  loadDriver (String dbdriver)
	{
		try {
			Class.forName(dbdriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
		
		
		
	
	public String insert(member member)
	{
		loadDriver (dbdriver);
		
		String result= "data is entered succesfully";
		
		try {
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp", "sanjeev","sanjeev123");
			PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?,?)");
			ps.setString(1, member.getName());
			ps.setString(2, member.getEmail());
			ps.setString(3, member.getPhonenumber());
			ps.setString(4, member.getPassword());
			ps.setString(5, member.getGender());
			ps.setString(6, member.getState());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e);
			result="data is not entered";
		}
				
		return result;
		
	}
	
	
}
