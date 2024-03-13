<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="all_js_css.jsp"%>
<title>Note App</title>
</head>
<body style="background-color: #e1f5fe;">
	<div>
		<%@include file="navbar.jsp"%>
	</div>
	<div class="text-center">
		<img class="img-fluid mx-auto pt-4 pb-6" style="max-width: 400px;"
			alt="" src="images/notes.png">
		<h1 class="pt-4">"Writing is thinking on paper" - William Zinsser</h1>
		<div class="container text-center mt-5">
			 <a	href="add_notes.jsp" class="btn btn-primary">Start making your notes</a>
		</div>
	</div>
	<div>
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>