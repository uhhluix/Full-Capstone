<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="#">
  <meta name="author" content="#">

  <title>About</title>

 <!-- Mobile Specific Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="static/static/images/favicon.png" />
  
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="static/plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="static/plugins/bootstrap/css/bootstrap.min.css">
  
  <!-- Revolution Slider -->
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/fonts/font-awesome/css/font-awesome.css">

  <!-- REVOLUTION STYLE SHEETS -->
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/css/settings.css">
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/css/layers.css">
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/css/navigation.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="static/css/style.css">
  <link rel="stylesheet" href="static/css/myowncss.css">

</head>

<body id="body" >
<!-- Start Top Header Bar -->
<jsp:include page="header.jsp"/>

<!-- Main Menu Section -->

<section class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="content">
					<h1 class="page-name">About Us</h1>
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li class="active">About</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="about section">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<img class="img-responsive" src="static/images/debuglogo.png">
			</div>
			<div class="col-md-6">
				<h2 class="mt-40">About Debug IT</h2>
				<p>Debug IT is a great tool for any company. It allows its users to be organized and efficient when it comes to bugs.</p>
				<p>We hope you enjoy using our product and that it helps you and your company out!</p>
				<p>While it is currently still under development, you can count on it to work whenever you need it to! Watch out for new features that'll be added with time!</p>
			</div>
		</div>
		
</section>

<section class="team-members ">
	<div class="container">
		<div class="row">
			<div class="title"><h2>Team Members</h2></div>
		</div>
		<div class="row">
			<div class="col-1">
				<div class="team-member text-center">
					<img class="img-circle" width="25%" height="25%" src="static/images/circleme.png" >
					</div>
					<div class="a">
					<h3>Luis Torres-Garcia</h3>
					<h4>Founder</h4>
				</div></div>
			</div>
			</div>
			
</section>
<!-- 
<div class="section video-testimonial bg-1 overly-white text-center mt-50">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>Video presentation</h2>
				<a class="play-icon" href="https://www.youtube.com/watch?v=ea-ThJDGJ1Y&list=RDea-ThJDGJ1Y&index=1" data-toggle="lightbox">
					<i class="tf-ion-ios-play"></i>
				</a>
			</div>
		</div>
	</div>
</div> -->




	

  <jsp:include page="footer.jsp"/>
  </body>
  </html>