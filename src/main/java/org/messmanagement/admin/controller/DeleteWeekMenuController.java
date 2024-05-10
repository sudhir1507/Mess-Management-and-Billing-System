package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.messmangement.admin.service.WeekMenuService;
import org.messmangement.admin.service.WeekMenuServiceImpl;


@WebServlet("/deleteweekmenu")
public class DeleteWeekMenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int mid=Integer.parseInt(request.getParameter("mid"));
		WeekMenuService wService=new WeekMenuServiceImpl();
		boolean b=wService.deleteWeekMenu(mid);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewWeekMenu.jsp");
			r.include(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("viewWeekMenu.jsp");
			r.include(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
