<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style type="text/css">
	

.logo-image{
    width: 70px;
    height: 45px;

    overflow: hidden;
    margin-top: 1px;
    border-radius: 50px; 
            
    
}
</style>
<html lang="en"><!-- Basic -->
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>Health Lab - Responsive HTML5 Template</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/canti.jpeg">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Pogo Slider CSS -->
    <link rel="stylesheet" href="css/pogo-slider.min.css">
	<!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">   
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body id="home" data-spy="scroll" data-target="#navbar-wd" data-offset="98">

	<!-- LOADER -->
     <!-- <div id="preloader">
		<div class="loader">
			<img src="images/preloader.gif" alt="" />
		</div>
    </div>end loader -->
    <!-- END LOADER -->
	
	
	
	
	<!-- Start header -->
	<header class="top-header">
		<nav class="navbar header-nav navbar-expand-lg">
            <div class="container">
				<a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="image"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-wd" aria-controls="navbar-wd" aria-expanded="false" aria-label="Toggle navigation">
					<span></span>
					<span></span>
					<span></span>
				</button>
				 
                <div class="collapse navbar-collapse justify-content-end" id="navbar-wd">
                    <ul class="navbar-nav">
                        <li><a class="nav-link  " href="homepage.html">Medicines</a></li>
                        <li><a class="nav-link" href="devices.html">Devices</a></li>
                        <li><a class="nav-link" href="ayurvaedic.html">Ayurvaedic</a></li>
						<li><a class="nav-link" href="index.html">Orders</a></li>
						
					
                   
						<li><a class="nav-link" href="index.jsp">Logout</a></li>
						<li><a href="index.html"  ><img class="logo-image" src="images/logop.jpg" ></a></li>
						
						
                        
                    </ul>
                </div>
                
            </div>

        </nav>
	</header>
	<!-- End header -->
	
	<!-- Start Banner -->
	

	
			
			<div id="services" class="style1/services-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-box">
						<h2>Product information </h2>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-lg-12">
					<div class="owl-carousel owl-theme">
						<div class="item">
							<div class="serviceBox">
								<div ><img src="images/aur1.jpg" ></div>
								<h3 class="title">Weight gainer</h3>
								
							</div>

						</div>
						
				
					<div class="well-block">
                        <div class="well-title">
                            <h2>Details</h2>
                        </div>

                        <form  action="http://localhost/canti/form.php" method="post">
                            <!-- Form start -->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="name">user Id</label>
                                        <input id="name" name="uid" type="text" placeholder="user id" class="form-control input-md">

                                    </div>

                                </div>




                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="name">Quantitiy</label>
                                        <input id="name" name="uid" type="text" placeholder="quantity" class="form-control input-md">
                                    </div>
                       
                                <!-- Text input-->
                                
                                
                                <!-- Select Basic -->
                               

                                 
                                <!-- Select Basic -->
                                
                                <!-- Button -->
                            
                            </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <button id="singlebutton" name="singlebutton" class="new-btn-d br-2">Place Order</button>
                                    </div>
                                </div>
                        </form>
                        <!-- form end -->
                    </div>
				</div>
				
			</div>
		</div>
	</div>
	<!-- End Appointment -->
	
	<!-- Start Services -->
	
						
						
						</div>
					</div>
				</div>
			</div>			
		</div>
	</div>
	<!-- End Services -->
	
	
	<!-- Start Services -->
	
	
	
	
	<br><br><br><br><br><br><br><br><br><br><br>
	
	<!-- Start Footer -->
	<footer class="footer-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p class="footer-company-name">All Rights Reserved. &copy; 2020 <a href="#">cantelever stores</a> </p>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer -->
	
	<a href="#" id="scroll-to-top" class="new-btn-d br-2"><i class="fa fa-angle-up"></i></a>

	<!-- ALL JS FILES -->
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	<script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.pogo-slider.min.js"></script> 
	<script src="js/slider-index.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/TweenMax.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
	<script src="js/isotope.min.js"></script>	
	<script src="js/images-loded.min.js"></script>	
    <script src="js/custom.js"></script>
</body>
</html>