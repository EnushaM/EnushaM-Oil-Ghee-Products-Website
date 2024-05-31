package com.signup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "system");
			String sql="select * from ecommerce_user where phone=? and password=?";
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(2, phone);
			st.setString(3, password);
			ResultSet rs= st.executeQuery();
			if(rs.next())
			{
				response.sendRedirect("index.jsp?message=Login successfull");
				
			}
			else
			{
				response.sendRedirect("index.jsp?error=Invalid Username or password");

			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			response.sendRedirect("index.jsp?error=Error Occured, Try again later");
		}
	}

}
