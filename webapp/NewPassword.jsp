<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Reset Password</title>
  <style>
    /* Body styles */
    body {
      background-color: #17a2b8;
      font-family: sans-serif;
      margin: 0;
      padding: 0;
    }

    /* Container styles */
    .container {
      background-color: #fff;
      border-radius: 5px;
      margin: 50px auto;
      max-width: 500px;
      padding: 20px;
    }

    /* Heading styles */
    h1 {
      color: #000;
      font-size: 28px;
      font-weight: bold;
      margin: 0 0 20px;
      text-align: center;
    }

    /* Input styles */
    input[type="text"],
    input[type="password"] {
      border: 2px solid #dfdfdf;
      border-radius: 3px;
      box-shadow: none;
      font-family: FontAwesome;
      font-size: 16px;
      padding: 10px;
      width: 95%;
    }

    input[type="text"]::placeholder,
    input[type="password"]::placeholder {
      color: #c9c9c9;
    }

    /* Submit button styles */
    input[type="submit"] {
      background-color: #17a2b8;
      border: none;
      border-radius: 3px;
      box-shadow: none;
      color: #fff;
      cursor: pointer;
      font-size: 16px;
      font-weight: bold;
      padding: 10px;
      width: 100%;
    }

    input[type="submit"]:hover {
      background-color: #138496;
     
    }

    /* Alternative login styles */
    .alt-login {
      background-color: #f8f9fa;
      margin-top: 20px;
      padding: 10px 20px;
    }

    .alt-login hr {
      border-top: 4px solid #dee2e6;
      margin: 30px 0;
    }

    .alt-login h5 {
      color: #000;
      font-size: 18px;
      font-weight: bold;
      margin: 0 0 10px;
      text-align: center;
    }

    .alt-login a {
      color: #dc3545;
      text-decoration: none;
    }

  </style>
</head>
<body>
  <div class="container">
    <h1>Reset Password</h1>
  <form method="post" action="NewPasswordServlet">
      <div>
        <input type="text" name="password" placeholder="&#xf084; &nbsp; New Password">
      </div>
      <br>
      <div>
        <input type="password" name="confPassword" placeholder="&#xf084; &nbsp; Confirm New Password">
      </div>
      <br>
      <div>
        <input type="submit" value="Reset">
      </div>
    </form>
    <div class="alt-login">
      <hr>
      <h5>Don't have an Account? <a href="Signup.jsp">Register Now!</a></h5>
    </div>
  </div>
</body>
</html>
    