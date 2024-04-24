<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mess Management and Billing System</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link href="CSS/index.css" rel="stylesheet"/>
</head>
<body style="background-image: url('images/background.jpg')">
	  <div class="container-fluid">
	<div class="row">
      <div class="col-md-12">
         <nav class="navbar navbar-expand-lg bg-dark">
        <div class="container-fluid">
            <a href="#" class="navbar-brand bg-light rounded">
                <img src="images/ktn.webp" height="34" alt="kitchen" >
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon text-white bg-dark"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav">
                    <a href="#" class="nav-item nav-link  text-white fs-4 p-2">Home</a>
                    <a href="#" class="nav-item nav-link text-white fs-4 p-2">About Us</a>
                    <a href="#" class="nav-item nav-link text-white fs-4 p-2">Features</a>
                    <a href="#" class="nav-item nav-link text-white fs-4 p-2">Pricing</a>
                    <a href="#" class="nav-item nav-link text-white fs-4 p-2">Contact Us</a>
                </div>
       			<div class="navbar-nav ms-auto px-5">
                    <div class="dropdown">
  						<a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
   							 LOGIN
  						</a>

  					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    					<li><a class="dropdown-item" href="adminlogin.jsp">ADMIN LOGIN</a></li>
   					 	<li><a class="dropdown-item" href="userlogin.jsp">USER LOGIN</a></li>
    					
  					</ul>
				   </div>
                </div>
            </div>
        	</div>
    	</nav>
      </div>
    </div>
    <div class="row mt-2 mb-2 display-6 p-md-5">
      <div class="col-md-6 text-white">
        <p class="fst-italic fw-bold fs-3">WELCOME TO  MESS</p>
        <p class="fst-italic fw-bold">ENJOY YOUR DELICIOUS FOOD</p>
        <p class="fw-bold">VEG & NON VEG MESS</p>
        <p class="fw-bold fst-italic text-info">WE ARE JUST A CALL AWAY 9090568780</p>

      </div>

      <div class="col-md-6">
        <img src="images/kitchens.jpg" class="img-thumbnail img-fluid w-auto float-md-end" alt="kitchen">
      </div>
    </div>
    <div class="row mt-2 p-4 justify-content-center bg-secondary">
      <div class="col-md-9">
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="images/breakfast.jpg" class="d-block w-100" class="img-thumbnail" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5 class="fw-bold display-6 txtcolor">BREAK FAST</h5>
                <p class="fst-italic fs-4">Start your day in style.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="images/non-veg thali.jpeg" class="d-block w-100" class="img-thumbnail" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5 class="fw-bold display-6 txtcolor">NON VEG THALI</h5>
                <p class="fst-italic fs-4">Spice up Your Life with Non-Veg.</p>
              </div>
            </div>
            <div class="carousel-item">
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
    
    <div class="row mt-3">
      <div class="col-md-3">
        <div class="card">
          <img src="images/monthly mess.jpg" class="card-img-top img-fluid" alt="...">
          <div class="card-body">
            <h5 class="card-title">Monthly Mess</h5>
            <p class="card-text">Consists of Salad, 3 Mini Rotis, One dry curry, One wet curry, Dal, Plain Rice, Papad, Pickle, Raita, One sweet
              </p>
            <a href="#" class="btn btn-primary">Read more...</a>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card">
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
        <div class="card">
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
        <div class="card">
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</body>
</html>
