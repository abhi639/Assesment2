package com.clinic.petiont;

public class Patient {
	private int petion_id;
    private String petion_name;
    private String blood_group;
    private int petiont_age;
	public int getPetion_id() {
		return petion_id;
	}
	public void setPetion_id(int petion_id) {
		this.petion_id = petion_id;
	}
	public String getPetion_name() {
		return petion_name;
	}
	public Patient() {
		super();
	}
	public void setPetion_name(String petion_name) {
		this.petion_name = petion_name;
	}
	public String getBlood_group() {
		return blood_group;
	}
	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}
	public int getPetiont_age() {
		return petiont_age;
	}
	public void setPetiont_age(int petiont_age) {
		this.petiont_age = petiont_age;
	}
	public Patient(int petion_id, String petion_name, String blood_group, int petiont_age) {
		
		this.petion_id = petion_id;
		this.petion_name = petion_name;
		this.blood_group = blood_group;
		this.petiont_age = petiont_age;
	}
}
