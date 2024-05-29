<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.DB.Factory"%>
<%@ page import="com.dto.Blog"%>
<%@ page import="org.hibernate.Session"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
</head>
<body>
	<div class="container">
		<h1>Edit/Update Page</h1>
		<%
		int blogId = Integer.parseInt(request.getParameter("blog_id").trim());
		Session ss = Factory.getFactory().openSession();
		Blog blog = (Blog) ss.get(Blog.class, blogId);
		%>
		<form action="UpdateServlet" method="post">
		<input value="<%= blog.getBlogId() %>" name="blogId" type="hidden"/>
			<div class="form-group">
				<label for="title">Blog Title</label> <input name="title" required type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter Title" value="<%= blog.getBlogTitle()%>">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content" placeholder="Enter Your Content Here!"
					class="form-control" style="height: 300px;"><%= blog.getBlogContent() %></textarea>
			</div>
			<div class="container text-center">
			<button type="submit" class="btn btn-success">Save Your Blog</button>
			</div>
		</form>
	</div>
</body>
</html>