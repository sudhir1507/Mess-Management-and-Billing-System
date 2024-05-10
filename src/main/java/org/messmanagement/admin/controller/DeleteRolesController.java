package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messmangement.admin.service.RolesService;
import org.messmangement.admin.service.RolesServiceImpl;


@WebServlet("/deleteroles")
public class DeleteRolesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int roleid=Integer.parseInt(request.getParameter("roleid"));
		RolesService rService=new RolesServiceImpl();
		
		boolean b=rService.deleteRoles(roleid);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewRoles.jsp");
			r.forward(request, response);
		}else {
			out.println("<h3>Role Not Deleted <h3>");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
