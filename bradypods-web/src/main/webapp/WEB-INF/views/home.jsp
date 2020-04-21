<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0061)file:///C:/Users/tarena/Desktop/%E7%BB%93%E6%9D%9F/index.html -->
<html lang="zxx"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Home</title>
	<!-- for-mobile-apps -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<meta name="keywords" content="">
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //for-mobile-apps -->
	<link href="${app }/Home_files/bootstrap.css" rel="stylesheet" type="text/css" media="all">
	<!--gallery -->
	<link type="text/css" rel="stylesheet" href="${app }/Home_files/cm-overlay.css">
	<!-- //gallery -->
	<link href="./Home_files/font-awesome.css" rel="stylesheet" type="text/css" media="all">
	<link rel="stylesheet" href="${app }/Home_files/owl.carousel.css" type="text/css" media="all">
	<link rel="stylesheet" href="${app }/Home_files/owl.theme.css" type="text/css" media="all">
	<link href="${app }/Home_files/style.css" rel="stylesheet" type="text/css" media="all">
	<link href="${app }/Home_files/css" rel="stylesheet">
	<link href="${app }/Home_files/css(1)" rel="stylesheet">
</head>

<body><div style="position:fixed;top:0px;left:0px;width:0;height:0;" id="scrollzipPoint"></div>
	<!-- Slider -->
	<div class="w3-banner-info-agile">
		<div class="slider w3layouts agileits">
			<ul class="rslides w3layouts agileits callbacks callbacks1" id="slider">
				<li id="callbacks1_s3" class="" style="float: none; position: absolute; opacity: 0; z-index: 1; display: list-item; ">
					<div class="layer  agileits-banner  agileits-banner3">
						<p>
						
						<font color="white"><h2>职位随意查</h2></h1></font>
						
						</p>
						<h3>b</h3>
						<h3>r</h3>
						<h3>a</h3>
						<h3>d</h3>
						<h3>y</h3>
						<h3>p</h3>
						<h3>o</h3>
						<h3>d</h3>
						<h3>s</h3>
						<h4 class="title2-w3ls">欢迎使用</h4>
						<a href="${app }/page/login"  >登录</a>
						<a href="${app }/page/regist"  >注册</a>
						
					</div>
				</li>
			</ul>
	</div>
	<!-- //Slider -->
	<!-- banner -->
	<div class="banner" id="home">
		<!-- <div class="container"> -->
		<nav class="navbar navbar-default cl-effect-5" id="cl-effect-5">
			<div class="navbar-header navbar-left">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
					

				<h2>
					<a class="navbar-brand" href="可添加内容左上角">bradypods</a>
				</h2>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li>
						<a href="" class="active"></a>
					</li>
					<li>
						<a class="scroll" href=""></a>
					</li>
					<li>
						<a class="scroll" href=""> </a>
					</li>
					<li>
						<a class="scroll" href=""></a>
					</li>
					<li>
						<a class="scroll" href=""></a>
					</li>
					<li>
						<a class="scroll" href=""></a>
					</li>
					<li>
						<a href="${app }/" >游客登录>>></a>
					</li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
	</div>
	
	<div class="copyright text-center">
		<div class="container">
			
			<ul class="top-links">
				<li>
					<a "等待添加">
						<span class="fa fa-facebook"></span>
					</a>
				</li>
				<li>
					<a "等待添加">
						<span class="fa fa-twitter"></span>
					</a>
				</li>
				<li>
					<a "等待添加">
						<span class="fa fa-google-plus"></span>
					</a>
				</li>
				<li>
					<a >
						<span class="fa fa-linkedin"></span>
					</a>
				</li>
			</ul>
			<p>Copyright © 2018.Company name All rights reserved. - Collect from </p>
		</div>
	</div>
	<!-- Tooltip -->
	<div class="tooltip-content">
		<div class="modal fade features-modal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog modal-md">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						<h2 class="modal-title">reinforce</h2>
					</div>
					<div class="modal-body">
						
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Tooltip -->

	<!-- js -->
	<script src="${app }/Home_files/jquery-2.2.3.min.js"></script>
	<!--/js-->
	<script type="text/javascript" src="${app }/Home_files/numscroller-1.0.js"></script>
	<!-- Slider-JavaScript -->
	<script src="${app }/Home_files/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider, #slider1").responsiveSlides({
				auto: true,
				nav: false,
				speed: 1500,
				namespace: "callbacks",
				pager: true,
			});
		});
	</script>
	<!-- //Slider-JavaScript -->
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider3").responsiveSlides({
				auto: true,
				pager: false,
				nav: true,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!-- //gallery -->
	<script src="${app }/Home_files/jquery.tools.min.js"></script>
	<script src="${app }/Home_files/jquery.mobile.custom.min.js"></script>
	<script src="${app }/Home_files/jquery.cm-overlay.js"></script>

	<script>
		$(document).ready(function () {
			$('.cm-overlay').cmOverlay();
		});
	</script>
	<!-- //gallery -->
	<!-- owl carousel -->
	<script src="${app }/Home_files/owl.carousel.js"></script>
	<script>
		$(document).ready(function () {
			$("#owl-demo").owlCarousel({

				autoPlay: 3000, //Set AutoPlay to 3 seconds
				autoPlay: true,
				items: 3,
				itemsDesktop: [991, 2],
				itemsDesktopSmall: [414, 4]

			});
		}); 
	</script>
	<!-- //owl carousel -->
	<script type="text/javascript" src="${app }/Home_files/move-top.js"></script>
	<script type="text/javascript" src="${app }/Home_files/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
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


	<script src="${app }/Home_files/SmoothScroll.min.js"></script>
	<script src="${app }/Home_files/bootstrap.js"></script>




<a href="" id="toTop" style="display: none;"><span id="toTopHover"></span>To Top</a></body></html>