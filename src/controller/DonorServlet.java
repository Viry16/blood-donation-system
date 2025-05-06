package controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class DonorServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String bloodType = request.getParameter("bloodType");

    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donation", "root", "");

      PreparedStatement ps = con.prepareStatement("INSERT INTO donor (name, email, phone, blood_type) VALUES (?, ?, ?, ?)");
      ps.setString(1, name);
      ps.setString(2, email);
      ps.setString(3, phone);
      ps.setString(4, bloodType);
      ps.executeUpdate();

      response.sendRedirect("index.jsp");

    } catch(Exception e) {
      e.printStackTrace();
    }
  }
}
