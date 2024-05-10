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


@WebServlet("/deletecategory")
public class DeleteCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int cid=Integer.parseInt(request.getParameter("cid"));
		CategoryService cService=new CategoryServiceImpl();
		boolean b=cService.deleteCategory(cid);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewCategory.jsp");
			r.include(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("viewCategory.jsp");
			r.include(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
