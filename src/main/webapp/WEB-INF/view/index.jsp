<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
		<table class="table table-responsive">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Department</th>
						<th>Salary</th>
						<th>Action</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="p" items="#{data.emplist}">
						<tr>
							<td>${p.id}</td>
							<td>${p.name}</td>
							<td>${p.department}</td>
							<td>${p.salary}</td>
						
							<td><a href="/employee_edit/${p.id}">Edit</a>&nbsp;&nbsp;|&nbsp;
								<a href="/employee_delete/${p.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

</body>
</html>