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

@WebServlet("/addweekmenu")
public class AddWeekMenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String mdate=request.getParameter("Mdate");
		Date menuDate=Date.valueOf(mdate);
		String lunch=request.getParameter("lunch");
		String dinner=request.getParameter("dinner");
		WeekMenuModel model=new WeekMenuModel();
		model.setDate(menuDate);
		model.setLunch(lunch);
		model.setDinner(dinner);
		WeekMenuService wService=new WeekMenuServiceImpl();
		boolean b=wService.addWeekMenu(model);
		if(b) {
			request.setAttribute("msg", "Menu Added Successfully..!");
		}else {
			request.setAttribute("msg", "Menu NOT Added..!");
		}
		RequestDispatcher r=request.getRequestDispatcher("addMenu.jsp");
		r.include(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
