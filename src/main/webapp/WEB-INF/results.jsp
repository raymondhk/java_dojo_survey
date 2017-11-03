<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="./../resources/css/style.css">
<title>Dojo Survey</title>
</head>
<body>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<div class="container">
		<div class="row header">
			<div class="col-md-12 text-center">
				<h3>Dojo Survey Results</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="results_box">
					<table class="table table-bordered">
					    <tbody>
					      <tr>
					        <td>Name</td>
					        <td><c:out value="${name}"/></td>
					      </tr>
					      <tr>
					        <td>Location</td>
					        <td><c:out value="${location}"/></td>
					      </tr>
					      <tr>
					        <td>Favorite Language</td>
					        <td><c:out value="${lang}"/></td>
					      </tr>
					      <tr>
					        <td>Comments</td>
					        <td><c:out value="${comment}"/></td>
					      </tr>
					    </tbody>
					  </table>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">
				<br>
				<p><a href="/">Home</a></p>
			</div>
		</div>
	</div>
</body>
</html>