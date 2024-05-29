<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html lang="en">
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>BlogPost</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="Assests/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css" href="Assests/css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="Assests/css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="Assests/images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet"
	href="Assests/css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<!-- owl stylesheets -->
<link rel="stylesheet" href="Assests/css/owl.carousel.min.css">
<link rel="stylesoeet" href="Assests/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">
</head>
<body>
	<!-- header section start -->
	<div class="header_section">
		<div class="container-fluid header_main">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="logo" href="index.jsp"><img
					src="Assests/images/logo.png"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="About.jsp">About</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="Blog.jsp">Blog</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="Features.jsp">Features</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="Contact.jsp">Contact
								Us</a></li>
						<li class="nav-item"><a class="nav-link" href="Login.jsp">Login </a></li>
								<li class="nav-item"><a class="nav-link" href="Register.jsp">Register</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- banner section start -->
		<div class="container-fluid">
			<div class="banner_section layout_padding">
				<h1 class="banner_taital">
					Welcome <br>our Blog
				</h1>
				<div id="my_slider" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="image_main">
								<div class="container">
									<img src="Assests/images/img-1.png" class="image_1">
									<div class="contact_bt">
										<a href="Contact.jsp">Contact Us</a>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="image_main">
								<div class="container">
									<img src="Assests/images/img-1.png" class="image_1">
									<div class="contact_bt">
										<a href="Contact.jsp">Contact Us</a>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="image_main">
								<div class="container">
									<img src="Assests/images/img-1.png" class="image_1">
									<div class="contact_bt">
										<a href="Contact.jsp">Contact Us</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#my_slider" role="button"
						data-slide="prev"> <i class="fa fa-angle-left"></i>
					</a> <a class="carousel-control-next" href="#my_slider" role="button"
						data-slide="next"> <i class="fa fa-angle-right"></i>
					</a>
				</div>
			</div>
		</div>
		<!-- banner section end -->
	</div>
	<!-- header section end -->