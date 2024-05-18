<%@page import="java.util.List"%>
<%@page import="org.messmanagement.admin.model.RegistrationModel"%>
<%@page import="org.messmangement.admin.service.RegistrationServiceImpl"%>
<%@page import="org.messmangement.admin.service.RegistrationService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<style type="text/css">

#dashboard{
background-color: #484848;

}
span{
color:#f5ffff;
font-size: 1.275em;
font-family:Sans-serif;

}
.innerspan{
color:white;
font-size: 1em;
}
#logoutbtn{
   text-decoration: none;
}

</style>
</head>
<body>
<%-- <jsp:include page="loginerror.jsp"></jsp:include> --%>
	<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 wrapper"  id="dashboard">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                <a href="#" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <span class="fs-5 d-none d-sm-inline px-2"><img src="images/profileimg.webp" alt="Profile" width="40" height="40" class="rounded-circle"></span><span>&nbsp;&nbsp;<br>Welcome back..!<br> 
                    <%
                    
                    int rid=Integer.parseInt(session.getAttribute("rid").toString());
                    RegistrationService rService=new RegistrationServiceImpl();
                    List<RegistrationModel> rlist=rService.getNameByRid(rid);
                    RegistrationModel rmodel=rlist.get(0);
                    int regid=rmodel.getRid();
                    String name=rmodel.getName();
                    %>
                    &nbsp;&nbsp;&nbsp;<%=name %>
                    </span>
                </a>
                <h3 style="color:white">---------------</h3>
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                   <li>
                        <a href="#submenu1" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Category Master</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu1" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="addCategory.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">Add Category</span></a>
                            </li>
                            <li>
                                <a href="viewCategory.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">View Category</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">MealTime Master</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="addMealTime.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">Add Meal Time</span></a>
                            </li>
                            <li>
                                <a href="viewMealTime.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">View Meal Time</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#submenu3" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Register Master</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu3" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="registration.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">Add Registration</span></a>
                            </li>
                            <li>
                                <a href="viewRegistration.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">View Registrations</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#submenu4" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Menu Master</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu4" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="addMenu.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">Add Menu</span></a>
                            </li>
                            <li>
                                <a href="viewWeekMenu.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">View Menu</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#submenu5" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Roles Master</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu5" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="addRoles.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">Add Roles</span></a>
                            </li>
                            <li>
                                <a href="viewRoles.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">View Roles</span></a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="#submenu6" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Attendence Master</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu6" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="attendenceTrack.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">Take attendence</span></a>
                            </li>
                            <li>
                                <a href="viewAttendance.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">View attendence</span></a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="#submenu7" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Bill Master</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu7" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="billGenerate.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">Generate Bill</span></a>
                            </li>
<!--                             <li> -->
<!--                                 <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline innerspan">View Bills</span></a> -->
<!--                             </li> -->
                        </ul>
                    </li>
                    <li id="logoutbtn">
                    	<a href="logoutvalidate" id="logoutbtn">
                    	     <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Logout</span></a>
                    	</a>
                    </li>
                   <%-- <li>
                        <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle ">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Bootstrap</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline">Item</span> 1</a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline">Item</span> 2</a>
                            </li>
                        </ul>
                    </li>
                     <li>
                        <a href="#submenu3" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-grid"></i> <span class="ms-1 d-none d-sm-inline">Products</span> </a>
                            <ul class="collapse nav flex-column ms-1" id="submenu3" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline">Product</span> 1</a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline">Product</span> 2</a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline">Product</span> 3</a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline">Product</span> 4</a>
                            </li>
                        </ul>
                    </li>
                    --%>
                </ul>
                <hr>
                <%--<div class="dropdown pb-4">
                    <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="https://github.com/mdo.png" alt="hugenerd" width="30" height="30" class="rounded-circle">
                        <span class="d-none d-sm-inline mx-1">Admin</span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
                        <li><a class="dropdown-item" href="#">New project...</a></li>
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Sign out</a></li>
                    </ul>
                </div>
                --%>
            </div>
        </div>
<!--        <div class="col-md-8"> -->
<!--             <img alt="" src="images/background.jpg" style="background-size: cover;"> -->
<!--        </div> -->
        
</body>
</html>