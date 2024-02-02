package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dao.UserDao;
import movielibrarydto.Admin;
import movielibrarydto.User;
@WebServlet("/usersignup")
public class SaveUser extends HttpServlet
{
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
		{
		   int id =Integer.parseInt(req.getParameter("uid"));
			String name=req.getParameter("uname");
			Long contact=Long.parseLong(req.getParameter("ucontact"));
			String eamil=req.getParameter("uemail");
			String password=req.getParameter("upassword");
			
			User user=new User();
		    user.setUserid(id);
		    user.setUsername(name);
		    user.setUsercontact(contact);
		    user.setUseremail(eamil);
		    user.setUserpassword(password);
		    
		    UserDao dao=new UserDao();
		    try {
				dao.saveUser(user);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
}
