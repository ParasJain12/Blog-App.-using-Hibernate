package com.Servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.DB.Factory;
import com.dto.Blog;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           try {
        	   String title = request.getParameter("title");
        	   String content = request.getParameter("content");
        	   int blogId = Integer.parseInt(request.getParameter("blogId").trim());
        	   Session ss  = Factory.getFactory().openSession();
        	   Transaction ts = ss.beginTransaction();
        	   Blog blog = ss.get(Blog.class,blogId);
        	   blog.setBlogTitle(title);
        	   blog.setBlogContent(content);
        	   blog.setAddDate(new Date());
        	   ts.commit();
        	   ss.close();
           }
           catch(Exception e)
           {
        	   e.printStackTrace();
           }
	}

}
