package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dao.UserDao;
import movielibrarydto.User;
@WebServlet("/userlogin")
public class UserLogin  extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String email=req.getParameter("username");
		String password=req.getParameter("password");
		 
		UserDao dao=new UserDao();
		try {
			User user=dao.findByEmail(email);
			{
				
				if(user.getUserpassword().equals(password))
				{
					HttpSession ses2 = req.getSession();
					ses2.setAttribute("username", user.getUsername());
					 Dao aDao = new Dao();
					req.setAttribute("movies",aDao.getAllMovie() );
					RequestDispatcher rd=req.getRequestDispatcher("userhome.jsp");
					rd.include(req, resp);
				}
				else {
					req.setAttribute("msgp", "password is wrong");
					RequestDispatcher rd=req.getRequestDispatcher("userlogin.jsp");
					rd.include(req, resp);
				}
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
