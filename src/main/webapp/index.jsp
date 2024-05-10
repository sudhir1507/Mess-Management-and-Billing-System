<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mess Management and Billing System</title>
<link rel="stylesheet" href="CSSSTYLE/index.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">
.topnav{
background-color:#469c99;

}
.topnavitem{
color:#e9fbf8;
}
#bgimg{
background-image: url("images/background.jpg");
opacity: 0.9;
}
.card1:hover{
	border-color:blue;
	color:black;
	box-shadow: 10px 10px 10px 10px rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	transform: scale(1.01);
}
.slider img{
   border:0.1em solid black;
   opacity: 1;
   
}
.specility{
 color:red;
 font-size:2em;
 font-family:serif; 
 direction:left; 
 loop:"";
}
.middletext{
color:#FFFFCC;
}
.sliderbg{
background-color:  #E6F7FF;
}
.special h1{
    font-family: sans-serif;
    color:#459ed9;
}
.special h2{
    font-family: sans-serif;
    color:#eb8a51;
}
/* #readmore{ */
/*     width:120px; */
/*     height:40px; */
/*      background-color: pink; */
/*      border: 2px solid pink; */
/*      border-radius: 20px; */
/*      padding: 3px; */
/* } */
/* #bgimge{ */
/* 	background-image: url('images/background.jpg'); */
/* 	background-size: cover; */
/* 	background-repeat: no-repeat; */
/* } */
</style>
</head>
<body>
  <div id="bgimge">
	  <div class="container-fluid">
	<div class="row" id="home">
<!--       <div class="col-md-12"> -->
         <nav class="navbar navbar-expand-lg topnav fixed-top">
        <div class="container-fluid">
            <a href="#" class="navbar-brand bg-light rounded">
                <img src="images/ktn.webp" height="34" alt="kitchen" >
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon text-white bg-dark"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav" >
                    <a href="#home" class="nav-item nav-link fs-5 p-2 px-2 topnavitem">Home</a>
                    <a href="#" class="nav-item nav-link fs-5 p-2 topnavitem px-2">About Us</a>
                    <a href="#daliymenu" class="nav-item nav-link fs-5 p-2 topnavitem px-2">Daily Menu</a>
                    <a href="#ourspecial" class="nav-item nav-link fs-5 p-2 topnavitem px-2">Our Special</a>
                    <a href="#" class="nav-item nav-link fs-5 p-2 topnavitem px-2">Contact Us</a>
                </div>
       			<div class="navbar-nav ms-auto px-5">
       			   <a class="btn btn-secondary" href="login.jsp" role="button">
  							 LOGIN 
 						</a> 
<!--                     <div class="dropdown"> -->
<!--   						<a class="btn btn-secondary dropdown-toggle topnavitem" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false"> -->
<!--    							 LOGIN -->
<!--   						</a> -->
                
<!--   					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink"> -->
<!--     					<li><a class="dropdown-item" href="login.jsp">ADMIN LOGIN</a></li> -->
<!--    					 	<li><a class="dropdown-item" href="userlogin.jsp">USER LOGIN</a></li> -->
    					
<!--   					</ul> -->
<!-- 				   </div> -->
                </div>
            </div>
        	</div>
    	</nav>
<!--       </div> -->
    </div>
    <div class="row display-6 p-md-5 mt-5" id="bgimg">
      <div class="col-md-5 offset-md-1 middletext">
        <p class="fst-italic fw-bold fs-3">WELCOME TO  MESS</p>
        <p class="fst-italic fw-bold">ENJOY YOUR DELICIOUS FOOD</p>
        <p class="fw-bold">VEG & NON VEG MESS</p>
        <p class="fw-bold fst-italic text-info">WE ARE JUST A CALL AWAY 9090568780</p>
<!--         <a href="#" class="btn" id='readmore'>Read more...</a> -->
         
      </div>

      <div class="col-md-5 offset-md-1">
        <img src="images/kitchens.jpg" class="img-thumbnail img-fluid w-auto float-md-end" alt="kitchen">
      </div>
    </div>
    <div class="row p-4 justify-content-center text-center sliderbg" id="daliymenu">
      <div class="col-md-8">
      <marquee class="specility pb-2" >Daily Menu</marquee> 
        <div id="carouselExampleCaptions" class="carousel" data-bs-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active slider">
              <img src="images/breakfast.jpg" class="d-block w-100" class="img-thumbnail" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5 class="fw-bold display-6 txtcolor">BREAK FAST</h5>
                <p class="fst-italic fs-4">Start your day in style.</p>
              </div>
            </div>
            <div class="carousel-item slider">
              <img src="images/non-veg thali.jpeg" class="d-block w-100" class="img-thumbnail" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5 class="fw-bold display-6 txtcolor">NON VEG THALI</h5>
                <p class="fst-italic fs-4">Spice up Your Life with Non-Veg.</p>
              </div>
            </div>
            <div class="carousel-item slider">
              <img src="images/thali4.jpeg" class="d-block w-100" class="img-thumbnail" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5 class="fw-bold display-6 txtcolor">VEG THALI</h5>
                <p class="fst-italic fs-4">Fullfil yourself with veg .</p>
              </div>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
    </div>
    
    <div class="row text-center px-5 pb-5 pt-2">
      <h1 class="special" id="ourspecial" style="color:#459ed9">Our Special</h1> 
      <h3 class="special pb-3" style="color:#eb8a51">We provide a best food</h3>
      <div class="col-md-3">
        <div class="card p-4 card1">
          <img src="images/monthly mess.jpg" class="card-img-top img-fluid" alt="...">
          <div class="card-body">
            <h5 class="card-title">Monthly Mess</h5>
            <p class="card-text">Consists of Salad, 3 Mini Rotis, One dry curry, One wet curry, Dal, Plain Rice, Papad, Pickle,..
              </p>
            <a href="#" class="btn btn-primary">Read more...</a>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card p-4 card1">
          <img src="images/riseplate.jpg" class="card-img-top img-fluid" alt="...">
          <div class="card-body">
            <h5 class="card-title">Rise Plate</h5>
            <p class="card-text">We provide a large plate filled with a mound of steaming  hot rice, spicy curry, chapatis, 
              piclke etc.</p>
            <a href="#" class="btn btn-primary">Read more...</a>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card p-4 card1">
          <img src="images/shabudana.jpg" class="card-img-top img-fluid" alt="...">
          <div class="card-body">
            <h5 class="card-title">BreakFast</h5>
            <p class="card-text">Our breakfast is light morning meal typically consisting of Poha, Idali, Dosa, Khichadi 
              & many more..</p>
            <a href="#" class="btn btn-primary">Read more...</a>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card p-4 card1">
          <img src="images/sunday specail.jpg" class="card-img-top img-fluid" alt="...">
          <div class="card-body">
            <h5 class="card-title">Sunday Special</h5>
            <p class="card-text">Biryani consist of, mutton fry, mutton soup, and a delicious khichdi cooked in mutton broth. 
            </p>
            <a href="#" class="btn btn-primary">Read more...</a>
          </div>
        </div>
      </div>
    </div>
    <div class="row bg-dark mt-3">
      <div class="col-md-12">
        <!-- Footer -->
        <footer class="text-center text-lg-start bg-body-tertiary text-white">
          <!-- Section: Social media -->
          <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
          </section>
          <!-- Section: Social media -->

          <!-- Section: Links  -->
          <section class="">
            <div class="container text-center text-md-start mt-5">
              <!-- Grid row -->
              <div class="row mt-3">
                <!-- Grid column -->
                <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                  <!-- Content -->
                  <h6 class="text-uppercase fw-bold mb-4">
                    <i class="fas fa-gem me-3"></i>Homes Kitchen
                  </h6>
                  <p>
                    We specialize in different kind of meal , i.e., Breakfast, Lunch/Dinner, Snack, Rice Bowl, etc
                  </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                  <!-- Links -->
                  <h6 class="text-uppercase fw-bold mb-4">
                    Speciality
                  </h6>
                  <p>
                    <a href="#!" class="text-reset">Maharastrain thali</a>
                  </p>
                  <p>
                    <a href="#!" class="text-reset">Misal</a>
                  </p>
                  <p>
                    <a href="#!" class="text-reset">Non veg thali</a>
                  </p>
                  <p>
                    <a href="#!" class="text-reset">Daily spacial thali</a>
                  </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                  <!-- Links -->
                  <h6 class="text-uppercase fw-bold mb-4">
                    Useful links
                  </h6>
                  <p>
                    <a href="#!" class="text-reset">Pricing</a>
                  </p>
                  <p>
                    <a href="#!" class="text-reset">Settings</a>
                  </p>
                  <p>
                    <a href="#!" class="text-reset">Orders</a>
                  </p>
                  <p>
                    <a href="#!" class="text-reset">Help</a>
                  </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                  <!-- Links -->
                  <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                  <p><i class="fas fa-home me-3"></i>Karve nagar, Pune</p>
                  <p>
                    <i class="fas fa-envelope me-3"></i>
                    vaibhav@gmail.com
                  </p>
                  <p><i class="fas fa-phone me-3"></i>+ 91 9845678394</p>
                  <p><i class="fas fa-print me-3"></i>+ 91 9987438943</p>
                </div>
                <!-- Grid column -->
              </div>
              <!-- Grid row -->
            </div>
          </section>
          <!-- Section: Links  -->

          <!-- Copyright -->
          <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
            © 2024 Copyright:
            <a class="text-reset fw-bold" href="#">Homeskitchen.com</a>
          </div>
          <!-- Copyright -->
        </footer>
        <!-- Footer -->
      </div>
    </div>
    
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</body>
</html>
