<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Forgot your password?</title>
    <style>
      body {
        background-color: #eee;
        color: #505050;
        font-family: "Rubik", Helvetica, Arial, sans-serif;
        font-size: 14px;
        font-weight: normal;
        line-height: 1.5;
        text-transform: none;
      }
      
      .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
      }
      
      .forgot {
        background-color: #fff;
        padding: 12px;
        border: 1px solid #dfdfdf;
      }
      
      .forgot h2 {
        margin-top: 0;
        margin-bottom: 10px;
      }
      
      .forgot ol {
        margin-left: 20px;
        margin-bottom: 0;
      }
      
      .forgot li {
        margin-bottom: 5px;
      }
      
      .form-group {
        margin-bottom: 20px;
      }
      
      label {
        display: block;
        margin-bottom: 5px;
      }
      
      input[type="text"] {
        width: 40%;
        padding: 10px;
        border: 2px solid #dfdfdf;
        border-radius: 5px;
        box-sizing: border-box;
      }
      
      .form-text {
        display: block;
        margin-top: 5px;
        font-size: 12px;
        color: #888;
      }
      
      .card {
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 5px rgba(0,0,0,0.1);
      }
      
      .card-body {
        padding: 20px;
      }
      
      .card-footer {
        padding: 20px;
        background-color: #fff;
        border-top: 1px solid #dfdfdf;
        border-bottom-left-radius: 5px;
        border-bottom-right-radius: 5px;
      }
      
      .btn {
        display: inline-block;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 13px;
        text-align: center;
        text-decoration: none;
        white-space: nowrap;
        background-color: #28a745;
        color: #fff;
        border: none;
        cursor: pointer;
      }
      
      .btn:hover {
        background-color: #218838;
      }
      
      .btn-danger {
        background-color: #dc3545;
      }
      
      .btn-danger:hover {
        background-color: #c82333;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="forgot">
        <h2>Forgot your password?</h2>
        <p>Change your password in three easy steps. This will help you to secure your password!</p>
       <ol>
          <li class="text-primary text-medium"> Enter your email address below.</li>
          <li class="text-primary text-medium"> Our system will send you an OTP to your email</li>
          <li class="text-primary text-medium"> Enter the OTP on the next page.</li>
          </ol>
      </div>
       
      <form action="ForgotPasswordServlet" method="post"> 
      <br>
     <div class="forgot">
      <label for="email-for-pass"> Enter your email address:</label>
      <input type="text" name="email" id="email-for-pass" required> 
      <br>
      <br>
      <input type=submit class="btn btn-sucess" value="Get New Password">
      <a href="Login.jsp">Back to Login </a>
       </div>
    </form>
   
 </div>
  </body>
</html>