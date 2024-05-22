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

import org.messmangement.admin.service.RegistrationService;
import org.messmangement.admin.service.RegistrationServiceImpl;

@WebServlet("/finalregupdate")
public class FinalRegistrationUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int rid=Integer.parseInt(request.getParameter("rid"));
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
		int roleid=Integer.parseInt(request.getParameter("rolename"));
		RegistrationService rService=new RegistrationServiceImpl();
		boolean b=rService.updateRegistration(rid,name,contact,address,rsdate,redate,amount,username,password,cid,roleid);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewreg.jsp");
			r.forward(request, response);
		}else {
			out.println("<h1>Registration Not Updated<h1>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
