package com.clinic.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clinic.dao.Patientdao;
import com.clinic.petiont.Patient;

/**
 * Servlet implementation class UpdatePatient
 */
@WebServlet("/UpdatePatient")
public class UpdatePatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out =response.getWriter();
		System.out.println(request.getParameter("p_id"));
		
		int id=Integer.parseInt(request.getParameter("p_id"));
		
	String name=request.getParameter("p_name");
	
		System.out.println(name);
		
		String blood_group=request.getParameter("p_date");
		
		System.out.println(blood_group);
		
		int p_age=Integer.parseInt(request.getParameter("p_age"));
		
		Patient p=new Patient(id, name, blood_group, p_age);
		
		Patientdao dao=new Patientdao();
		int d=dao.updatepatient(p);
		System.out.println(d);
		
		
		if(d==1){
			out.print("1");
		//response.sendRedirect(blood_group);
		}
		else{
			out.print("3");
			
		}
}
		
		
	}


