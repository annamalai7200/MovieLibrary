package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;

import dao.Dao;

import movielibrarydto.Admin;
@WebServlet("/adminsignup")
public class SavedAdmin extends HttpServlet
{
	protected void service(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException
	{
		int id =Integer.parseInt(req.getParameter("adminid"));
		String name=req.getParameter("adminname");
		Long contact=Long.parseLong(req.getParameter("admincontact"));
		String eamil=req.getParameter("adminemail");
		String password=req.getParameter("adminpassword");
		
		Admin admin=new Admin();
		admin.setAdminid(id);
		admin.setAdminname(name);
		admin.setAdmincontact(contact);
		admin.setAdminemail(eamil);
		admin.setAdminpassword(password);
		
	    Dao dao=new Dao();
	    try {
	    	dao.saveAdmin(admin);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
}
