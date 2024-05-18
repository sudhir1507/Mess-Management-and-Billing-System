<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mess Management and Billing System</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poetsen+One&display=swap" rel="stylesheet">

<link rel="stylesheet" href="CSSSTYLE/index.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style type="text/css">
.poetsen-one-regular {
  font-family: "Poetsen One", sans-serif;
  font-weight: 400;
  font-style: normal;
  color:white;
}

.topnav {
    background-color: #469c99;
    direction: rtl; /* Set direction to right-to-left */
}

.topnavitem {
    color: #e9fbf8;
}

#bgimg {
    background-image: url("images/background.jpg");
    opacity: 0.9;
}
.card1{
    box-shadow: 10px 10px 10px 10px rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);

}
.card1:hover {
    border-color: blue;
    color: black;
    box-shadow: 10px 10px 10px 10px rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    transform: scale(1.09);
}

.slider img {
    border: 0.1em solid black;
    opacity: 1;
}

.specility {
    color:#459ed9 ;
/*     font-size: 2em; */
    font-family: sans-serif
    direction: left;
    loop: "";
}

/* .middletext { */
/*     color: #FFFFCC; */
/* } */

.sliderbg {
	
    background-color: white;
}

.special h1 {
    font-family: sans-serif;
    color: #459ed9;
}

.special h2 {
    font-family: sans-serif;
    color: #eb8a51;
}

#contactus {
    border-color: blue;
    color:#459ed9 ;
    box-shadow: 10px 10px 10px 10px rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    transform: scale(1.01);
}
.bsize{
   width: 7em;
   
}
</style>
</head>
<body>
    <div id="bgimge">
        <div class="container-fluid">
            <div class="row" id="home">
                <!--       <div class="col-md-12"> -->
                <nav class="navbar navbar-expand-lg topnav fixed-top">
                    <div class="container-fluid">
                        
                        <button type="button" class="navbar-toggler"
                            data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon text-white bg-dark"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarCollapse">
                            <div class="navbar-nav ms-auto">
                               <div class="navbar-nav px-4">
                                <a class="btn btn-primary p-2 bsize" href="login.jsp" role="button">
                                    LOGIN </a>
                               </div>
                                <a href="#contactus"
                                    class="nav-item nav-link fs-5 p-2 px-3 topnavitem">Contact
                                    Us</a>
                                <a href="#ourspecial"
                                    class="nav-item nav-link fs-5 p-2 topnavitem px-3">Our
                                    Special</a>
                                <a href="#daliymenu"
                                    class="nav-item nav-link fs-5 p-2 topnavitem px-3">Daily
                                    Menu</a>
                                <a href="#" class="nav-item nav-link fs-5 p-2 topnavitem px-3">About
                                    Us</a>
                                <a href="#home"
                                    class="nav-item nav-link fs-5 p-2 px-3 topnavitem">Home</a>
                            </div>
                            <a href="#" class="navbar-brand bg-light rounded"> <img
                            src="images/ktn.webp" height="34" alt="kitchen">
                            </a>
                            
                        </div>
                    </div>
                </nav>
                <!--       </div> -->
            </div>
            <div class="row display-6 p-md-5 mt-5" id="bgimg">
                <div class="col-md-5 offset-md-1 middletext poetsen-one-regular">
                    <p class="fst-italic fw-bold fs-4">WELCOME TO MESS</p>
                    <p class="fst-italic fw-bold">ENJOY YOUR DELICIOUS FOOD</p>
                    <p class="fw-bold">VEG & NON VEG MESS</p>
                    <p class="fw-bold fst-italic text-info">WE ARE JUST A CALL AWAY
                        9090568780</p>
                </div>
                <div class="col-md-5 offset-md-1">
                    <img src="images/kitchens.jpg"
                        class="img-thumbnail img-fluid w-auto float-md-end" alt="kitchen">
                </div>
            </div>
            <p id="daliymenu"></p>
            <div class=row></div>
            <div class="row p-4 justify-content-center text-center sliderbg">
                <div class="col-md-8 mt-5">
                    <h1 class="specility pb-2">Daily Menu</h1>
                    <div id="carouselExampleCaptions" class="carousel"
                        data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active slider">
                                <img src="images/breakfast.jpg" class="d-block w-100"
                                    class="img-thumbnail" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 class="fw-bold display-6 txtcolor">BREAK FAST</h5>
                                    <p class="fst-italic fs-4">Start your day in style.</p>
                                </div>
                            </div>
                            <div class="carousel-item slider">
                                <img src="images/non-veg thali.jpeg" class="d-block w-100"
                                    class="img-thumbnail" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 class="fw-bold display-6 txtcolor">NON VEG THALI</h5>
                                    <p class="fst-italic fs-4">Spice up Your Life with Non-Veg.</p>
                                </div>
                            </div>
                            <div class="carousel-item slider">
                                <img src="images/thali4.jpeg" class="d-block w-100"
                                    class="img-thumbnail" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 class="fw-bold display-6 txtcolor">VEG THALI</h5>
                                    <p class="fst-italic fs-4">Fullfil yourself with veg .</p>
                                </div>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button"
                            data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button"
                            data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
                <p id="ourspecial"></p>
            </div>
            <div class="row text-center px-5 pb-5 pt-2 mt-5">
                <h1 class="special" style="color: #459ed9; margin-top: 20px">Our
                    Special</h1>
                <h3 class="special pb-3" style="color: #eb8a51">We provide a
                    best food</h3>
                <div class="col-md-3">
                    <div class="card p-4 card1">
                        <img src="images/monthly mess.jpg" class="card-img-top img-fluid"
                            alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Monthly Mess</h5>
                            <p class="card-text">Consists of Salad, 3 Mini Rotis, One dry
                                curry, One wet curry, Dal, Plain Rice, Papad, Pickle,..</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card p-4 card1">
                        <img src="images/anda.jpg" class="card-img-top img-fluid"
                            alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Wednesday Special</h5>
                            <p class="card-text">We provide Egg curry consists of two egg steam hot rice, spicy curry, chapatis, piclke etc.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card p-4 card1">
                        <img src="images/shabudana.jpg" class="card-img-top img-fluid"
                            alt="...">
                        <div class="card-body">
                            <h5 class="card-title">BreakFast</h5>
                            <p class="card-text">Our breakfast is light morning meal
                                typically consisting of Poha, Idali, Dosa, Khichadi & many
                                more..</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card p-4 card1">
                        <img src="images/sunday specail.jpg"
                            class="card-img-top img-fluid" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Sunday Special</h5>
                            <p class="card-text">Biryani consist of, mutton fry, mutton
                                soup, and a delicious khichdi cooked in mutton broth.</p>
                        </div>
                    </div>
                    <p id="contactus"></p>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-9">
                    <div  class="p-5">
                        <h1 class="mb-3 text-center">Contact Us</h1>

                        <div class="row g-3">
                            <div class="col-md-4">
                                <div class="card card1 p-2" style="width: 18rem;">
                                    <img src="images/location.jpg"
                                        class="card-img-top mx-auto d-block" style="width: 100px;"
                                        alt="...">
                                    <div class="card-body text-center">
                                        <p class="card-text fw-bold">Homes Kitchen,Hingane Home</p>
                                        <p class="card-text fw-bold">Colony,Karve nagar, Pune</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card card1 p-2" style="width: 18rem;">
                                    <img src="images/email.webp"
                                        class="card-img-top mx-auto d-block" style="width: 100px;"
                                        alt="...">
                                    <div class="card-body text-center">
                                        <p class="card-text fw-bold">homeskitchen@gmail.com</p>
                                        <p class="card-text fw-bold">sudhirkadam@gmail.com</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card card1 p-2" style="width: 18rem;">
                                    <img src="images/phone.webp"
                                        class="card-img-top mx-auto d-block" style="width: 100px;"
                                        alt="...">
                                    <div class="card-body text-center">
                                        <p class="card-text fw-bold">+91 9359831795</p>
                                        <p class="card-text fw-bold">+91 9359503439</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row bg-dark mt-5">
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
                                        <p>We specialize in different kind of meal , i.e.,
                                            Breakfast, Lunch/Dinner, Snack, Rice Bowl, etc</p>
                                    </div>
                                    <!-- Grid column -->

                                    <!-- Grid column -->
                                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                                        <!-- Links -->
                                        <h6 class="text-uppercase fw-bold mb-4">Speciality</h6>
                                        <p>
                                            <a href="#!" class="text-white">Non Veg Thali</a>
                                        </p>
                                        <p>
                                            <a href="#!" class="text-white">Veg Thali</a>
                                        </p>
                                        <p>
                                            <a href="#!" class="text-white">Daily Menu</a>
                                        </p>
                                    </div>
                                    <!-- Grid column -->

                                    <!-- Grid column -->
                                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                                        <!-- Links -->
                                        <h6 class="text-uppercase fw-bold mb-4">Useful links</h6>
                                        <p>
                                            <a href="#!" class="text-white">About us</a>
                                        </p>
                                        <p>
                                            <a href="#!" class="text-white">Privacy Policy</a>
                                        </p>
                                    </div>
                                    <!-- Grid column -->

                                    <!-- Grid column -->
                                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                                        <!-- Links -->
                                        <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                                        <p><i class="fas fa-home me-3"></i> Homes Kitchen,Hingane Home Colony,Karve nagar, Pune</p>
                                        <p>
                                            <i class="fas fa-envelope me-3"></i>
                                            homeskitchen@gmail.com
                                        </p>
                                        <p><i class="fas fa-phone me-3"></i> +91 9359831795</p>
                                    </div>
                                    <!-- Grid column -->
                                </div>
                                <!-- Grid row -->
                            </div>
                        </section>
                        <!-- Section: Links  -->

                        <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
                            © 2022 All rights reserved:
                            <a class="text-reset fw-bold" href="#">Homes Kitchen</a>
                        </div>
                    </footer>
                    <!-- Footer -->
                </div>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"
        integrity="sha384-hy3Oz9vI5+lqz9j/8dlt+U5fCzCn65fOW0k4X5gJB38xvYIdHMgDQNOEfeoFN7Jh"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous"></script>
    -->
</body>
</html>
