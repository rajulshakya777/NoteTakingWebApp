<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="all_js_css.jsp"%>
<title>Edit notes</title>
</head>
<body>
    <div>
    <%@include file="navbar.jsp"%>
    </div>
	<div class="container">
		<h1>Edit your note:</h1>

		<%
		String title = (String) session.getAttribute("edit_note_title");
		String content = (String) session.getAttribute("edit_note_content");
		%>

		<form action="UpdateNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note title</label> <input required name="title"
					type="text" class="form-control" id="titile"
					aria-describedby="emailHelp" placeholder="Enter text"
					value="<%=title%>" />
			</div>
			<div class="form-group">

				<label for="content">Note content</label>
				<textarea required name="content" id="content"
					placeholder="Enter text" class="form-control"
					style="height: 350px;"><%=content%></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary btn-lg">Update</button>
			</div>
		</form>
	</div>
<%@include file = "footer.jsp" %>
</body>
</html>