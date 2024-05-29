package com.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.DB.Factory;
import com.dto.RegisterLogin;

import jakarta.servlet.annotation.WebServlet;


public class RegisterUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterUserServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	    	String uid = request.getParameter("username");
			String pass = request.getParameter("password");
			String email = request.getParameter("email");
			int age = Integer.parseInt(request.getParameter("age"));
			String contact = request.getParameter("phonenumber");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String pincode = request.getParameter("pincode");
			Session ss = Factory.getFactory().openSession();
	    	Transaction ts = ss.beginTransaction();
			RegisterLogin register = new RegisterLogin();
			register.setUid(uid);
			register.setPass(pass);
			register.setEmail(email);
			register.setAge(age);
			register.setContact(contact);
			register.setCity(city);
			register.setState(state);
			register.setPincode(pincode);
			ss.save(register);
	    	ts.commit();
	    	ss.close();
	    	RequestDispatcher disp = request.getRequestDispatcher("register-success.jsp");
	    	disp.forward(request, response);
	    }
	    catch(Exception e) {
	    	e.printStackTrace();
	    }
	}

}
