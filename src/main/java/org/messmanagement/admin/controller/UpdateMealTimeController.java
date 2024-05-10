package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updatemealtime")
public class UpdateMealTimeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int mtid=Integer.parseInt(request.getParameter("mtid"));
		String mealtype=request.getParameter("mealtype");
		
		RequestDispatcher r=request.getRequestDispatcher("admindashboard.jsp");
		r.include(request, response);
		out.println("<html><head><style>");
		out.println(".container {");
		out.println("width:50em;");
		out.println("padding:2em;");
		out.println("border: 2px solid gray");
		out.println("}");
		out.println(".form-group label {");
		out.println("  font-weight: bold;");
		out.println("}");
		out.println(".form-control {");
		out.println("  width: 100%;");
		out.println("  padding: 8px;");
		out.println("  margin-top: 5px;");
		out.println("}");
		out.println(".btn {");
		out.println("  background-color: #007BFF;");
		out.println("  color: white;");
		out.println("  padding: 10px 20px;");
		out.println("  border: none;");
		out.println("  cursor: pointer;");
		out.println("}");
		out.println("</style>");
		out.println("<script type='text/javascript' src='JS/AllValidations.js'>");
		out.println("</script>");
		out.println("<body>");
		out.println("<div class='col-md-8 mt-5'>");
        out.println("<div class='container'>");
            out.println("<form name='frm' action='finalmealtimeupdate' method='POST'>");
                out.println("<h3 style='font-family:Arial, sans-serif'>");
                out.println("Update Meal Time Data");
                out.println("</h3>");
                out.println("<hr>");
                out.println(" <div class='form-group'>");
                out.println("<input type='hidden' class='form-control mt-1'value='"+mtid+"' name='mtid'>");
                 out.println("</div>"); 
                out.println(" <div class='form-group'>");
                out.println("<label for='name'>");
                out.println("Meal Time Name :");
                out.println("</label>");
                out.println("<input type='text' class='form-control mt-1'value='"+mealtype+"' name='mealtype' required>");
                 out.println("</div>");  
                
                 out.println("<br>");
                 out.println("<button type='submit' class='btn' name='s' style='background-color: #007BFF;'>");
                 out.println("Update");
                 out.println("</button>");
                 out.println(" </form>");
                 out.println("</div></div></div></div>");
                 out.println("</body>");
                 out.println("</html>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
