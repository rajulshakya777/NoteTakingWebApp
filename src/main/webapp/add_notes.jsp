<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>
<title>Take notes</title>
</head>
<body style="background-color: #e1f5fe;">
    <div>
    <%@include file="navbar.jsp"%>
    </div>
	<div class="container">
		<br>

		<h1>Add Your Notes</h1>

		<!-- Add notes -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note title</label> <input required name="title"
					type="text" class="form-control" id="titile"
					aria-describedby="emailHelp" placeholder="Enter text" />
			</div>
			<div class="form-group">

				<label for="content">Note content</label>
				<textarea required name="content" id="content"
					placeholder="Enter text" class="form-control"
					style="height: 350px;"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success btn-lg">Save</button>
			</div>
		</form>

	</div>
<%@include file = "footer.jsp" %>
</body>
</html>