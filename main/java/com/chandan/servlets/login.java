package com.chandan.servlets;

import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;


public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Connection con;
		PreparedStatement pstmt;
		ResultSet rs;
		PrintWriter out=response.getWriter();
		RequestDispatcher dispatcher=null;
		HttpSession session=request.getSession();
		
		String email,password;
		email=request.getParameter("uemail");
		password=request.getParameter("upassword");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://bjqihypxiloujpf1q0vz-mysql.services.clever-cloud.com:3306/bjqihypxiloujpf1q0vz?user=uaojpnxtco3vr7qm&password=ZALNnkM2lYNv9ert8K2d");
			System.out.println("Database Connected");
			
			pstmt=con.prepareStatement("select * from accounts where email=? and password=? and role='user';");
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				session.setAttribute("name",rs.getString("name"));
				session.setAttribute("accno",rs.getString("accno"));
				session.setAttribute("acctype",rs.getString("acctype"));
				session.setAttribute("status",rs.getString("status"));
				session.setAttribute("balance",rs.getString("balance"));
				session.setAttribute("branch",rs.getString("branch"));
				session.setAttribute("email",rs.getString("email"));
				session.setAttribute("mobile",rs.getString("mobile"));
				session.setAttribute("role", rs.getString("role"));
			
				dispatcher=request.getRequestDispatcher("profile.jsp");
			}
			else
			{
				request.setAttribute("status","inactive");
				dispatcher=request.getRequestDispatcher("login.jsp");
			}
			dispatcher.forward(request, response);
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
