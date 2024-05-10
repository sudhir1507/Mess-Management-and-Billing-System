package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messmangement.admin.service.CategoryService;
import org.messmangement.admin.service.CategoryServiceImpl;
import org.messmangement.admin.service.RegistrationService;
import org.messmangement.admin.service.RegistrationServiceImpl;

@WebServlet("/deleteregistration")
public class DeleteRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int rid=Integer.parseInt(request.getParameter("rid"));
		RegistrationService rService=new RegistrationServiceImpl();
		boolean b=rService.deleteRegistration(rid);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewRegistration.jsp");
			r.include(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("viewRegistration.jsp");
			r.include(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
