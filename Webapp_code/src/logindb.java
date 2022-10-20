
import java.sql.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class logindb
 */
@WebServlet("/logindb")
public class logindb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logindb() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		

		try {
			

			String uname = request.getParameter("name");
			String upassword = request.getParameter("password");
			String uemail = request.getParameter("email");
			String ugender = request.getParameter("gender");
			String ustate = request.getParameter("state");
			String uphone = request.getParameter("phonenumber");
			
			
		
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp", "sanjeev","sanjeev123");
			PreparedStatement ps = conn.prepareStatement("insert into register values(?,?,?,?,?,?)");
			ps.setString(1, uname);
			ps.setString(2, uemail);
			ps.setString(3, uphone);
			ps.setString(4, upassword);
			ps.setString(5, ugender);
			ps.setString(6, ustate);
			
			ps.executeUpdate();
			System.out.println("records inserted succesfully...");
			ResultSet rs = ps.executeQuery("select * from register");
			while (rs.next()) 
			{
				String vname = rs.getString("name");
				String vphone = rs.getString("phone");
				String vemail = rs.getString("email");
				String vgender = rs.getString("gender");
				String vpassword = rs.getString("password");
				String vstate = rs.getString("state");
				System.out.println("name" + vname);
				System.out.println("phone" + vphone);
				System.out.println("email" + vemail);
				System.out.println("gender" + vgender);
				System.out.println("password" + vpassword);
				System.out.println("state" + vstate);
				
			
			
			
			
			}}

			 catch (Exception cs)
			 {
				System.out.println(cs);
			 }
		
		
		doGet(request, response);
	}

}
