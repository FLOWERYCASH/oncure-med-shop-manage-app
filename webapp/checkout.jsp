<%

User user = (User)session.getAttribute("current-user");
if(user == null)
{
	   session.setAttribute("message","you are not logged in !!!login first to access checkout page");
	   response.sendRedirect("Login.jsp");
	   return;
}

%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    
<title>OnCure/checkout</title>

<%@include file="Navbar.jsp"  %>
<%@include file="components/alljs_css.jsp"  %>
<%@include file="components/message.jsp"  %>

 <style>
 *{
	margin:0;
	padding:0;
	box-sizing:border-box;
	font-family:'Poppins',sans-serif;
}
.container-popup{
	width:100%;
	height:100vh;
	background:#3c5077;
	display:flex;
	align-items:center;
	justify-content: center;
	margin-top:5px;
}

.btn-popup{
	padding:10px 60px;
	background:#fff;
	border:0;
	outline:none;
	cursor:pointer;
	font-size:22px;
	font-weight:500;
	border-radius:30px;
	
}


.popup{
	width: 400px;
	background:#fff;
	border-radius:6px;
	position:absolute;
	top:0;
	left: 50%;
	transform:translate(-50%,-50%) scale(0.1);
	text-align:center;
	padding:0 30px 30px;
	color:#333;
	visibility:hidden;
	transition: transform 0.4s,top 0.4s;
}
.open-popup{
	visibility:visible;
	top:50%;
	transform:translate(-50%,-50%) scale(1);
}
.popup img{
	width:100px;
	margin-top:-50px;
	border-radius:50%;
	box-shadow: 0 2px 5px rgba(0,0,0,0.7);
}
.popup h2{
	font-size:38px;
	font-weight:500;
	margin: 30px 0 10px;
}

.popup button{
	width:100%;
	margin-top:50px;
	padding:10px 0;
	background:#6fd649;
	color:#fff;
	border:0;
	outline:none;
	font-size:18px;
	border-radius:4px;
	cursor:pointer;
	box-shadow: 0 5px 5px rgba(0,0,0,0.7);
}
 </style>
</head>
<body>

<div class="container">
<div class="row mt-5">

<div class="col-md-6">
<!-- card -->
	<div class="card" >
		<div class="card-body">
		<h4 class="text-center mb-5">---ORDER SUMMARY---</h4>
			<div class="cart-body">
			</div>
		</div>
	</div>
</div>
<div class="col-md-6">
<!-- form-details -->
	
	<div class="card" >
		<div class="card-body">
		<h5 class="text-center mb-5">---YOUR DETAILS FOR THIS ORDER---</h5>
		<form action="#">
		 	 <div class="form-group">
    			<label for="exampleInputEmail1">Email address</label>
    			<input type="email" value="<%=user.getEmail() %>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    			<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
 			 </div>
		 	<div class="form-group">
   				<label for="name">Username</label>
   				<input type="text" value="<%= user.getFirstName() %>" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter Name">
    			
  			</div>
  			<div class="form-group">
   				<label for="name">Phone number</label>
   				<input type="number" value="<%= user.getPhoneNumber() %>" class="form-control" id="phn_no" aria-describedby="emailHelp" placeholder="Enter contact no.">
    			
  			</div>
  			 <div class="form-group">
    		<label for="exampleFormControlTextarea1">Your Shipping Address</label>
   		    <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="enter your current address" rows="3" required></textarea>
  			</div>
		<div class="container text-center">
		<a class="btn btn-outline-success" data-toggle="modal" data-target="#order-now-modal"  onclick="openPopup()"  >Order Now</a>
		<a class="btn btn-outline-primary" href="index.jsp">Continue shopping</a>
		</div>
		</form>
			
		</div>
	</div>
</div>

</div>
</div>
<!-- add category modal -->


<!-- Modal -->
<div class="modal fade" id="order-now-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
    
      <div class="modal-header text-white">
        <h5 class="modal-title" id="exampleModalLabel"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
      </div>
     
      <div class="modal-body">
       <div class="container-popup">

	<div class="popup" id="popup">
		<img src="img/check.png">
		<h2>Thank You!</h2>
	 	<p>Your Order has been successfully placed. Thanks!</p>
	 	<button type="button" data-dismiss="modal">OK</button>
	</div>
</div>
      </div>
      
      <div class="modal-footer"></div>
   </div>
  </div>
</div>


<!-- end order modal -->

 <%@include file="components/common_modals.jsp"  %>
 
 <script>
let popup = document.getElementById("popup");
function openPopup()
{
	popup.classList.add("open-popup");
	
}

</script>
 
</body>
</html>