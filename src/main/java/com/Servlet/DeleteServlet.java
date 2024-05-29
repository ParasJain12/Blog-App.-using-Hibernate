package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.DB.Factory;
import com.dto.Blog;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
          try {
        	  int blogId = Integer.parseInt(request.getParameter("blog_id").trim());
        	  Session ss  = Factory.getFactory().openSession();
        	  Transaction ts = ss.beginTransaction();
        	  Blog blog = (Blog)ss.get(Blog.class,blogId);
        	  ss.delete(blog);
        	  ts.commit();
        	  ss.close();
        	  response.sendRedirect("showBlogs.jsp");
          }
          catch(Exception e) {
        	  e.printStackTrace();
          }
	}

}
