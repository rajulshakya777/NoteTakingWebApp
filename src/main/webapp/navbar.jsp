<nav class="navbar navbar-expand-lg navbar-light navbar-colour">
	<a href="index.jsp"> <img alt="Card image cap"
		src="images/noteapp-logo.png" style="max-width: 125px">
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp"><b>Home
				</b><span class="sr-only">(current)</span></a></li>
			<li class="nav-item active"><a class="nav-link"
				href="add_notes.jsp"> <b>Add Notes</b></a></li>
			<li class="nav-item active"><a class="nav-link"
				href="view_notes.jsp"> <b>View Notes</b></a></li>
		</ul>
		<form action="view_notes.jsp" class="form-inline my-2 my-lg-0">
			<input name="searchFilter" class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
</nav>
