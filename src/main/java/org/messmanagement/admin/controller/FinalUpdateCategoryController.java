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



@WebServlet("/finalcategoryupdate")
public class FinalUpdateCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String btn=request.getParameter("s");
		if(btn!=null) {
			int cid=Integer.parseInt(request.getParameter("cid"));
			String category=request.getParameter("category");
			int fees=Integer.parseInt(request.getParameter("fees"));
			CategoryModel model=new CategoryModel();
			model.setCid(cid);
			model.setCategory(category);
			model.setFees(fees);
			out.println(cid+"\t"+category+"\t"+fees);
			CategoryService cService=new CategoryServiceImpl();
			boolean b=cService.isUpdateCategory(model);
			if(b) {
				RequestDispatcher r=request.getRequestDispatcher("viewCategory.jsp");
				r.forward(request, response);
			}else {
				out.println("<h1>Category Data Not Updated<h1>");
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
