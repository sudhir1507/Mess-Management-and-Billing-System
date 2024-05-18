package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messmanagement.admin.model.BillModel;
import org.messmanagement.admin.model.TempBillModel;
import org.messmangement.admin.service.BillGenerateService;
import org.messmangement.admin.service.BillGenerateServiceImpl;


@WebServlet("/billgenerate")
public class BillGeneratorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int rid=Integer.parseInt(request.getParameter("uname"));
		String d=request.getParameter("bdate");
		Date bdate=Date.valueOf(d);
		BillGenerateService bService=new BillGenerateServiceImpl();
		List<TempBillModel> list=bService.billGenerator(rid,bdate);
		if(list!=null) {
			TempBillModel model=list.get(0);
			int bid=model.getBillid();
			int regid=model.getRid();
			String  name=model.getName();
			Date bgdate=model.getBilldate();
			Date rsdate=model.getSdate();
			Date redate=model.getEdate();
			int totalamount=model.getTotalAmount();
			int remain=model.getRemainingAmount();
			int paid=model.getPaidAmount();
			int presnt=model.getPresent();
			RequestDispatcher r=request.getRequestDispatcher("admindashboard.jsp");
	        r.include(request, response);
	        out.println("<html><head><style>");
	        out.println("<style>");
	        out.println("body {");
	        out.println("    font-family: Arial, sans-serif;");
	        out.println("    background-color: #f4f4f4;");
	        out.println("    margin: 0;");
	        out.println("    padding: 0;");
	        out.println("}");
	        out.println("");
	        out.println(".container {");
	        out.println("    max-width: 800px;");
	        out.println("    margin: 20px auto;");
	        out.println("    background-color: #fff;");
	        out.println("    border:2px solid black;");
	        out.println("    border-radius: 5px;");
	        out.println("    box-shadow: 5px 5px 10px 10px rgba(0, 0, 0, 0.1);");
	        out.println("    padding: 20px;");
	        out.println("}");
	        out.println("");
	        out.println("table {");
	        out.println("    width: 100%;");
	        out.println("    border-collapse: collapse;");
	        out.println("}");
	        out.println("");
	        out.println("th, td {");
	        out.println("    padding: 10px;");
	        out.println("    text-align: left;");
	        out.println("    border-bottom: 1px solid #ddd;");
	        out.println("}");
	        out.println("");
	        out.println("th {");
	        out.println("    background-color: #f2f2f2;");
	        out.println("}");
	        out.println("");
	        out.println("tr:nth-child(even) {");
	        out.println("    background-color: #f9f9f9;");
	        out.println("}");
	        out.println("");
	        out.println("tr:hover {");
	        out.println("    background-color: #f2f2f2;");
	        out.println("}");
	        out.println("");
	        out.println("th:first-child,");
	        out.println("td:first-child {");
	        out.println("    width: 30%;");
	        out.println("}");
	        out.println("");
	        out.println("th:nth-child(2),");
	        out.println("td:nth-child(2) {");
	        out.println("    width: 70%;");
	        out.println("}");
	        out.println("</style>");
	        out.println("<script>");
	        out.println("function printDiv(divId) {");
	        out.println("   var printContents = document.getElementById(divId).innerHTML;");
	        out.println("   var originalContents = document.body.innerHTML;");
	        out.println("   document.body.innerHTML = printContents;");
	        out.println("   window.print();");
	        out.println("   document.body.innerHTML = originalContents;");
	        out.println("}");
	        out.println("</script>");
	        
	        out.println("</head>");
	        out.println("<body>");
	        out.println("<div class='col-md-8 mt-5'>");
	        out.println("<div class=\"container\" id='printableArea'>");
	        out.println("    <table>");
	        out.println("        <tr><th></th><th colspan=\"2\"><h3>Homes kitchen</h3></th></tr>");
	        out.println("        <tr>");
	        out.println("            <th>Bill Number</th>");
	        out.println("            <td>"+bid+"</td>");
	        out.println("        </tr>");
	        out.println("        <tr>");
	        out.println("            <th>Bill Date</th>");
	        out.println("            <td>"+bgdate+"</td>");
	        out.println("        </tr>");
	        out.println("        <tr>");
	        out.println("            <th>Customer Name</th>");
	        out.println("            <td>"+name+"</td>");
	        out.println("        </tr>");
	        out.println("        <tr>");
	        out.println("            <th>Duration</th>");
	        out.println("            <td>"+rsdate+" "+"<span style='color:black;font-size:16px;'> - </span>"+" "+redate+"</td>");
	        out.println("        </tr>");
	        out.println("        <tr>");
	        out.println("            <th>Total Advanace paid</th>");
	        out.println("            <td>"+paid+"</td>");
	        out.println("        </tr>");
	        out.println("        <tr>");
	        out.println("            <th>Total amount</th>");
	        out.println("            <td>"+totalamount+"</td>");
	        out.println("        </tr>");
//	        out.println("        <tr>");
//	        out.println("            <th>Remaining</th>");
//	        out.println("            <td>1100</td>");
//	        out.println("        </tr>");
	        out.println("        <tr>");
	        out.println("            <th>Presenty</th>");
	        out.println("            <td>"+presnt+"</td>");
	        out.println("        </tr>");
	        int payablebill=0;
	        int actualbill=presnt*50;
	        if(paid>actualbill) {
	        	payablebill=0;
	        }else {
	        	payablebill=actualbill-paid;
	        }
	        out.println("        <tr>");
	        out.println("            <th>Bill upto Today</th>");
	        out.println("            <td>"+actualbill+"</td>");
	        out.println("        </tr>");
	        out.println("        <tr>");
	        out.println("            <th>Payable amount</th>");
	        out.println("            <td>"+payablebill+"</td>");
	        out.println("        </tr>");
	        out.println("        <tr>");
	        out.println("  <td>     </td>");
	        out.println("<td style='padding-left:100px;'><input type=\"button\" onclick=\"printDiv('printableArea')\" value=\"Print\" style='background-color:blue;border-redius:20px;width:100px;color:white;' /></td>");
	        
	        out.println("        </tr>");
	        out.println("    </table>");
	        
	        out.println("</div>");
	        out.println("</div>");
	      
	        out.println("</div></div>");
	        out.println("</body>");
	        out.println("</html>");
		}else {
			out.println("not generated bill");
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
