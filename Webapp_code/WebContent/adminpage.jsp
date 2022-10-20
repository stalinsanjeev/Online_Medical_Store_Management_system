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
                        <li><a class="nav-link  " href="homepage.jsp">Medicines</a></li>
                        <li><a class="nav-link" href="devices.jsp">Devices</a></li>
                        <li><a class="nav-link" href="ayurvedic.jsp">Ayurvedic</a></li>
						<li><a class="nav-link" href="index.jsp">Orders</a></li>
						
					
                   
						<li><a class="nav-link" href="index.jsp">Logout</a></li>
						<li><a href="index.html"  ><img class="logo-image" src="images/logop.jpg" ></a></li>
						
						
                        
                    </ul>
                </div>
                
            </div>

        </nav>
	</header>
	<!-- End header -->
	
	<!-- Start Banner -->
	
	
	<!-- Start Services -->
	<div id="services" class="services-box">
		<div class="container">
			<div class="title-box">
						<h2>     WELCOME  ADMIN</h2>
					
					</div>
					<br><br><br><br>
			<div class="row">
				<div class="col-lg-12">
					<div class="title-box">
						<h2>Orders</h2>
					
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-lg-12">
					<div >
						
						
						
											<%@page import="java.sql.DriverManager"%>
											<%@page import="java.sql.ResultSet"%>
											<%@page import="java.sql.Statement"%>
											<%@page import="java.sql.Connection"%>

											<%
											
											String driverName = "com.mysql.jdbc.Driver";
											String connectionUrl = "jdbc:mysql://localhost:3306/";
											String dbName = "webapp";
											String userId = "sanjeev";
											String password = "sanjeev123";

											try {
											Class.forName(driverName);
											} catch (ClassNotFoundException e) {
											e.printStackTrace();
											}

											Connection connection = null;
											Statement statement = null;
											ResultSet resultSet = null;
											%>
											
											<table align="center" cellpadding="5" cellspacing="5" border="1">
											<tr>

											</tr>
											<tr bgcolor="#00cb86">
											<td><b>refid</b></td>
											<td><b>pid</b></td>
											<td><b>product name</b></td>
											<td><b>price</b></td>
											<td><b>quantity</b></td>
											<td><b>username</b></td>
											<td><b>phone</b></td>
											<td><b>shipping adress</b></td>
											
											</tr>
											<%
											try{ 
											connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
											statement=connection.createStatement();
											String sql ="SELECT * FROM orders";

											resultSet = statement.executeQuery(sql);
											while(resultSet.next()){
											%>
											<tr bgcolor="#ffffff">
											<td><%=resultSet.getInt("refid") %></td>
											<td><%=resultSet.getInt("pid") %></td>
											<td><%=resultSet.getString("productname") %></td>
											<td><%=resultSet.getInt("price") %></td>
											<td><%=resultSet.getInt("quantity") %></td>
											<td><%=resultSet.getString("usename") %></td>
											<td><%=resultSet.getInt("phone") %></td>
											<td><%=resultSet.getString("address") %></td>
											
											
											

											</tr>

											<% 
											}

											} catch (Exception e) {
											e.printStackTrace();
											}
											%>
									</table>
							</div>
						</div>
					</div><br><br><br><br>
					
					
							<div class="row">
				<div class="col-lg-12">
					<div class="row">
				<div class="col-lg-12">
					<div class="title-box">
						<h2>Prodcuts </h2>
					
					</div>
				</div>
			</div>
					<div >
						
						
						
											<%@page import="java.sql.DriverManager"%>
											<%@page import="java.sql.ResultSet"%>
											<%@page import="java.sql.Statement"%>
											<%@page import="java.sql.Connection"%>

											<%
											
											String driverName1 = "com.mysql.jdbc.Driver";
											String connectionUrl1 = "jdbc:mysql://localhost:3306/";
											String dbName1 = "webapp";
											String userId1 = "sanjeev";
											String password1 = "sanjeev123";

											try {
											Class.forName(driverName1);
											} catch (ClassNotFoundException e) {
											e.printStackTrace();
											}

											Connection connection1 = null;
											Statement statement1 = null;
											ResultSet resultSet1 = null;
											%>
											
											<table align="center" cellpadding="5" cellspacing="5" border="1">
											<tr>

											</tr>
											<tr bgcolor="#00cb86">
											<td><b>pid</b></td>
											<td><b>name_id</b></td>
											<td><b>Price</b></td>
											
											</tr>
											<%
											try{ 
											connection1 = DriverManager.getConnection(connectionUrl1+dbName1, userId1, password1);
											statement1=connection1.createStatement();
											String sql1 ="SELECT * FROM products";

											resultSet1 = statement1.executeQuery(sql1);
											while(resultSet1.next()){
											%>
											<tr bgcolor="#ffffff">

											<td><%=resultSet1.getInt("pid") %></td>
											<td><%=resultSet1.getString("name") %></td>
											<td><%=resultSet1.getInt("price") %></td>
											

											</tr>

											<% 
											}

											} catch (Exception e) {
											e.printStackTrace();
											}
											%>
									</table>
							</div>
						</div>
					</div>
				</div>
			</div>			
		</div>
	</div>
	<!-- End Services -->
	
	
	
	
	
	
	
	
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