package com.clinic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import com.clinic.dbconnection.MydbConnection;
import com.clinic.petiont.Doctor;

public class Doctordao {

	
	Connection con;
	PreparedStatement pre;
	MydbConnection mydb=new MydbConnection();
	
	public int addDoctor(Doctor doc) {
		int a=3;
		con=mydb.getMyconnection();
		try {
			pre=con.prepareStatement("insert into register(user_name,department,email,user_password)values(?,?,?,?)");
		        pre.setString(1, doc.getDoctor_name());
		pre.setString(2, doc.getDeparment());
		pre.setString(3, doc.getemail());
		pre.setString(4, doc.getPassword());
		pre.executeUpdate();
		a=1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}
	public HashMap<String, Object> getdoctor_byuser(String user,String password) {
		HashMap<String, Object> data=new HashMap<String, Object>();
		Doctor d=new Doctor();
		con=mydb.getMyconnection();
		try {
			pre=con.prepareStatement("select * from register where email=? and user_password=?");
			pre.setString(1, user);
			pre.setString(2, password);	
			ResultSet set=pre.executeQuery();
			if(set.next()){
				
				data.put("user_id",set.getInt("userid"));
				data.put("user_name",set.getString("user_name"));
				data.put("department",set.getString("department"));
				data.put("email",set.getString("email"));
				//d.setPassword(set.getString("user_password"));
				
			}
			
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return data;
	}
	
}
