<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>${msg}</h1>
<form action="search" method="POST">
<input type="search" name="keyword" class="form-control" placeholder="Search users...">
<button type="submit">Search</button>
</form>
	<table>
		<tr>
			<th>#</th>
			<th>Name</th>
			<th>Email</th>
			<th>Password</th>
		</tr>
		<tbody>
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.id}</td>
					<td>${item.fname}${item.lname}</td>
					<td>${item.email}</td>
					<td>${item.password}</td>
					<td><a href="delete?id=${item.id}">Delete</a>
						<form method="POST" action="editrole">
							<input type="hidden" name="id" value="${item.id}" /> <select
								onchange="this.form.submit()" name="role" class="form-control">
								<option value="${item.role}">${item.role}</option>
								<option value="USER">USER</option>
								<option value="DBA">DBA</option>
								<option value="ADMIN">ADMIN</option>
							</select>
						</form>
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>