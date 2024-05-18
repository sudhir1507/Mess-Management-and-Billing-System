package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messmangement.admin.service.RegistrationService;
import org.messmangement.admin.service.RegistrationServiceImpl;

@WebServlet("/finalprofileupdate")
public class FinaleProfileUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int rid=Integer.parseInt(request.getParameter("rid"));
		String name=request.getParameter("name");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		String email=request.getParameter("username");
		String password=request.getParameter("password");
		RegistrationService uprService=new RegistrationServiceImpl();
		
		boolean b=uprService.updateProfile(rid,name,contact,address,email,password);
		if(b) {
			request.setAttribute("msg", "Profile Updated successfully");
	
		}else {
			request.setAttribute("msg", "Something Wrong..Try again..!");
		}
		RequestDispatcher r=request.getRequestDispatcher("updateprofile");
		r.include(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
