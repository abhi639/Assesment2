<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.clinic.petiont.Patient" %>
        <%@ page import="com.clinic.dao.Patientdao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<%Patientdao dao=new Patientdao();



	
Patient pa=dao.getpatientby_id(Integer.parseInt(request.getParameter("id")));

%>

<div class="container">

      <div class="modal-body">
        <form id="form_submit" action="UpdatePatient"method="POST">
         <div id="error_msg" ></div>
         <table class="table">
                                  
         <tr>
         <td>Patient ID</td>
         <td><input type="text"class="form-control"value="<%=pa.getPetion_id() %>" name="p_id" ></td>
         </tr>
          <tr>
         <td>Patient Name</td>
         <td><input type="text"class="form-control"value="<%=pa.getPetion_name() %>" name="p_name" required></td>
         </tr>
          <tr>
         <td>Blood Group</td>
         <td><input type="text"class="form-control"value="<%=pa.getBlood_group() %>" name="p_date" required></td>
         </tr>
          <tr>
          <tr>
         <td>Patient Age</td>
         <td><input type="number"class="form-control"value="<%=pa.getPetiont_age() %>" name="p_age" required></td>
         </tr>
         </table>
          <div class="modal-footer">
         <button  id="form_button" type="submit" class="btn btn-primary">Upadate</button>
          <button type="button"  class="btn btn-secondary" data-dismiss="modal">Cancel</button>
            </div>
          </form>
 </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
 
         $(document).ready(function(){
        	 console.log("done");
        	 $("#form_submit").on("submit",function(event){
        		 
        		 event.preventDefault();
        		 $('#error_msg').html('     ');
        		 console.log("click buton");
        		 	var f=$(this).serialize(); 
        		 	console.log(f);
        		 $.ajax({
        			 url:'UpdatePatient',
        			type:'POST',
        			data: f,
        			 
        			 success:function(data,textStatus,jqXHR){
        				 
        				 console.log("Submited buton");
        				 console.log(data);
        				
        				 if(data==1)
     			 		{
     			 			     			 			 
     			 			$('#form_submit').trigger("reset");
     			 			
     			 			
     			 			window.location.href="view.jsp";
     			 		}
     			 		else if (data==3)
    			 			{
    			 			
     			 			$('#error_msg').html('Not Updated ');
     			 	
     			 			$("#error_msg").addClass('bg-danger text-white');
    			 			}
     			 		
        			 },
        			 
        		 error:function(jqXHR,textStatus,errorThrown){
        			 
        			 console.log("not Submited buton");
        			 
        		 },
        			
        		 })
        		
        		 
        	 }) 
        	 
        	 
         })
        	 $("#text").click(function(){
        		 $('#error_msg').html('  ');
        		 $('#error_msg').addClass('text-white');
        		 $('#form_submit').trigger("reset");
        	 })
        	 
        	  	 
        	   </script> 

</body>
</html>
        	 
        	   	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 
                     