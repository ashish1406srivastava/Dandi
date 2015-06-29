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
						<label for=""InputFullName"">Full name<sup>*</sup></label> <input
							type="text" class="form-control input-sm" id="InputFullName"
							name="InputFullName" required>
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<label for="InputEmail">Short name<sup>*</sup></label> <input
							type="text" class="form-control input-sm" id="InputShortName"
							name="" InputShortName"" required>
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<label for="InputEmail">Serial No<sup>*</sup></label> <input
							type="text" class="form-control input-sm" id="InputSerialNo"
							name="InputSerialNo" required>
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<label for="InputEmail">Serial ID<sup>*</sup></label> <input
							type="text" class="form-control input-sm" id="InputSerialID"
							name="InputSerialID" required>
					</div>
				</div>
			</div>
			<div class="col-lg-8">
				<table class="table table-striped">
					<thead>
						<tr>
							<th style="width: 10%">Level</th>
							<th style="width: 60%">Meta Data</th>
							<th style="width: 10%">Optional</th>
							<th style="width: 10%">Primary</th>
						</tr>
					</thead>
					<tbody id="insertLevel">
						<tr>
							<td>Level 1</td>
							<td><input style="width: 100%" type="text" id="metedata_1"
								name="metedata_1" /></td>
							<td><input type="checkbox" id="opt_1" name="opt_1" /></td>
							<td><input type="checkbox" id="pri_1" name="pri_1" /></td>
						</tr>
						<tr>
							<td>Level 2</td>
							<td><input style="width: 100%" type="text" id="metedata_2"
								name="metedata_2" /></td>
							<td><input type="checkbox" id="opt_2" name="opt_2" /></td>
							<td><input type="checkbox" id="pri_2" name="pri_2" /></td>
						</tr>
						<tr>
							<td>Level 3</td>
							<td><input style="width: 100%" type="text" id="metedata_3"
								name="metedata_3" /></td>
							<td><input type="checkbox" id="opt_3" name="opt_3" /></td>
							<td><input type="checkbox" id="pri_3" name="pri_3" /></td>
						</tr>
						<tr>
							<td>Level 4</td>
							<td><input style="width: 100%" type="text" id="metedata_4"
								name="metedata_4" /></td>
							<td><input type="checkbox" id="opt_4" name="opt_4" /></td>
							<td><input type="checkbox" id="pri_4" name="pri_4" /></td>
						</tr>
						<tr>
							<td>Level 5</td>
							<td><input style="width: 100%" type="text" id="metedata_5"
								name="metedata_5" /></td>
							<td><input type="checkbox" id="opt_5" name="opt_5" /></td>
							<td><input type="checkbox" id="pri_5" name="pri_5" /></td>
						</tr>
						<tr>
							<td>Level 6</td>
							<td><input style="width: 100%" type="text" id="metedata_6"
								name="metedata_6" /></td>
							<td><input type="checkbox" id="opt_6" name="opt_6" /></td>
							<td><input type="checkbox" id="pri_6" name="pri_6" /></td>
						</tr>
						
					</tbody>

				</table>
				<input type="button" onclick="addlevel()" value="Add level"
					class="btn btn-primary btn-sm pull-right" /> 
					<input type="hidden" value="6" name="levelCount" id="levelCount"/>

			</div>
		</div>
	</div>
	<script type="text/javascript">
		function addlevel() {
					var count  = document.getElementById('levelCount').value;
					 var insertPlace = document.getElementById('insertLevel');
					var i = parseInt(count)+1;
					var ins = '<tr>'+
						'<td>Level '+i+'</td>'+
						'<td><input style="width: 100%" type="text" id="metedata_'+i+'" name="metedata_'+i+'" /></td>'+
						'<td><input type="checkbox" id="opt_'+i+'" name="opt_'+i+'" /></td>'+
						'<td><input type="checkbox" id="pri_'+i+'" name="pri_'+i+'" /></td>'+
					'</tr>';
					insertPlace.innerHTML += ins;
					document.getElementById('levelCount').value = i; 
		}
	</script>
	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>