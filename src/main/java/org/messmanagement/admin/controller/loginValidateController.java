package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.messmangement.admin.service.RegistrationService;
import org.messmangement.admin.service.RegistrationServiceImpl;

@WebServlet("/validate")
public class loginValidateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		RegistrationService rService=new RegistrationServiceImpl();
		List<Integer> list=rService.validateLogin(username, password);
		if(list!=null) {
		int rid=list.get(0);
		int roleid=list.get(1);
		if(roleid==1) {
			HttpSession session=request.getSession(true);
			session.setAttribute("rid", rid);
			RequestDispatcher r=request.getRequestDispatcher("admindashboard.jsp");
			r.forward(request, response);
		}else if(roleid==2) {
			HttpSession session=request.getSession(true);
			session.setAttribute("rid", rid);
			RequestDispatcher r=request.getRequestDispatcher("userdashboard.jsp");
			r.forward(request, response);
		}else {
//			RequestDispatcher r=request.getRequestDispatcher("login.jsp");
//			out.println("<center>invalid username or  password </center>");
//			r.include(request, response);
			request.setAttribute("msg", "invalid username or password ");
			RequestDispatcher r=request.getRequestDispatcher("login.jsp");
			//out.println("<center>invalid username or password </center>");
			r.include(request, response);
		  }
		}else {
			request.setAttribute("msg", "invalid username or password ");
			RequestDispatcher r=request.getRequestDispatcher("login.jsp");
			//out.println("<center>invalid username or password </center>");
			r.include(request, response);
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
