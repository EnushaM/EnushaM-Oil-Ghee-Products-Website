package com.signup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Signupservlet")
public class Signupservlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String location = request.getParameter("location");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "system");

            String sql = "INSERT INTO ecommerce_user_info (name, password, phone, location) VALUES (?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, password);
            st.setString(3, phone);
            st.setString(4, location);
            st.executeUpdate();
            con.close();
            response.sendRedirect("index.jsp?message=User Registration successful");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("index.jsp?error=An error occurred. Please try again later.");
        }
    }
}
