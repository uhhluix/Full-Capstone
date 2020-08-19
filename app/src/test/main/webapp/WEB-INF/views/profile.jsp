<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<c:if test="${empty loggedInuser}">
	<jsp:forward page="login.jsp" />
</c:if>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="logout"><button name="logout">Logout</button></a>
	<h2>${msg}${success}</h2>
	<p>
		<a href="about">about</a> <a href="login">log in</a> <a href="contact">contact</a>
		<a href="signup">sign up</a>

	</p>

	<a href="logout">Logout</a>
	<h2>${success}${msg}</h2>
	<form:form action="updatecontact" modelAttribute="address"
		method="post" class="text-left clearfix">
		<form:input class="form-control" type="hidden" path="id"
			value="${user_account.id}" />
		<div class="form-group">
			<form:input class="form-control" type="hidden" path="email"
				value="${user_account.email}" />
		</div>
		<div class="form-group">
			<form:input class="form-control" path="phone"
				value="${user_account.getAddress().phone}" placeholder="Enter phone" />
		</div>
		<div class="form-group">
			<form:input class="form-control" path="street"
				value="${user_account.getAddress().street}"
				placeholder="Enter Address" />
		</div>
		<div class="form-group">
			<form:input class="form-control" path="city"
				value="${user_account.getAddress().city}" placeholder="Enter City" />
		</div>
		<div class="form-group">
			<form:input class="form-control" path="zip"
				value="${user_account.getAddress().zip}" placeholder="Enter ZIP" />
		</div>
		<div class="form-group">
			<form:select class="form-control" path="state" id="state"
				required="true">
				<c:choose>
					<c:when test="${empty user_account.getAddress().state}">
						<option value="">Select State</option>
					</c:when>
					<c:otherwise>
						<option value="${user_account.getAddress().state}">
							${user_account.getAddress().state}</option>
					</c:otherwise>
				</c:choose>
				<c:forEach items="${states}" var="state">
					<option value="${state}">${state.id}</option>
				</c:forEach>
			</form:select>
		</div>
		<div class="text-left">
			<button type="submit" class="btn btn-main btn-small btn-round">Submit</button>
		</div>
	</form:form>
</body>
</html>