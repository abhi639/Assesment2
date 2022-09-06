package com.clinic.petiont;

public class Doctor {

	int id;
	String doctor_name;
	String deparment;
	String email;
	String password;
	
	public Doctor(String doctor_name, String deparment, String email, String password) {
		super();
		this.doctor_name = doctor_name;
		this.deparment = deparment;
		this.email = email;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public Doctor() {
		
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDoctor_name() {
		return doctor_name;
	}

	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}

	public String getDeparment() {
		return deparment;
	}

	public void setDeparment(String deparment) {
		this.deparment = deparment;
	}

	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	
	
}
