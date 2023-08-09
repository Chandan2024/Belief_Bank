package com.chandan.servlets;
import java.sql.*;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;

public class forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String question,answer,password,email;

		question=request.getParameter("uquestion");
		answer=request.getParameter("uanswer");
		password=request.getParameter("upassword");
		email=request.getParameter("uemail");
		
		
		RequestDispatcher dispatcher=null;
		Connection con;
		PreparedStatement pstmt;
		ResultSet rs;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://bjqihypxiloujpf1q0vz-mysql.services.clever-cloud.com:3306/bjqihypxiloujpf1q0vz?user=uaojpnxtco3vr7qm&password=ZALNnkM2lYNv9ert8K2d");
			System.out.println("Database Connected \nApplication Running");
			
			pstmt=con.prepareStatement("update accounts set password=? where email=? and question=? and answer=?;");
			pstmt.setString(1, password);
			pstmt.setString(2, email);
			pstmt.setString(3, question);
			pstmt.setString(4, answer);
			
			int i=pstmt.executeUpdate();
			if(i>0)
			{
				dispatcher=request.getRequestDispatcher("forgot.jsp");
				request.setAttribute("status", "active");
			}
			else
			{
				dispatcher=request.getRequestDispatcher("forgot.jsp");
				request.setAttribute("status", "inactive");
			}
			dispatcher.forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
