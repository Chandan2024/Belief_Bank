package com.chandan.servlets;

import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;


public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con;
		PreparedStatement pstmt;
		response.setContentType("text/html");
		RequestDispatcher dispatcher=null;
		HttpSession session=request.getSession();
		PrintWriter out=response.getWriter();

		String name,email,mobile,status,balance,type,branch,password,question,answer;
		name=request.getParameter("uname");
		password=request.getParameter("upassword");
		type=request.getParameter("utype");
		status=request.getParameter("ustatus");
		balance=request.getParameter("ubalance");
		branch=request.getParameter("ubranch");
		email=request.getParameter("uemail");
		question=request.getParameter("uquestion");
		answer=request.getParameter("uanswer");
		mobile=request.getParameter("umobile");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://bjqihypxiloujpf1q0vz-mysql.services.clever-cloud.com:3306/bjqihypxiloujpf1q0vz?user=uaojpnxtco3vr7qm&password=ZALNnkM2lYNv9ert8K2d");
			System.out.println("Database Connected\nApllication running");
			
			pstmt=con.prepareStatement("insert into accounts (accno,name,password,acctype,status,balance,branch,email,question,answer,mobile) values(accno,?,?,?,'Active',0,?,?,?,?,?);");
			pstmt.setString(1, name);
			pstmt.setString(2, password);
			pstmt.setString(3, type);
			pstmt.setString(4, branch);
			pstmt.setString(5, email);
			pstmt.setString(6, question);
			pstmt.setString(7, answer);
			pstmt.setString(8, mobile);
			
			int i=pstmt.executeUpdate();
			if(i>0)
			{
				request.setAttribute("status", "active");
				dispatcher=request.getRequestDispatcher("register.jsp");
			}
			else
			{
				request.setAttribute("status", "inactive");
				dispatcher=request.getRequestDispatcher("register.jsp");
			}
			dispatcher.forward(request, response);
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
