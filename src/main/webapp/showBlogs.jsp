<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="com.DB.Factory"%>
<%@ page import="com.dto.Blog"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Blogs</title>
<%@ page import="all_js_css.jsp" %>
</head>
<body>
	<div class="container">
	<%@ page import="navbar.jsp" %>
		<h1 class="text-uppercase">All Blogs</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session ss = Factory.getFactory().openSession();
				Query q = ss.createQuery("from Blog");
				List<Blog> list = q.list();
				for (Blog blog : list) {
				%>
				<div class="card mt-3">
					<img class="card-img-top m-4" style="max-width: 100px;"
						src="Assests/images/notepad.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=blog.getBlogTitle()%></h5>
						<p class="card-text"><%=blog.getBlogContent()%></p>
						<p><b><%= blog.getAddDate() %></b></p>
						<div class="container text-center mt-2">
						<a href="DeleteServlet?blog_id=<%= blog.getBlogId() %>" class="btn btn-danger">Delete</a>
						<a href="Update.jsp?blog_id=<%= blog.getBlogId() %>" class="btn btn-primary">Update</a>
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
</body>
</html>