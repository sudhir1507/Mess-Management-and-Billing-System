package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.print.DocFlavor.READER;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messmanagement.admin.model.RolesModel;
import org.messmangement.admin.service.RolesService;
import org.messmangement.admin.service.RolesServiceImpl;

@WebServlet("/finalroleupdate")
public class FinalRoleUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int roleid=Integer.parseInt(request.getParameter("roleid"));
		String rolename=request.getParameter("rolename");
		RolesModel model=new RolesModel();
		model.setRoleid(roleid);
		model.setRolename(rolename);
		RolesService rService=new RolesServiceImpl();
		boolean b=rService.updateRole(model);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewRoles.jsp");
			r.forward(request, response);
		}else {
			out.println("<h3>Role Not Updated<h3>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
