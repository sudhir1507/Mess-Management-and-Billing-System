package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messmanagement.admin.model.RegistrationModel;
import org.messmangement.admin.service.RegistrationService;
import org.messmangement.admin.service.RegistrationServiceImpl;


@WebServlet("/addregistration")
public class AddRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		String sdate=request.getParameter("rsdate");
		Date rsdate = Date.valueOf(sdate);
		String edate=request.getParameter("redate");
		Date redate = Date.valueOf(edate);
		int amount=Integer.parseInt(request.getParameter("amount"));
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		int cid=Integer.parseInt(request.getParameter("category"));
		RegistrationModel model=new RegistrationModel(name,contact,address,rsdate,redate,amount,username,password,cid);
		RegistrationService rService=new RegistrationServiceImpl();
		boolean b=rService.addRegistration(model);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("registration.jsp");
			r.include(request, response);
		}else {
			out.println("<h3>Not register.. Some problem is there</h3>");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
