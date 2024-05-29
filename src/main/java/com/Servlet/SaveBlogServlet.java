package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.DB.Factory;
import com.dto.Blog;

public class SaveBlogServlet extends HttpServlet {
	private static final long serialVersionUID=1L;

	public SaveBlogServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
	    try {
	    	String title = request.getParameter("title");
	    	String content = request.getParameter("content");
	    	Blog blog = new Blog(title,content,new Date());
	    	//hibernate
	    	Session ss = Factory.getFactory().openSession();
	    	Transaction ts = ss.beginTransaction();
	    	ss.save(blog);
	    	ts.commit();
	    	ss.close();
	    	response.setContentType("text/html");
	    	PrintWriter pw = response.getWriter();
	    	pw.println("<h1 style='txet-align:center;'>Blog is added successfully!</h1>");
	    	pw.println("<h1 style='txet-align:center;'><a href ='showBlogs.jsp'>View All Blogs</a></h1>");
	    }
	    catch(Exception e) {
	    	e.printStackTrace();
	    }
	}

}
