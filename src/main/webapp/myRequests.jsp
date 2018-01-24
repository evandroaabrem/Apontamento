
<!DOCTYPE html>
<html lang="en">
<head>
<title>Purchase Requests</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="myRequestList" scope="request" type="java.util.List" />
<script type="text/javascript">
        var contexPath = "<%=request.getContextPath() %>";
</script>

<script
	src="<%=request.getContextPath() %>/resources/css/source.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
	function doAjaxPost() {
		var name = $('#name').val();
		var education = $('#education').val();
		$.ajax({

			type : "POST",
			url : contexPath + "/AddUser.htm",
			data : "name=" + name + "&education=" + education,

			success : function(response) {

				// we have the response

				if (response.status == "SUCCESS") {

					userInfo = "<ol>";

					for (i = 0; i < response.result.length; i++) {

						userInfo += "<br><li><b>Name</b> : "
								+ response.result[i].name +

								";<b> Education</b> : "
								+ response.result[i].education;

					}

					userInfo += "</ol>";

					$('#info').html(
							"User has been added to the list successfully. "
									+ userInfo);

					$('#name').val('');

					$('#education').val('');

					$('#error').hide('slow');

					$('#info').show('slow');

				} else {

					errorInfo = "";

					for (i = 0; i < response.result.length; i++) {

						errorInfo += "<br>" + (i + 1) + ". "
								+ response.result[i].code;

					}

					$('#error').html(
							"Please correct following errors: " + errorInfo);

					$('#info').hide('slow');

					$('#error').show('slow');

				}

			},

			error : function(e) {

				alert('Error: ' + e);

			}

		});

	}
</script>
</head>
<body>

	<input type="button" value="Add Users" onclick="doAjaxPost()">
	<br /> Enter your name :
	<input type="text" id="name">
	<br /> Education :
	<input type="text" id="education">



	<div class="container-fluid">
		<div class="page-header">
			<h1>Purchase Requests</h1>
		</div>
		<div class="row">
			<ul class="nav nav-tabs">
				<li role="presentation" class="active"><a href="#">Saved</a></li>
				<li role="presentation"><a href="#">Submitted</a></li>
				<li role="presentation"><a href="#">Approved</a></li>
			</ul>
		</div>
		<div class="row">
			<table class="table">
				<thead>
					<tr>
						<th>PO Number</th>
						<th>Date</th>
						<th>Justification</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${myRequestList}" var="request">
						<c:set var="tieId" value="${request.status}" />
						<tr class="${tieId eq 'A' ? 'danger': 'active' }">
							<td>${request.poNumber}</td>
							<td>${request.date}</td>
							<td>${request.justification}</td>
							<td>${request.status}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>
