<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="utility.*"%>
<%@page import="entities.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>
<title>View Notes</title>
</head>
<body style="background-color: #efebe9;">
    <div>
    <%@include file="navbar.jsp"%>
    </div>
	<div class="container">
		<br>
		<div class="container">
			<h1>All Your Notes</h1>

			<div class="row">
				<div class="col-12">
					<%
					Session ss = HibernateFactory.getSessionFactory().openSession();
					Query query = ss.createQuery("from Note");
					List<Note> noteList = query.list();
					SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");
					dt.setTimeZone(TimeZone.getTimeZone("America/Chicago"));
					;
					int count = 1;

					String searchFilter = request.getParameter("searchFilter");

					if (searchFilter != null) {
						noteList = noteList.stream()
						.filter(note -> note.getTitle().contains(searchFilter) || note.getContent().contains(searchFilter))
						.collect(Collectors.toList());
					}

					for (Note note : noteList) {
						request.getSession().setAttribute("edit_note_id", note.getId());
						request.getSession().setAttribute("edit_note_title", note.getTitle());
						request.getSession().setAttribute("edit_note_content", note.getContent());

						String date = dt.parse(note.getDate().toString()).toString();
						date = date.replace("CDT", "").trim();
					%>
					<div class="card mt-3 notes-body-color">
						<img class="card-img-top m-3 mx-auto" style="max-width: 50px;"
							src="images/pencil.png" alt="Card image cap">
						<div class="card-body px-5">
							<h5 class="card-title"><%=note.getTitle()%></h5>
							<p class="card-mary"><%=note.getContent()%></p>
							<p class=text-primary style="font-size: 14px">
								<b><%=date%></b>
							</p>
							<div class="container text-center mt-2">
								<a href="DeleteNoteServlet?noteId=<%=note.getId()%>"
									class="btn btn-danger" style="margin-right: 5px">Delete</a> <a
									href="edit_note.jsp" class="btn btn-primary">Update</a>
							</div>
						</div>
					</div>
					<%
					}
					ss.close();
					%>


				</div>

			</div>
		</div>

	</div>
	<%@include file="footer.jsp"%>

</body>
</html>
