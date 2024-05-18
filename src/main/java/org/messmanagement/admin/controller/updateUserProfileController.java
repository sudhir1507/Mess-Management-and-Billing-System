package org.messmanagement.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/updateprofile")
public class updateUserProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int rid=Integer.parseInt(request.getParameter("rid"));
		String name=request.getParameter("name");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		RequestDispatcher r=request.getRequestDispatcher("userdashboard.jsp");
		r.include(request, response);
		out.println("<html><head><style type=\"text/css\">");
		out.println("    .container {");
		out.println("        width: 60%;");
		out.println("        margin: 10px;");
		out.println("        padding: 10px;");
		out.println("        background-color: #ffffff;");
		out.println("        border-radius: 10px;");
		out.println("        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);");
		out.println("        text-align: left;");
		out.println("        font-family: Arial, sans-serif;");
		out.println("    }");
		out.println("    h2 {");
		out.println("        margin-bottom: 30px;");
		out.println("        color: #333;");
		out.println("        text-align: center;");
		out.println("    }");
		out.println("    .form-group {");
		out.println("        margin-bottom: 20px;");
		out.println("    }");
		out.println("    label {");
		out.println("        font-weight: bold;");
		out.println("        color: #555;");
		out.println("        display: inline-block;");
		out.println("        width: 150px; /* Adjust width as needed */");
		out.println("    }");
		out.println("    input[type=\"text\"],");
		out.println("    input[type=\"date\"],");
		out.println("    input[type=\"number\"],");
		out.println("    select {");
		out.println("        width: calc(100% - 160px); /* Adjust width to leave space for label */");
		out.println("        padding: 10px;");
		out.println("        border: 1px solid #ccc;");
		out.println("        border-radius: 5px;");
		out.println("        box-sizing: border-box;");
		out.println("    }");
		out.println("    input[type=\"submit\"] {");
		out.println("        width: 100%;");
		out.println("        padding: 10px;");
		out.println("        background-color: #007BFF;");
		out.println("        border: none;");
		out.println("        border-radius: 5px;");
		out.println("        color: #fff;");
		out.println("        font-size: 16px;");
		out.println("        cursor: pointer;");
		out.println("    }");
		out.println("    input[type=\"submit\"]:hover {");
		out.println("        background-color: #0056b3;");
		out.println("    }");
		out.println("</style>");
		out.println("<script type='text/javascript' src=\"JS/RegistrationValidations.js\">\r\n");
		out.println("</script>");
		out.println("<body onload=\"hidemessage()\">");
		out.println("<div class=\"col-md-8 offset-md-1\">");
		out.println("    <div class=\"container\">");
		out.println("        <h2>Update Profile</h2>");
		out.println("                <h5 id=\"automatic\" style=\"color: rgba(16, 163, 127);text-align: center;\"></h5>\r\n");
		out.println("        <hr>");
		out.println("        <form name=\"frm\" action='finalprofileupdate' method='POST'>");
		out.println("            <div class=\"form-group\">");
		//out.println("                <label for=\"rid\">Reg id:</label>");
		out.println("                <input type='hidden' id=\"rid\" name=\"rid\" value='"+rid+"'>");
		out.println("            </div>");
		out.println("            <div class=\"form-group\">");
		out.println("                <label for=\"name\">Name:</label>");
		out.println("                <input type=\"text\" id=\"name\" name=\"name\" value='"+name+"' required=\"required\" onkeyup='nameValidate(this.value)'>");
		out.println("            </div>");
		out.println("            <div class=\"form-group\">");
		out.println("                <label for=\"contact\">Contact:</label>");
		out.println("                <input type=\"text\" id=\"contact\" name=\"contact\" value='"+contact+"' required=\"required\">");
		out.println("            </div>");
		
		out.println("            <div class=\"form-group\">");
		out.println("                <label for=\"address\">Address:</label>");
		out.println("                <input type=\"text\" id=\"address\" name=\"address\" value='"+address+"' required=\"required\">");
		out.println("            </div>");
//		out.println("            <div class=\"form-group\">");
//		out.println("                <label for=\"registration_start\">Registration Start Date:</label>");
//		out.println("                <input type=\"date\" id=\"registration_start\" name=\"rsdate\" value='"+rsdate+"' required=\"required\">");
//		out.println("            </div>");
//		out.println("            <div class=\"form-group\">");
//		out.println("                <label for=\"registration_end\">Registration End Date:</label>");
//		out.println("                <input type=\"date\" id=\"registration_end\" name=\"redate\" value='"+redate+"' required=\"required\">");
//		out.println("            </div>");
//		out.println("            <div class=\"form-group\">");
//		out.println("                <label for=\"amount\">Amount:</label>");
//		out.println("                <input type=\"number\" id=\"amount\" name=\"amount\" value='"+amount+"' required=\"required\">");
//		out.println("            </div>");
		out.println("            <div class=\"form-group\">");
		out.println("                <label for=\"username\">Email:</label>");
		out.println("                <input type=\"text\" id=\"username\" name=\"username\" value='"+email+"' required=\"required\">");
		out.println("            </div>");
		out.println("            <div class=\"form-group\">");
		out.println("                <label for=\"password\">Password:</label>");
		out.println("                <input type=\"password\" id=\"password\" name=\"password\" value='"+password+"' required=\"required\">");
		out.println("            </div>");
//		CategoryService cService=new CategoryServiceImpl();
//		List<CategoryModel> list=cService.getAllCategories();
//		LinkedHashMap<Integer,String> hs=new LinkedHashMap<Integer,String>();
//		for(CategoryModel model:list) {
//			hs.put(model.getCid(), model.getCategory());
//		}
//
//		out.println("            <div class=\"form-group\">");
//		out.println("                <label for=\"category\">Category:</label>");
//		out.println("                <select id=\"category\" name=\"category\" required=\"required\">");
//		out.println("                    <option style='color:black;' value=\"\">Select Category</option>");
//		//out.println("                    <%");
//		 Set<Map.Entry<Integer, String>> s=hs.entrySet();
//		 for(Map.Entry<Integer, String> m:s) {
//			 out.println("                    <option  value='" + m.getKey() + "' style='color:black;'>" + m.getValue() + "</option>");
//		 }
//		 out.println("                </select>");
//		 out.println("            </div>");
//
//		 RolesService rService=new RolesServiceImpl();
//			List<RolesModel> rlist=rService.getAllRoles();
//			LinkedHashMap<Integer,String> rs=new LinkedHashMap<Integer,String>();
//			for(RolesModel model:rlist) {
//				rs.put(model.getRoleid(), model.getRolename());
//			}
//			out.println("            <div class=\"form-group\">");
//			out.println("                <label for=\"rolename\">Role:</label>");
//			out.println("                <select id=\"rolename\" name=\"rolename\" required=\"required\">");
//			out.println("                    <option style='color:black;' value=\"\">Select Role</option>");
//			//out.println("                    <%");
//			 Set<Map.Entry<Integer, String>> set=rs.entrySet();
//			 for(Map.Entry<Integer, String> m:set) {
//				 out.println("                    <option  value='" + m.getKey() + "' style='color:black;'>" + m.getValue() + "</option>");
//			 }
//		out.println("                </select>");
//		out.println("            </div>");
		out.println("            <input type=\"submit\" value=\"Update\">");
		out.println("        </form>");
		out.println("    </div>");
		out.println("</div>");
		String msg = (String) request.getAttribute("msg");

		if (msg != null) {
			out.println("<script>");
			out.println("function hidemessage() {");
			out.println("    var hideElement = document.getElementById(\"automatic\");");
			out.println("    var originalText = hideElement.innerHTML;");
			out.println("    var typemessage = \"" + msg + "\";"); // Assuming 'msg' is a variable holding the message
			out.println("    if (typemessage) {");
			out.println("        hideElement.innerHTML = typemessage;");
			out.println("        setTimeout(function() {");
			out.println("            hideElement.innerHTML = originalText;");
			out.println("        }, 5000); // Change 5000 to 5000 milliseconds (5 seconds)");
			out.println("    }");
			out.println("}");
			out.println("</script>");

		}
		out.println("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>");

		out.println("</body>");
        out.println("</html>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
