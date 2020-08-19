
    <%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>
<a href="about">about</a>
<a href="login">log in</a>
<a href="contact">contact</a>
<a href="#">sign up</a>
<a href="index">Home</a>
</p>
<h2>${msg}</h2>
<a href="getstate?state=Missouri">State</a>
<a href="message-${msg}">mmmm</a>
<!-- <form action="signup" method="post">
<input name="fname" placeholder="First name">
<input name="lname" placeholder="Last Name">
<input type="email" name="email" placeholder="Enter email">
<input type="password" name="password" placeholder= "Enter password">
<button type="submit">Submit</button>
</form> -->
<form:form action="register" modelAttribute="user" method="post">
<form:input path="fname" placeholder="First name"/>
<form:input path="lname" placeholder="Last name"/>
<form:input type="email" path="email" placeholder="E-mail"/>
<form:input type="password" path="password" placeholder="Enter Password" />

<button type="submit">Submit</button>
</form:form>
</body>
</html>