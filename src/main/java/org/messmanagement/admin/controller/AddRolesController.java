package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messmanagement.admin.model.RolesModel;
import org.messmangement.admin.service.RolesService;
import org.messmangement.admin.service.RolesServiceImpl;

@WebServlet("/addroles")
public class AddRolesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String rolename=request.getParameter("rolename");
		RolesModel model=new RolesModel();
		model.setRolename(rolename);
		RolesService rService=new RolesServiceImpl();
		boolean b=rService.addRoles(model);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("addRoles.jsp");
			r.forward(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("addRoles.jsp");
			out.println("<center>Role Not Added..Some problem is there</center>");
			r.include(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
