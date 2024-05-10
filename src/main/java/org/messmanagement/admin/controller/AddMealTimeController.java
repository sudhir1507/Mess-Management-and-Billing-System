package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.messmanagement.admin.model.MealModel;

import org.messmangement.admin.service.MealTimeSerivceImpl;
import org.messmangement.admin.service.MealTimeService;


@WebServlet("/addmealtime")
public class AddMealTimeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String mealtype=request.getParameter("Mealtime");
		
		MealModel Model=new MealModel();
		Model.setMealtype(mealtype);
		MealTimeService mService=new MealTimeSerivceImpl();
		boolean b=mService.addMealTime(Model);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("addMealTime.jsp");
			r.include(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("addMealTime.jsp");
			out.println("<center>Some problem is there</center>");
			r.include(request, response);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
