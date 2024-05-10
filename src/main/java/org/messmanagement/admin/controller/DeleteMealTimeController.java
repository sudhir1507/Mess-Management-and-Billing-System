package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.messmangement.admin.service.MealTimeSerivceImpl;
import org.messmangement.admin.service.MealTimeService;

@WebServlet("/deletemealtype")
public class DeleteMealTimeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int mtid=Integer.parseInt(request.getParameter("mtid"));
		MealTimeService mService=new MealTimeSerivceImpl();
		boolean b=mService.deleteMealType(mtid);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewMealTime.jsp");
			r.include(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("viewMealTime.jsp");
			r.include(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
