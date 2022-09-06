package com.clinic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.clinic.dbconnection.MydbConnection;
import com.clinic.petiont.Patient;

public class Patientdao {
MydbConnection mydb=new MydbConnection();
	Connection con;
	PreparedStatement pre;

	public int savePetiont(Patient emp) {
		int db = 3;
		con=mydb.getMyconnection();
		try {
			pre=con.prepareStatement("insert into petiont(pid,pname,group_id,page)values(?,?,?,?)");
			System.out.println(pre);
			pre.setInt(1, emp.getPetion_id());
			pre.setString(2, emp.getPetion_name());
			pre.setString(3,emp.getBlood_group());
			pre.setInt(4, emp.getPetiont_age());
			System.out.println(pre);
			pre.executeUpdate();
			db=1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return db;
	}

	public ArrayList<Patient> viewEmp() {
		ArrayList<Patient> data = new ArrayList<Patient>();
		con = mydb.getMyconnection();
		try {
			
				pre = con.prepareStatement("select * from petiont");
			ResultSet set = pre.executeQuery();
			while (set.next()) {
				Patient emp = new Patient();
				emp.setPetion_id(set.getInt("pid"));
				emp.setPetion_name(set.getString("pname"));
				emp.setBlood_group(set.getString("group_id"));
				emp.setPetiont_age(set.getInt("page"));
				
				data.add(emp);
              
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return data;
	}
	public Patient getpatientby_id(int id) {
		Patient pa=new Patient();
		con = mydb.getMyconnection();
		try {
			
				pre = con.prepareStatement("select * from petiont where pid=?");
				pre.setInt(1,id);
			ResultSet set = pre.executeQuery();
			if (set.next()) {
				
				pa.setPetion_id(set.getInt("pid"));
				pa.setPetion_name(set.getString("pname"));
				pa.setBlood_group(set.getString("group_id"));
				pa.setPetiont_age(set.getInt("page"));	
             			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pa;
	}
	public int updatepatient(Patient pa) {
		int a=3;
		con=mydb.getMyconnection();
		try {
			pre=con.prepareStatement("update petiont set pname=?,group_id=?,page=? where pid=?");
			pre.setString(1,pa.getPetion_name());
			pre.setString(2, pa.getBlood_group());
			pre.setInt(3, pa.getPetiont_age());
			pre.setInt(4,pa.getPetion_id());
			pre.executeUpdate();
			a=1;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return a;
	}
public int deletePatient(int id) {
	int a=3;
	con=mydb.getMyconnection();
	try {
		pre=con.prepareStatement("delete from petiont where pid=?");
		pre.setInt(1, id);
		pre.executeUpdate();
		a=1;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	
	return a;
}
	
	
	
}
