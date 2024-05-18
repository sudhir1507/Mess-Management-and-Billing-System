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

@WebServlet("/getmenu")
public class GetMenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String tdate=request.getParameter("menu");
		Date date=Date.valueOf(tdate);
		RequestDispatcher r=request.getRequestDispatcher("userdashboard.jsp");
        r.include(request, response);
        out.println("<style type=\"text/css\">");
        out.println("table {");
        out.println("  border-collapse: collapse;");
        out.println("  margin:0;");
        out.println("  padding: 0;");
        out.println("  width: 100%;");
        out.println("  table-layout: fixed;");
        out.println("  background: #fefefe;");
        out.println("}");
        out.println("");
        out.println("table caption {");
        out.println("  font-size: 1.5em;");
        out.println("  margin: 0.5em  0.75em;");
        out.println("  color: black;");
        out.println("}");
        out.println("");
        out.println("table thead{");
        out.println("  background:#1976d2;");
        out.println("  border-bottom: none;");
        out.println("  color: #fff;");
        out.println("}");
        out.println("");
        out.println("table tr {");
        out.println("  padding: .35em;");
        out.println("}");
        out.println("");
        out.println("table tr:nth-child(even) {");
        out.println("  background: #f0f0f0;");
        out.println("}");
        out.println("");
        out.println("table tbody tr:hover {");
        out.println("  background: #d9e3e8;");
        out.println("}");
        out.println("");
        out.println("table th,");
        out.println("table td {");
        out.println("  padding: 0.625em;");
        out.println("  text-align: center;");
        out.println("}");
        out.println("");
        out.println("table th {");
        out.println("  font-size: .85em;");
        out.println("  letter-spacing: .1em;");
        out.println("  text-transform: uppercase;");
        out.println("}");
        out.println("");
        out.println("@media screen and (max-width: 600px) {");
        out.println("  table {");
        out.println("    border: 0;");
        out.println("  }");
        out.println("");
        out.println("  table caption {");
        out.println("    font-size: 1.3em;");
        out.println("  }");
        out.println("");
        out.println("  table thead th {");
        out.println("    display: none;");
        out.println("  }");
        out.println("");
        out.println("  table tr {");
        out.println("    display: block;");
        out.println("  }");
        out.println("");
        out.println("  table td {");
        out.println("    /* border-bottom: 1px solid #ddd; */");
        out.println("    display: block;");
        out.println("    text-align: left;");
        out.println("  }");
        out.println("");
        out.println("  table td::before {");
        out.println("    content: attr(data-label);");
        out.println("    display: block;");
        out.println("    font-weight: light;");
        out.println("    text-transform: uppercase;");
        out.println("    font-size: 0.7em;");
        out.println("    margin-bottom: 0.6em;");
        out.println("    color: #1976d2;");
        out.println("  }");
        out.println("");
        out.println("  table td:last-child {");
        out.println("    border-bottom: 0;");
        out.println("  }");
        out.println("}");
        out.println("#catcaption{");
        out.println("  justify-content: center;");
        out.println("  text-align: center;");
        out.println("  font-family: sans-serif;");
        out.println("  font-size: 1.5em;");
        out.println("  margin-bottom: 0.5em;");
        out.println("  padding: 0.3em;");
        out.println("  width: 20em;");
        out.println("  height: 2em;");
        out.println("  background-color: #1976d2;");
        out.println("  border-radius: 20px;");
        out.println("  color: white;");
        out.println("}");
        out.println("</style>");
		
		    out.println("<div class=\"col-md-8 offset-md-1 mt-5\">");
		    out.println("<br> <br>");
		    out.println("<center><h2 id=\"catcaption\">Here Is Today's Menu</h2></center>");
		    out.println("<table class=\"table table-hover\">");
		    out.println("<thead>");
		    out.println("<tr>");
		    out.println("<th>Sr.No.</th>");
		    out.println("<th>Date</th>");
		    out.println("<th>Lunch</th>");
		    out.println("<th>Dinner</th>");
		    
		    out.println("</tr>");
		    out.println("</thead>");
		    out.println("<tbody>");
		    WeekMenuService menuService=new WeekMenuServiceImpl();
			WeekMenuModel model  =menuService.getTodaysMenu(date);
		    int count = 0;
		    if(model!=null) {
		        out.println("<tr>");
		        out.println("<td data-label=\"count\">" + (++count) + "</td>");
		        out.println("<td data-label=\"Date\">" + model.getDate() + "</td>");
		        out.println("<td data-label=\"lunch\">" + model.getLunch() + "</td>");
		        out.println("<td data-label=\"dinner\">" + model.getDinner() + "</td>");
		        
		        out.println("</tr>");
		    
		    out.println("</tbody>");
		    out.println("</table>");
		    }else {
		    	out.println("<center><h1>Wait Menu is Not Updated..!</h1><center>");
		    }
		    out.println("</div>");
		    out.println("</div>");
		    out.println("</div>");
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
