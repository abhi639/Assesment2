package com.clinic.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clinic.dao.Doctordao;
import com.clinic.petiont.Doctor;


@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String department=request.getParameter("dpart");
		String email=request.getParameter("id");
		String password=request.getParameter("pass");
		
		Doctor d=new Doctor(name, department,email, password);
		Doctordao dao=new Doctordao();
		int a=dao.addDoctor(d);
		PrintWriter out=response.getWriter();
		if(a==1)
		{
			out.print("1");
			
		}
		
		else {
			
			out.print("3");
		
		}
	}

}
