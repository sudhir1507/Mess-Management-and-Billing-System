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


import org.messmanagement.admin.model.WeekMenuModel;

import org.messmangement.admin.service.WeekMenuService;
import org.messmangement.admin.service.WeekMenuServiceImpl;


@WebServlet("/finalupdateweekmenu")
public class FinalUpdateWeekMenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String btn=request.getParameter("s");
		if(btn!=null) {
			int mid=Integer.parseInt(request.getParameter("mid"));
			//String menudate=request.getParameter("Date");
			//Date mdate=Date.valueOf(menudate);
			String lunch=request.getParameter("lunch");
			String dinner=request.getParameter("dinner");
			WeekMenuModel model=new WeekMenuModel();
			model.setMid(mid);
			//model.setDate(mdate);
			model.setLunch(lunch);
			model.setDinner(dinner);
			
			WeekMenuService wService=new WeekMenuServiceImpl();
			boolean b=wService.isUpdateWeekMenu(model);
			if(b) {
				RequestDispatcher r=request.getRequestDispatcher("viewWeekMenu.jsp");
				r.forward(request, response);
			}else {
				out.println("<h1>Menu Data Not Updated<h1>");
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
