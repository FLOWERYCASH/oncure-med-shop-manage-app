<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Signup</title>
<%@ include file="components/alljs_css.jsp" %>
<%@include file="Navbar.jsp" %>
</head>
<style>

.required:after{
content:" *";
color:red;}
</style>


<body>


 <div class="card w-50 mx-auto my-5" style="width: 30rem; margin:5rem;">
  <%@include file="components/message.jsp"  %>
  <img class="card-img-top m-4" style="max-width:100px" src="img/sign-up.png" alt="Card image cap">
 
  <div class="card-body">
    <h5 class="card-title">New User Registration</h5>
     
  <form action="AddUserServlet" method="post" >
      
       <div>
        <label for="firstName" class="required">firstName</label>
        <input type="text" class="form-control" id="fname" name="firstName" required aria-describedby="name" placeholder="abc">
       </div>
       <div>
        <label for="lastName"  class="required">lastName</label>
        <input type="text" class="form-control" id="lname" name="lastName" required aria-describedby="name" placeholder=" xyz">
       </div>
       <div>
        <label for="dateOfBirth">Date of birth</label>
        <input type="date" class="form-control" id="D.O.B" name="dateOfBirth" aria-describedby="dob" placeholder="dd/mm/yyyy">
       </div>
       <div>
        <label for="city">City</label>
        <input type="text" class="form-control" id="name" name="city" aria-describedby="name" placeholder="ranchi">
       </div>
       <div>
        <label for="pincode">pincode</label>
        <input type="number" class="form-control" id="pincode" name="pincode" aria-describedby="name" placeholder="xxxxxx">
       </div>
      
      <div>
        <label for="phoneNumber"  class="required">Phone no.</label>
        <input type="tel" class="form-control" id="name" name="phoneNumber" required aria-describedby="name" placeholder="+91 XXXXXXXXXX">
       </div>
      
      <div>
        <label for="email"  class="required">E.mail</label>
        <input type="email" class="form-control" id="email" name="email" required aria-describedby="email" placeholder="abc@xyz.com">
       </div>
       <div>
        <label for="password"  class="required">Password</label>
        <input type="text" class="form-control" id="password" name="password" 
        required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,20}" 
        title="Password must contain at least one number, one uppercase and lowercase letter, one special character (@#$%) and be 8-20 characters long"
         aria-describedby="psswrd" placeholder="password">
       </div>
        <div>
        <label for="password"  class="required">Confirm Password</label>
        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" 
        required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,20}" 
        title="Password must contain at least one number, one uppercase and lowercase letter, one special character (@#$%) and be 8-20 characters long"
         aria-describedby="psswrd" placeholder="password">
          </div>
        
<!-- validating pass and reflecting error msg if its wrong !-->

 <% String errorMessage =(String) request.getAttribute("errorMessage");
 if (errorMessage != null) { %>
 <div class="alert alert-danger" role="alert">
    <%= errorMessage %>
   </div>
  <% } %>

       
       <br>
       <button type="submit" class="btn btn-outline-success">Signup</button>
        </form>
        </div>
        
  <p> Already have an account?<a class=" login-msg" href="Login.jsp" > login</a></p>     
      
 </div>
</body>
</html>