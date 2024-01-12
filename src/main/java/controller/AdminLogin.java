package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import movielibrarydto.Admin;
@WebServlet("/alogin")

public class AdminLogin extends HttpServlet
{
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email= req.getParameter("username");
		String password = req.getParameter("password");
		
		Dao dao = new Dao();
		try {
			
			Admin admin =dao.findByEmail(email);
			
			if(admin!=null)
			{
				
					if(admin.getAdminpassword().equals(password))
					{
						
						req.setAttribute("movies", dao.getAllMovie());
						RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
						rd.include(req, resp);
					}
					else {
						req.setAttribute("msgp", "password is wrong");
						RequestDispatcher rd=req.getRequestDispatcher("alogin.jsp");
						rd.include(req, resp);
					}
				
				
			}
			else {
				req.setAttribute("msge", "email is wrong");
				RequestDispatcher rd=req.getRequestDispatcher("alogin.jsp");
				rd.include(req, resp);
			}
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
}
