<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>
<title>Take notes</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<h1>Add your notes</h1>

		<!-- Add notes -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note title</label> <input required type="text"
					class="form-control" id="titile" aria-describedby="emailHelp"
					placeholder="Enter text">
			</div>
			<div class="form-group">
				<label for="content">Note content</label>
				<textarea required id="content" placeholder="Enter text"
					class="form-control" style="height: 350px"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success btn-lg">Save</button>
			</div>
		</form>

	</div>
</body>
</html>