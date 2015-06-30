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
		<form method="post" action="#" id="formStatutes" onsubmit="return createXML();">
			<div class="row">
				<div class="col-md-4">
					<div class="row">
						<div class="form-group">
							<label for="InputGender">Country<sup>*</sup></label> <select
								id="InputCountry" name="InputCountry"
								class="selectpicker form-control input-sm" required>
								<option value="">Select Country</option>
								<option value="IND">India</option>
								<option value="USA">America</option>
							</select>
						</div>
					</div>


					<div class="row">
						<div class="form-group">
							<label for="InputFullName">Full name<sup>*</sup></label> <input
								type="text" class="form-control input-sm" id="InputFullName"
								name="InputFullName" required>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label for="InputEmail">Short name<sup>*</sup></label> <input
								type="text" class="form-control input-sm" id="InputShortName"
								name="InputShortName" required>
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
					<table class="table table-striped" id='levelTable'>
						<thead>
							<tr>
								<th style="width: 10%">Level</th>
								<th style="width: 60%">Meta Data</th>
								<th style="width: 10%">Optional</th>
								<th style="width: 10%">Primary</th>
							</tr>
						</thead>
						<tbody id="insertLevel">
							<tr id="level_1">
								<td>Level 1</td>
								<td><input style="width: 100%" type="text" id="metedata_1"
									name="metedata_1" required /></td>
								<td><input type="checkbox" id="opt_1" name="opt_1" /></td>
								<td><input type="checkbox" id="pri_1" name="pri_1" /></td>
							</tr>
							<tr id="level_2">
								<td>Level 2</td>
								<td><input style="width: 100%" type="text" id="metedata_2"
									name="metedata_2" required /></td>
								<td><input type="checkbox" id="opt_2" name="opt_2" /></td>
								<td><input type="checkbox" id="pri_2" name="pri_2" /></td>
							</tr>
							<tr id="level_3">
								<td>Level 3</td>
								<td><input style="width: 100%" type="text" id="metedata_3"
									name="metedata_3" required /></td>
								<td><input type="checkbox" id="opt_3" name="opt_3" /></td>
								<td><input type="checkbox" id="pri_3" name="pri_3" /></td>
							</tr>
							<tr id="level_4">
								<td>Level 4</td>
								<td><input style="width: 100%" type="text" id="metedata_4"
									name="metedata_4" required /></td>
								<td><input type="checkbox" id="opt_4" name="opt_4" /></td>
								<td><input type="checkbox" id="pri_4" name="pri_4" /></td>
							</tr>
							<tr id="level_5">
								<td>Level 5</td>
								<td><input style="width: 100%" type="text" id="metedata_5"
									name="metedata_5" required /></td>
								<td><input type="checkbox" id="opt_5" name="opt_5" /></td>
								<td><input type="checkbox" id="pri_5" name="pri_5" /></td>
							</tr>
							<tr id="level_6">
								<td>Level 6</td>
								<td><input style="width: 100%" type="text" id="metedata_6"
									name="metedata_6" required /></td>
								<td><input type="checkbox" id="opt_6" name="opt_6" /></td>
								<td><input type="checkbox" id="pri_6" name="pri_6" /></td>
							</tr>

						</tbody>

					</table>
					<input type="submit" value="Submit"
						class="btn btn-success btn-sm pull-right"
						style="margin-left: 10px;"/> <input type="button"
						onclick="addlevel()" value="Add level"
						class="btn btn-primary btn-sm pull-right" /> <input type="hidden"
						value="6" name="levelCount" id="levelCount" /> <input
						type="button" onclick="rmvlevel()" value="Remove level"
						class="btn btn-danger btn-sm pull-right"
						style="margin-right: 10px;" />

				</div>
			</div>
			<!-- Modal HTML -->

			<div id="myModal" class="modal fade">

				<div class="modal-dialog">

					<div class="modal-content">

						<div class="modal-header">

							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>

							<h4 class="modal-title">XML Confirmation</h4>

						</div>

						<div class="modal-body">

							<textarea id='xmlPanel' class="form-control" rows="5"
								readonly="true" style="border: none;"></textarea>

						</div>

						<div class="modal-footer">

							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>

							<button type="button" class="btn btn-primary">Save
								changes</button>

						</div>

					</div>

				</div>

			</div>
		</form>

	</div>
	<footer class="footer">
	<div class="container">
		<p class="text-muted">Dandi &copy;2015.</p>
	</div>
	</footer>

	<script type="text/javascript">
		$('#formStatutes').parsley();
		//Add New Lael Option using Javascript 
		function addlevel() {
			var count = document.getElementById('levelCount').value;
			var insertPlace = document.getElementById('insertLevel');
			var i = parseInt(count) + 1;
			var ins = '<tr id="level_'+i+'">'
					+ '<td>Level '
					+ i
					+ '</td>'
					+ '<td><input style="width: 100%" type="text" id="metedata_'
					+ i
					+ '" name="metedata_'
					+ i
					+ '" required/></td>'
					+ '<td><input type="checkbox" id="opt_'+i+'" name="opt_'+i+'" /></td>'
					+ '<td><input type="checkbox" id="pri_'+i+'" name="pri_'+i+'" /></td>'
					+ '</tr>';
			insertPlace.innerHTML += ins;
			document.getElementById('levelCount').value = i;
		}

		function rmvlevel() {
			var i = $('#levelCount').val();
			var rowid = 'level_' + i;
			$('#' + rowid).remove();
			$('#levelCount').val(--i);
		}
		//Create a xml using server ajax request
		
		function createXML() {
			var form = $('#formStatutes');
			$.ajax({
				type : "POST",
				url : "prePairXML",
				data : form.serialize(),
				//if received a response from the server
				success : function(data, textStatus, jqXHR) {
					alert(data)
				},
				error : function(jqXHR, textStatus, errorThrown) {
					console.log("Something really bad happened " + textStatus);
					alert(jqXHR.responseText + ' ' + textStatus);
				}
			});
			return false;
		}
	</script>
	<!-- All Javascript -->
	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- Date Time Management lib  -->
	<script src="js/moment.min.js"></script>
	<script src="js/moment-timezone-with-data-2010-2020.min.js"></script>
	<!-- Client Side Validation  -->
	<script src="js/parsley.min.js"></script>

</body>
</html>