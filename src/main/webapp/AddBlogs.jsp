<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Blogs</title>
<%@ page import="all_js_css.jsp" %>
</head>
<body>
	<div class="container">
		<%@ page import="navbar.jsp" %>
		<h1>This is Add Blog Page</h1>
		<form action="SaveBlogServlet" method="post">
			<div class="form-group">
				<label for="title">Blog Title</label> <input name="title" required type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter Title">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content" placeholder="Enter Your Content Here!"
					class="form-control" style="height: 300px;"></textarea>
			</div>
			<div class="container text-center">
			<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>
</body>
</html>