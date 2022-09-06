package com.clinic.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clinic.dao.Doctordao;
import com.clinic.petiont.Doctor;


@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Loginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String user_id=request.getParameter("u_name");
		String password=request.getParameter("pass");
		Doctordao dao=new Doctordao();
		Doctor data=new Doctor();
		HashMap<String, Object> dat=dao.getdoctor_byuser(user_id, password);
		
		System.out.println(dat);
		
		if(dat.get("user_id")!=null) {	
			System.out.println(dat.get("user_id"));
			HttpSession session=request.getSession();
			session.setAttribute("userid",dat.get("user_id"));
			session.setAttribute("username",dat.get("user_name"));
			session.setAttribute("department",dat.get("department"));
			session.setAttribute("email",dat.get("email"));
			
			response.sendRedirect("home.jsp");

		}
		else {
			
			
			response.sendRedirect("login.jsp?msg=wrongpassword");
		}
		
	}
		
	}


