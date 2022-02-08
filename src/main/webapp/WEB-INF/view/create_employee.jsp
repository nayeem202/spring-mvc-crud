<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class = "container">
		<div class="row justify-content-center">
			<div>
				<form action="/employee_save" method="post">
					<table>
						<tr>
							<td> Name</td>
							<td> 
								<input type="text" name="name" id="name">
							</td>
						</tr>
						
						<tr>
							<td> Department</td>
							<td> 
								<input type="text" name="department" id="department">
							</td>
						</tr>
						
						
						<tr>
							<td> Salary</td>
							<td> 
								<input type="text" name="salary" id="salary">
							</td>
						</tr>
						<tr>
							<td> 
								<input type="submit" value="Submit">
							</td>
						</tr>
					</table>
					
				</form>
			
			</div>
		</div>
	
	</div>

</body>
</html>