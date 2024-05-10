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

@WebServlet("/finalmealtimeupdate")
public class FinalUpdateMealTimeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String btn=request.getParameter("s");
		if(btn!=null) {
			int mtid=Integer.parseInt(request.getParameter("mtid"));
			String mealtype=request.getParameter("mealtype");
			MealModel model=new MealModel();
			model.setMtid(mtid);
			model.setMealtype(mealtype);
			MealTimeService mService=new MealTimeSerivceImpl();
			boolean b=mService.isUpdateMealTime(model);
			if(b) {
				RequestDispatcher r=request.getRequestDispatcher("viewMealTime.jsp");
				r.forward(request, response);
			}else {
				out.println("<h1>Meal Time Data Not Updated<h1>");
			}
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
