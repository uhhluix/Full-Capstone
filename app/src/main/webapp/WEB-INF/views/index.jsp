<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="#">

<meta name="author" content="#">

<title>Home</title>

<!-- Mobile Specific Meta-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

<!-- Themefisher Icon font -->
<link rel="stylesheet" href="static/plugins/themefisher-font/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet"
	href="static/plugins/bootstrap/css/bootstrap.min.css">

<!-- Revolution Slider -->
<link rel="stylesheet" type="text/css"
	href="static/plugins/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
<link rel="stylesheet" type="text/css"
	href="static/plugins/revolution-slider/revolution/fonts/font-awesome/css/font-awesome.css">

<!-- REVOLUTION STYLE SHEETS -->
<link rel="stylesheet" type="text/css"
	href="static/plugins/revolution-slider/revolution/css/settings.css">
<link rel="stylesheet" type="text/css"
	href="static/plugins/revolution-slider/revolution/css/layers.css">
<link rel="stylesheet" type="text/css"
	href="static/plugins/revolution-slider/revolution/css/navigation.css">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="static/css/style.css">
<link rel="stylesheet" href="static/css/myowncss.css">

</head>

<body id="body " class="bodyIssue">

	<!-- Start Top Header Bar -->


	<c:if test="${empty loggedInuser}">
		<c:redirect url="http://localhost:2500/capstone/login" />

	</c:if>



	<jsp:include page="header.jsp" />




		<div class="row">
			<div class="col">
				<h3 >Backlog</h3>
				<c:forEach var="bug" items="${loadBugs}">
					<c:if test="${bug.status == 'Open'}">
						<div class="card">
							<div class="card-body">
								<a
									href="${pageContext.request.contextPath }/deleteBug/${bug.id }"
									onclick="return confirm('Are you sure?')"><button
										type="button" class="button">Delete</button> </a>

								<button class="button" data-modal="modalOne-${bug.id}">Move</button>


	





								<h4 class="card-title">${bug.name}</h4>
								<h5 class="card-subtitle mb-2	">${bug.severity}</h5>
								<p class="card-text card-texts">${bug.description}</p>
								<small class="text-muted2">${bug.status}</small> <small
									class="text-muted1">${bug.bugSubmitter}</small>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
			<c:forEach var="bug" items="${loadBugs}">
				<div id="modalOne-${bug.id}" class="modal">
					<div class="modal-content">
						<div class="contact-form">
							<a class="close">&times;</a>



							<form action="updateBug/${bug.id}" method="post">

								<h1>Move To...</h1>

							

								
								<br> <label for="bugStatus">Status?</label> <select
									class="form-control" name="status" id="status">
									<option value="Open">Open</option>
									<option value="In Progress">In Progress</option>
									<option value="Resolved">Resolved</option>

								</select> <br>
								<button type="submit" class="btn0">Update</button>

							</form>
						</div>
					</div>
				</div>
			</c:forEach>




			<div class="col">
<h3>In progress</h3>
				<c:forEach var="bug" items="${loadBugs}">
					<c:if test="${bug.status == 'In Progress'}">
						<div class="card">
							<div class="card-body">
								<a
									href="${pageContext.request.contextPath }/deleteBug/${bug.id }"
									onclick="return confirm('Are you sure?')"><button
										type="button" class="button">Delete</button> </a>

								<button class="button" data-modal="modalOne-${bug.id}">Move</button>








								<h4 class="card-title">${bug.name}</h4>
								<h5 class="card-subtitle mb-2 ">${bug.severity}</h5>
								<p class="card-text  card-texts">${bug.description}</p>
								<small class="text-muted2">${bug.status}</small> <small
									class="text-muted1">${bug.bugSubmitter}</small>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>






			<div class="col">
				<h3>Resolved</h3>
				<c:forEach var="bug" items="${loadBugs}">
					<c:if test="${bug.status == 'Resolved'}">
						<div class="card">
							<div class="card-body">
								<a
									href="${pageContext.request.contextPath }/deleteBug/${bug.id }"
									onclick="return confirm('Are you sure?')"><button
										type="button" class="button">Delete</button> </a>

								<button class="button" data-modal="modalOne-${bug.id}">Move</button>








								<h4 class="card-title">${bug.name}</h4>
								<h5 class="card-subtitle mb-2 ">${bug.severity}</h5>
								<p class="card-text  card-texts	">${bug.description}</p>
								<small class="text-muted2">${bug.status}</small> <small
									class="text-muted1">${bug.bugSubmitter}</small>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>











		<button class="open-button" onclick="openForm()">Add A Bug!</button>

		<div class="form-popup" id="myForm">
			<form action="/capstone/submitBug" method="post"
				class="form-container">
				<h1>Enter Bug</h1>

				<label for="Title"><b>Title</b></label> <input type="text"
					placeholder="Enter Title" name="title" required>


				<div class="form-group">
					<label for="Description">Description</label>
					<textarea class="form-control" name="description" id="description"
						rows="3" placeholder="Enter Description Here..."></textarea>
				</div>


				<br> <label for="severity">Severity</label> <select
					class="form-control" name="severity" id="severity">
					<option value="Low">Low</option>
					<option value="Minor">Minor</option>
					<option value="Major">Major</option>
					<option value="Critical">Critical</option>
					<option value="Blocker">Blocker</option>
				</select> <br> <label for="bugStatus">Status?</label> <select
					class="form-control" name="status" id="status">
					<option value="Open">Open</option>
					<option value="In Progress">In Progress</option>
					<option value="Resolved">Resolved</option>

				</select> <br>
				<div class="form-group">
					<label for="bugSubmitter">Bug Submitter</label>
					<textarea class="form-control" name="bugSubmitter"
						id="bugSubmitter" rows="1" placeholder="Enter Your Name Here..."></textarea>
				</div>

				<button type="submit" class="btn0">Submit</button>
				<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
			</form>
		</div>

		<script>
			function openForm() {
				document.getElementById("myForm").style.display = "block";
			}

			function closeForm() {
				document.getElementById("myForm").style.display = "none";
			}
		
		</script>
		<script>var modalBtns = [...document.querySelectorAll(".button")];
		modalBtns.forEach(function(btn){
			  btn.onclick = function() {
			    var modal = btn.getAttribute('data-modal');
			    document.getElementById(modal).style.display = "block";
			  }
			});

			var closeBtns = [...document.querySelectorAll(".close")];
			closeBtns.forEach(function(btn){
			  btn.onclick = function() {
			    var modal = btn.closest('.modal');
			    modal.style.display = "none";
			  }
			});

			window.onclick = function(event) {
			  if (event.target.className === "modal") {
			    event.target.style.display = "none";
			  }
			}</script>









		<!-- 
    Essential Scripts
    =====================================-->

		<!-- Main jQuery -->
		<script src="static/plugins/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap 3.1 -->
		<script src="static/plugins/bootstrap/js/bootstrap.min.js"></script>
		<!-- Bootstrap Touchpin -->
		<script
			src="static/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
		<!-- Instagram Feed Js -->
		<script src="static/plugins/instafeed-js/instafeed.min.js"></script>
		<!-- Video Lightbox Plugin -->
		<script src="static/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
		<!-- Count Down Js -->
		<script src="static/plugins/SyoTimer/build/jquery.syotimer.min.js"></script>

		<!-- Revolution Slider -->
		<script type="text/javascript"
			src="static/plugins/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script>
		<script type="text/javascript"
			src="static/plugins/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script>

		<!-- Revolution Slider -->
		<script type="text/javascript"
			src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script>
		<script type="text/javascript"
			src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
		<script type="text/javascript"
			src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
		<script type="text/javascript"
			src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
		<script type="text/javascript"
			src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script>
		<script type="text/javascript"
			src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
		<script type="text/javascript"
			src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
		<script type="text/javascript"
			src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
		<script type="text/javascript"
			src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
		<script type="text/javascript"
			src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
		<script type="text/javascript"
			src="static/plugins/revolution-slider/assets/warning.js"></script>



		<!-- Google Mapl -->
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
		<script type="text/javascript" src="static/plugins/google-map/gmap.js"></script>

		<!-- Main Js File -->
		<script src="static/js/script.js"></script>
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
			integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
			integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
			crossorigin="anonymous"></script>

		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
			integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
			crossorigin="anonymous"></script>

		<script src="test.js"></script>
	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>
