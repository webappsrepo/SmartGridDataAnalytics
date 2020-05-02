<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Smart Grid Data Analytics</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="../css1/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="../css1/style.css" rel='stylesheet' type='text/css' />
	<link href="../css1/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700" rel="stylesheet">
</head>

<body>
	<!--/banner-->
	<header>
		<div class="top-bar_sub container-fluid">
			<div class="row">
				<div class="col-md-4 top-forms text-left mt-4"  data-aos="fade-up">
					<span>Welcome Back!</span>
					<span class="mx-lg-4 mx-md-2  mx-1">
						<a href="userlogin.jsp">
							<i class="fas fa-lock"></i> Sign In</a>
					</span>
					
				</div>
				<div class="col-md-4 logo text-center" data-aos="fade-up">
					<a class="navbar-brand" href="../index.html">
						<i class="fas fa-utensils"></i> Smart Grid Data Analytics</a>
				</div>

				<div class="col-md-4 log-icons text-right"  data-aos="fade-up">

					<ul class="social_list1 mt-4">

						<li>
							<a href="#" class="facebook1 mx-2">
								<i class="fab fa-facebook-f"></i>

							</a>
						</li>
						<li>
							<a href="#" class="twitter2">
								<i class="fab fa-twitter"></i>

							</a>
						</li>
						<li>
							<a href="#" class="dribble3 mx-2">
								<i class="fab fa-dribbble"></i>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</header>

	<!--/banner-->
	<div class="banner-inner">
	</div>
	<!--//banner-->
	<!--/nav-->
	<div class="header_top" id="home">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<button class="navbar-toggler navbar-toggler-right mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
			    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>


			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item">
						<a class="nav-link" href="../index.html">Home
							<span class="sr-only">(current)</span>
						</a>
					</li>
					<li class="nav-item disabled">
						<a class="nav-link" href="#">About</a>
					</li>

					<li class="nav-item dropdown disabled">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
						    aria-expanded="false">
							Drop Down
						</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#"></a>
								<a class="dropdown-item" href="#">Gallery</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Services</a>
							</div>
					</li>
					<li class="nav-item disabled">
						<a class="nav-link" href="#">Contact</a>
					</li>

				</ul>
			</div>
		</nav>

	</div>
	<!--//nav-->
	<ol class="breadcrumb">
		<li class="breadcrumb-item">
			<a href="../index.html">Home</a>
		</li>
		<li class="breadcrumb-item active">Signin</li>
	</ol>
	<!--/main-->
	<section class="banner-bottom">
		<div class="container">
			<h3 class="tittle">Sign In Now</h3>
			<div class="row inner-sec">
				<div class="login p-5 bg-dark mx-auto mw-100">
					<form action="/smartgrid_dataanalytics/loginservlet" method="GET">
						<div class="form-group">
							<label for="exampleInputEmail1 mb-2">Username</label>
							<input type="text" class="form-control" name="username" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="true">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1 mb-2">Password</label>
							<input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="" required="true">
						</div>
						<input type="hidden" name="mode" value="LOGIN"/>
						<button type="submit" class="btn btn-primary submit mb-4">Sign In</button>
						<p>
							<a href="registration.jsp"> Don't have an account?</a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!--//main-->
	<!--footer-->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-4 footer-grid text-left" data-aos="fade-right" ></div>
				<!-- subscribe -->
				<div class="col-lg-8 subscribe-main footer-grid text-left" data-aos="fade-left">
					<!-- //subscribe -->
					<div class="footer-cpy text-left">
						<div class="copyrighttop">
							<ul>
								<li class="mx-lg-3 mx-md-2 mx-1">
									<a class="facebook" href="#">
										<i class="fab fa-facebook-f"></i>
										<span>Facebook</span>
									</a>
								</li>
								<li>
									<a class="facebook" href="#">
										<i class="fab fa-twitter"></i>
										<span>Twitter</span>
									</a>
								</li>
								<li class="mx-lg-3 mx-md-2 mx-1">
									<a class="facebook" href="#">
										<i class="fab fa-google-plus-g"></i>
										<span>Google+</span>
									</a>
								</li>
								<li>
									<a class="facebook" href="#">
										<i class="fab fa-pinterest-p"></i>
										<span>Pinterest</span>
									</a>
								</li>
							</ul>
						</div>
						<div class="copyrightbottom">
							<p>© 2018 Love2Eat. All Rights Reserved | Design by
								<a href="http://w3layouts.com/">W3layouts</a>
							</p>

						</div>
					</div>
				</div>
			</div>
			<!-- //footer -->
		</div>
	</footer>
	<!---->

	<!-- js -->
	<script src="js1/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	 <!-- /js files -->
	<link href='css1/aos.css' rel='stylesheet prefetch' type="text/css" media="all" />
	<link href='css1/aos-animation.css' rel='stylesheet prefetch' type="text/css" media="all" />
	<script src='js1/aos.js'></script>
	<script src="js1/aosindex.js"></script>
	<!-- //js files -->
	<!--/ start-smoth-scrolling -->
	<script src="js1/move-top.js"></script>
	<script src="js1/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<!--// end-smoth-scrolling -->

	<script>
		$(document).ready(function () {
			/*
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
									*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<!-- //Custom-JavaScript-File-Links -->
	<script src="js1/bootstrap.js"></script>


</body>

</html>