package com.chandan.servlets;

import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class credit extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con;
		PreparedStatement pstmt;
		PreparedStatement stmt;
		ResultSet rs;
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher=null;
		String amount,password,accno;
		amount=request.getParameter("camount");
		password=request.getParameter("upassword");
		accno=(String) session.getAttribute("accno");
		try {

            Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://bjqihypxiloujpf1q0vz-mysql.services.clever-cloud.com:3306/bjqihypxiloujpf1q0vz?user=uaojpnxtco3vr7qm&password=ZALNnkM2lYNv9ert8K2d");
			pstmt=con.prepareStatement("update accounts set balance=balance+? where password=? and accno=?;");
			pstmt.setString(1, amount);
			pstmt.setString(2, password);
			pstmt.setString(3, accno);
			
			int i=pstmt.executeUpdate();
	
			stmt=con.prepareStatement("select balance from accounts where accno=?");
			stmt.setString(1, accno);
			rs=stmt.executeQuery();
			if(i>0 && rs.next())
			{
				session.setAttribute("balance", rs.getString("balance"));
				request.setAttribute("status", "complete");
				dispatcher=request.getRequestDispatcher("credit.jsp");
			}
			else
			{
				request.setAttribute("status", "incomplete");
				dispatcher=request.getRequestDispatcher("credit.jsp");
			}
			dispatcher.forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
