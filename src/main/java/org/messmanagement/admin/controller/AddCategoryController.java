package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messmanagement.admin.model.CategoryModel;
import org.messmangement.admin.service.CategoryService;
import org.messmangement.admin.service.CategoryServiceImpl;


@WebServlet("/addcategory")
public class AddCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String category=request.getParameter("category");
		int fees=Integer.parseInt(request.getParameter("fees"));
		CategoryModel cModel=new CategoryModel();
		cModel.setCategory(category);
		cModel.setFees(fees);
		CategoryService cService=new CategoryServiceImpl();
		boolean b=cService.addCategory(cModel);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("addCategory.jsp");
			r.include(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("addCategory.jsp");
			out.println("<center>Some problem is there</center>");
			r.include(request, response);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
