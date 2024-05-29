package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DB.CheckUser;
import com.dto.RegisterLogin;

import jakarta.servlet.RequestDispatcher;

public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginUser() {
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    CheckUser user;
	    if(user.validate(username, password)) {
	    	RequestDispatcher ds = request.getRequestDispatcher("login-success.jsp");
	    }
	    else {
	    	throw new Exception("Login Not Successfully!");
	    }
    }

}
