
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="/css/main.css"/>
  <link disabled id="dark-reader" rel="stylesheet" href="/css/dark.css">
<!-- Main Menu Section -->
<section class="menu">
	<nav class="navbar navigation">
	    <div class="container">
	      <div class="navbar-header">
	      	<h2 class="menu-title">Main Menu</h2>
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	          <span class="sr-only">Toggle navigation</span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	        </button>

	      </div><!-- / .navbar-header -->

	      <!-- Navbar Links -->
	      <div id="navbar" class="navbar-collapse collapse text-center">
	        <ul class="nav navbar-nav">
			     
		
       <div>  <img alt="Qries" src="static/images/debugspread.png"
         width="150" height="140">
     	</div>

	          <!-- Home -->
	          <li >
	            <a id="_index" href="index">DeBug IT</a>
	            
	          </li><!-- / Home -->

	          <!-- Pages -->
	          <li class="dropdown full-width dropdown-slide">
	            <a id="co" href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350" role="button"
	             aria-haspopup="true" aria-expanded="false">Company<span class="tf-ion-ios-arrow-down"></span></a>
	            <div class="dropdown-menu">
	              	<div class="row">

		                <!-- Introduction -->
		                <div class="col-sm-3 col-xs-12">
		                	<ul>
								<li class="dropdown-header">Info</li>
								<li role="separator" class="divider"></li>
								<li><a id="_contact" href="contact"> Contact </a></li>
								<li><a id="_about" href="about">About Us</a></li>
								<li><a href="#">Services</a></li>								
		                	</ul>
		                </div>
						<c:if test="${not empty loggedInuser}">
		                <!-- User Interface -->
		                <div class="col-sm-3 col-xs-12">
		                	<ul>
								<li class="dropdown-header">Dashboard</li>
								<li role="separator" class="divider"></li>
								<li><a href="profile">Profile Details</a></li>
								<c:if test="${role eq 'ADMIN'}">
								<li><a href="#">Subscription Orders</a></li>
								</c:if>
								<li><a href="#">My Subscription</a></li>
								
		                	</ul>
		                </div>
		                </c:if>
		                <c:if test="${empty loggedInuser}">
		                <!-- User Interface -->
		                <div class="col-sm-3 col-xs-12">
		                	<ul>
								<li class="dropdown-header">Dashboard</li>
								<li role="separator" class="divider"></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">Address</a></li>
								
		                	</ul>
		                </div>
		                </c:if>

		                <!-- Utility -->
		                <div class="col-sm-3 col-xs-12">
		                	<ul>
								<li class="dropdown-header">Members</li>
								<li role="separator" class="divider"></li>
								<li><a href="customers">Club Members </a></li>
							    <c:choose>
				                <c:when test="${empty loggedInuser}">
								<li><a id="_login"  href="login">Login </a></li>
								<li><a id="_signup" href="signup">Register </a></li>
								</c:when>
				  			    <c:otherwise>								
								<a id="logout_link" href="logout"> ${loggedInuser} | Logout</a>
								</c:otherwise>
								</c:choose>
		                	</ul>
		                </div>

		                <!-- Mega Menu -->
		                <div class="col-sm-3 col-xs-12">
		                	<a href="shop">
			                	<img class="img-responsive" src="static/images/debuglogo.png" alt="menu image" />
		                	</a>
		                </div>
	              	</div><!-- / .row -->
	            </div><!-- / .dropdown-menu -->
	          </li><!-- / Pages -->
			
			  <c:if test="${not empty loggedInuser}">
	          <li><a href="profile">Profile</a></li>
	          		

	          </c:if>
	          <c:choose>
	          <c:when test="${empty loggedInuser}">
	          <li><a href="login">Login </a>
	          
	          </li>
			  <li><a href="signup">Register </a></li>
	          </c:when>
	          <c:otherwise>
			  <li><a href="logout"> Logout</a></li>
			  
			  
			  </c:otherwise>
			  </c:choose>
					
	          <!-- Search -->
	          <!-- <li class="dropdown search dropdown-slide">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i class="tf-ion-ios-search-strong"></i> </a>
	            <ul class="dropdown-menu search-dropdown">
	              <li><form action="post"><input type="search" class="form-control" placeholder="Search..."></form></li>
	            </ul>
	          </li> --><!-- / Search -->
	          	
	         </ul><!-- / .nav .navbar-nav -->

	      	</div><!--/.navbar-collapse -->
	    </div><!-- / .container -->
	</nav>
</section>
<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

<script src="https://unpkg.com/darkreader@4.9.2/darkreader.js"></script>
<script>		
DarkReader.enable({
    brightness: 100,
    contrast: 90,
    sepia: 10
});

DarkReader.disable();

// Enable when system color scheme is dark
DarkReader.auto({
    brightness: 100,
    contrast: 90,
    sepia: 10
});

// Stop watching for system color scheme
DarkReader.auto(false);
</script>