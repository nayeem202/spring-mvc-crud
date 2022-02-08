<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="/product_update" method="post">
					<table>
						<tr>
							<td> Name</td>
							<td> 
								<input type="text" name="name" id="name" value="${data.employee.name}">
							</td>
						</tr>
						
						<tr>
							<td> Department</td>
							<td> 
								<input type="text" name="department" id="department"  value="${data.employee.department}">
							</td>
						</tr>
						
						
						<tr>
							<td> Salary</td>
							<td> 
								<input type="text" name="salary" id="salary"  value="${data.employee.salary}">
							</td>
						</tr>
						
						
							
						<tr>
							
							<td> 
								<input type="submit" value="Submit">
							</td>
						</tr>
					</table>
					
				</form>
			

</body>
</html>