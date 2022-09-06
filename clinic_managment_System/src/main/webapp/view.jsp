<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.clinic.dao.Patientdao" %>
    <%@ page import="com.clinic.petiont.Patient" %>
    <%@page import="java.util.ArrayList"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Patient</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<style>
	.banner-backgrround{
clip-path: polygon(30% 0%, 100% 0, 100% 88%, 75% 84%, 53% 91%, 28% 95%, 0 90%, 0 0);	}
	
	</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-fixed">
  <a class="navbar-brand" href="#">Clinic Managment System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="#">Login</a>
      <a class="nav-item nav-link" href="#"></a>
     
    </div>
  </div>
</nav>

<div class="container">
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Patient ID</th>
      <th scope="col">Patient Name</th>
      <th scope="col">Blood Group</th>
      <th scope="col">Patient Age</th>
        <th scope="col">Delete patient</th>
         <th scope="col">Update patient</th>
    </tr>
  </thead>
  
  <tbody>
   <%
  Patientdao dao=new Patientdao();
  
   ArrayList<Patient> data1=dao.viewEmp();
   for(Patient emp:data1){
 %>
    <tr>
       <td scope="row"><%=emp.getPetion_id() %></td>
       <td scope="row"><%=emp.getPetion_name()%></td>
        <td scope="row"><%=emp.getBlood_group()%></td>
         <td scope="row"><%=emp.getPetiont_age() %></td>
          <td scope="row"><a href="Deleteservlet?id=<%=emp.getPetion_id()%>"><i class="far fa-trash-alt"></i></td>
           <td scope="row"><a href="data.jsp?id=<%=emp.getPetion_id()%>"><i class="fas fa-pen"></i></a>
    <%} %>
    </tr>
  </tbody>
</table>
0
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>