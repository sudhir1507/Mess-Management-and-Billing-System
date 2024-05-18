package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logoutvalidate")
public class LogoutValidateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession(false); // Retrieve existing session, don't create a new one
		if (session != null) {
		   // int rid = (int) session.getAttribute("rid");
		   // System.out.println(rid);
            session.removeAttribute("rid");
		    session.invalidate(); // Invalidate the session
		  //  System.out.println("Session invalidated.");
		   // System.out.println(session);
		   // System.out.println(rid);
		    // Redirect to login page after session invalidation
		    response.sendRedirect("login.jsp");
		} else {
		    // Handle the case where session is already null
		    response.sendRedirect("login.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
