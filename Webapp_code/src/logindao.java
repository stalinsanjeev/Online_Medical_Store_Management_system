import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class logindao {
	
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
	
	
	public String check(String email ,String password)
	{
		loadDriver (dbdriver);
		
		
		try
		{
			
		
		
	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp", "sanjeev","sanjeev123");
		PreparedStatement st = con.prepareStatement("select * from register where name=? and password=?");
		st.setString(1, email);
		st.setNString(2,password);
		ResultSet rs = st.executeQuery();
		if(rs.next()) 
		{
			return "sucess";
		}
		else
		{
			return "problem";
		}
		
		
		
		
		
			
		}
		catch(Exception e)
		{
			System.out.print(e);
		}
		
		
		return "outside";
	}

}
