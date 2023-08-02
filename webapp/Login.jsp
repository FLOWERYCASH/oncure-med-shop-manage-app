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
<body>

<div class="container m-3 p-2">


  
 <div class="card w-50 mx-auto my-5">
  <%@include file="components/message.jsp"  %>
  <img class="card-img-top m-4" style="max-width:100px" src="img/sign-up.png" alt="Card image cap">
     <div class="card-body">
        <h5 class="card-title">login</h5>
          <form action="LoginServlet" method="post" >
     
          <div>
          <label for="email">E.mail</label>
          <input type="email" class="form-control" id="email" name="email"  required aria-describedby="email" placeholder="abc@xyz.com">
          </div>
       
          <div>
          <label for="password">Password</label>
          <input type="password" class="form-control" id="psswrd" name="password" aria-describedby="psswrd" placeholder="password">
          </div>
          <a href="ForgotPassword.jsp" style="align:right">forgot password?</a>
          <br>
          <br>
          <button type="submit" class="btn btn-success" style="align:right">login</button>
          
          <!-- validating pass and reflecting error msg if its wrong !-->

 <% String errorMessage =(String) request.getAttribute("errorMessage");
 if (errorMessage != null) { %>
 <div class="alert alert-danger" role="alert">
    <%= errorMessage %>
   </div>
  <% } %>
     
         </form>
      <br>
        Not registered ? <a href="Signup.jsp">signup</a>
      </div>
 </div>
</div>

</body>
</html>

