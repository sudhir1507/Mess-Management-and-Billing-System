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
import org.messmangement.admin.service.AttenedanceService;
import org.messmangement.admin.service.AttenedanceServiceImpl;


@WebServlet("/attendance")
public class TrackAttendanceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int rid=Integer.parseInt(request.getParameter("rid"));
		//String category=request.getParameter("cid");
		String atdate=request.getParameter("adate");
		Date date=Date.valueOf(atdate);
		//int aStatus=Integer.parseInt(request.getParameter("astatus"));
		int mtid=Integer.parseInt(request.getParameter("mealtype"));
		int aStatus=1;
		AttenedanceService aService=new AttenedanceServiceImpl();
		boolean b=aService.trackAttendance(rid,date,aStatus,mtid);
		
		if(b) {
			request.setAttribute("msg", "Attendance tracked successfully");
		}else {
			request.setAttribute("msg", "Attendance NOT tracked successfully");
		}
		RequestDispatcher r=request.getRequestDispatcher("attendenceTrack.jsp");
		r.include(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
