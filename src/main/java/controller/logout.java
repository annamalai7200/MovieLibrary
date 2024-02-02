package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
@WebServlet("/logout")
public class logout  extends HttpServlet{
	
protected void service(HttpServletRequest req,HttpServletResponse resp) throws IOException ,ServletException
{
	HttpSession session=req.getSession();
	session.invalidate();
	RequestDispatcher dispatcher = req.getRequestDispatcher("alogin.jsp");
	dispatcher.include(req, resp);
}


}
