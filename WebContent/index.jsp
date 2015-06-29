<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Dandi</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/navbar-fixed-top.css" rel="stylesheet">
</head>
<body>
	<!--//-->
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Dandi</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Option1</a></li>
				<li><a href="#about">Option 2</a></li>
				<li><a href="#contact">Option3</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1>List of Statutes</h1>
			<p>Fatch From Database.</p>
			<p></p>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="row">
					<div class="form-group">
						<label for="InputGender">Country<sup>*</sup></label> <select
							id="InputCountry" name="InputCountry"
							class="selectpicker form-control input-sm" required>
							<option value="">Select Country</option>
							<option value="1">India</option>
							<option value="2">America</option>
						</select>
					</div>
				</div>
			
			
				<div class="row">
					<div class="form-group">
						<label for=""InputFullName"">Full name<sup>*</sup></label> 
						<input type="text" class="form-control input-sm" id="InputFullName"
							name="InputFullName" required>
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<label for="InputEmail">Short name<sup>*</sup></label> 
						<input type="text" class="form-control input-sm" id="InputShortName"
							name=""InputShortName"" required>
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<label for="InputEmail">Serial No<sup>*</sup></label>
						 <input type="text" class="form-control input-sm" id="InputSerialNo"
							name="InputSerialNo" required>
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<label for="InputEmail">Serial ID<sup>*</sup></label>
						 <input type="text" class="form-control input-sm" id="InputSerialID"
							name="InputSerialID" required>
					</div>
				</div>
				<div class="col-lg-8">
				
				
				
				
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>