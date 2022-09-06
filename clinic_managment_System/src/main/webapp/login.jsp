<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
	.banner-backgrround{
clip-path: polygon(30% 0%, 100% 0, 100% 88%, 75% 84%, 53% 91%, 28% 95%, 0 90%, 0 0);
}
	
	</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="css/signin.css" rel="stylesheet">
</head>

    <body class="text-center ">
        <div class="container">
        
        <%
					String ms=(String)session.getAttribute("mssg");
                    String log=(String)session.getAttribute("invalid");
					if(ms!=null){
					
					%>
					<div class="alert" role="alert">
                     <strong>Logout Succesfully</strong> 
                         </div>
                         <% 
                         session.removeAttribute("mssg");
					     }
					%>
        <form id="log"class="form-signin" action="Loginservlet" method="post">
            <img class="mb-4" src="img/login.png" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
            <label for="inputEmail" class="sr-only">Email address</label>
            <input type="email"  class="form-control" name="u_name"placeholder="Email address" required autofocus>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" name="pass"class="form-control" placeholder="Password" required>
        
            <button class="btn btn-lg btn-primary btn-block"id="login" type="submit" type="submit">Sign in</button>
            	<div class="mt-4">
					<div class="d-flex justify-content-center links">
						Don't have an account? <a href="" id="text"data-toggle="modal" data-target="#exampleModal"class="ml-2">Register</a>
					</div>
					
				</div>
            <p class="mt-5 mb-3 text-muted">© 2017-2018</p>
          </form>
        </div>
        
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Admin</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="form_submit" action="AdminServlet"method="POST">
         <div id="error_msg" ></div>
         <table class="table">
                                  
         <tr>
         <td>Doctor name</td>
         <td><input type="text"class="form-control" name="name" required></td>
         </tr>
          <tr>
         <td>Department</td>
         <td><input type="text"class="form-control" name="dpart" required></td>
         </tr>
          <tr>
         <td>Email</td>
         <td><input type="email"class="form-control" name="id" required></td>
         </tr>
          <tr>
          <tr>
         <td>Password</td>
         <td><input type="text"class="form-control" name="pass" required></td>
         </tr>
         </table>
          <div class="modal-footer">
         <button  id="form_button" type="submit" class="btn btn-primary">Save</button>
          <button type="button"  class="btn btn-secondary" data-dismiss="modal">Cancel</button>
            </div>
          </form>
      </div>
      
    </div>
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
        		 	
        		 $.ajax({
        			 url:'AdminServlet',
        			type:'POST',
        			data: f,
        			 
        			 success:function(data,textStatus,jqXHR){
        				 
        				 console.log("Submited buton");
        				 console.log(data);
        				
        				 if(data==1)
     			 		{
     			 			     			 			 
     			 			$('#form_submit').trigger("reset");
     			 			
     			 			$('#exampleModal').modal('hide'); 
     			 		}
     			 		else if (data==3)
    			 			{
    			 			
     			 			$('#error_msg').html('DUPLICATE Email ');
     			 	
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