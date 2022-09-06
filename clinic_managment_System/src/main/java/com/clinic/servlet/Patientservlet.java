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


@WebServlet("/Patientservlet")
public class Patientservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Patientservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		int id=Integer.parseInt(request.getParameter("p_id"));
		String name=request.getParameter("p_name");
		String blood_group=request.getParameter("p_date");
		System.out.println(blood_group);
		int p_age=Integer.parseInt(request.getParameter("p_age"));
		Patient p=new Patient(id, name, blood_group, p_age);
		Patientdao dao=new Patientdao();
		int d=dao.savePetiont(p);
		System.out.println(d);
		if(d==1){
			out.print("1");
			
		}
		else{
			out.print("3");
			
		}
	}
	}


