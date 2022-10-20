
import java.sql.*;
import java.util.Scanner;

public class jdbcfirst {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		int r = sc.nextInt();
		String s1 = sc.next();
		int m = sc.nextInt();

		try {
		
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp", "sanjeev","sanjeev123");
			PreparedStatement ps = conn.prepareStatement("insert into student values(?,?,?)");
			ps.setInt(1, r);
			ps.setString(2, s1);
			ps.setInt(3, m);
			ps.executeUpdate();
			System.out.println("records inserted succesfully...");
			ResultSet rs = ps.executeQuery("select * from student");
			while (rs.next()) 
			{
				int roll = rs.getInt("rollno");
				String s = rs.getString("same");
				int ml = rs.getInt("mobile");
				System.out.println("roll" + roll);
				System.out.println("sname" + s);
				System.out.println("mobile" + ml);}}

			 catch (Exception cs)
			 {
				System.out.println(cs);
			 }
		

	}}
