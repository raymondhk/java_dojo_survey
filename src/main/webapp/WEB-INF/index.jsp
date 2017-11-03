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
	<div class="container">
		<div class="row header">
			<div class="col-md-12 text-center">
				<h3>Dojo Survey</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="box">
					<form method="POST" action="/process">
						<div class="form-group">
							<label for="name">Your Name:</label>
							<input class="form-control" name="name">
						</div>
						<div class="form-group">
							<label for="location">Dojo Location:</label>
							<select class="form-control" name="location">
								<option>San Jose</option>
								<option>Seattle</option>
								<option>Dallas</option>
								<option>DC</option>
							</select>
						</div>
						<div class="form-group">
							<label for="lang">Favorite Language:</label>
							<select class="form-control" name="lang">
								<option>Python</option>
								<option>Javascript</option>
								<option>Java</option>
								<option>Typescript</option>
								<option>C#</option>
							</select>
						</div>
						<div class="form-group">
							<label for="comment">Comment:</label>
							<textarea class="form-control" name="comment" rows="5"></textarea>
						</div>
						<button type="submit" class="btn btn-primary pull-right">Submit</button>
					</form>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>