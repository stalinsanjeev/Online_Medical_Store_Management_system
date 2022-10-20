package web1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;

public class orderdao {
	
	
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
	
	
	public String order(String uname ,int quantity,int pid,String address)
	{
		loadDriver (dbdriver);
		
		
		try
		{
			
		
		
	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp", "sanjeev","sanjeev123");
		
		
		
		PreparedStatement st4 = con.prepareStatement("select max(refid)+1 as maxref  from orders   ");
		ResultSet rss=st4.executeQuery();
		rss.next();
		int max=rss.getInt("maxref");
	
		
		
		
		
		
		PreparedStatement st = con.prepareStatement("select name,phone from register where name=? ");
		st.setString(1, uname);
		ResultSet rss1=st.executeQuery();
		rss1.next();
		
		String ouname=rss1.getString("name");
		
		
		
		int ophone=rss1.getInt("phone");
		
		
		
		PreparedStatement st1 = con.prepareStatement("select pid,name,price from products where pid=? ");
		st1.setInt(1, pid);
		ResultSet rss2=st1.executeQuery();
		rss2.next();
		
		
		int oprice=rss2.getInt("price");
		
		int opid=rss2.getInt("pid");
		String opname=rss2.getString("name");
		int oquantity=quantity;
		String oadress=address;
		
		
		System.out.print(max);
		System.out.print(opid);
		System.out.print(opname);
		System.out.print(oprice);
		System.out.print(oquantity);
		System.out.print(ouname);
		System.out.print(ophone);
		System.out.print(oadress);
		
		
		
		
		
		PreparedStatement st6 = con.prepareStatement("insert into orders values(?,?,?,?,?,?,?,?) ");
		st6.setInt(1, max);
		st6.setInt(2, opid);
		st6.setString(3, opname);
		st6.setInt(4, oprice);
		st6.setInt(5, oquantity );
		st6.setString(6, ouname);
		st6.setInt(7, ophone);
		st6.setString(8, oadress);
		
		st6.executeUpdate();
		
		
		
		
			
		
		
		
	
		
		
		

		
		
		
		
		
		
		
			
		}
		catch(Exception e)
		{
			System.out.print(e);
		}
		
		
		return "outside";
	}


}
