<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.entities.User"%>
<%@ page import="com.entities.SilverCard"%>
<%
User user = (User) session.getAttribute("current-user");
if (user == null) {
	session.setAttribute("message", "you are not logged in !!!login first to access checkout page");
	response.sendRedirect("Login.jsp");
	return;
}

SilverCard card = (SilverCard) session.getAttribute("Silver-Wallet");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user profile</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


<style>
@import
	url("https:fonts.googleapis.com/css?family=Nunito:400,900|Montserrat|Roboto")
	;

body {
	background: linear-gradient(45deg, white, #15bf51);
	overflow-x: hidden;
}

.container {
	background: #fff;
	width: 60%;
	height: 540px;
	margin: 0 auto;
	position: relative;
	margin-top: 10%;
	box-shadow: 2px 5px 20px rgba(119, 119, 119, .5);
}

.leftbox {
	float: left;
	top: -5%;
	left: 5%;
	position: absolute;
	width: 15%;
	height: 110%;
	background: linear-gradient(45deg, #6bced1,#457cbf);
	box-shadow: 3px 3px 10px grba(119, 119, 119, .5);
	border: .1em solid #fff;
}

nav a {
	list-style: none;
	padding: 28px;
	color: #fff;
	font-size: 1.4em;
	display: block;
	transition: all .3s ease-in-out;
	margin-left:20px;
}

nav a:hover {
	color: #140975;
	cursor: pointer;
	transform: scale(1.2);
}

nav a:first-child {
	margin-top: 7px;
}

nav a.active {
	color:  #140975;
}

.rightbox {
	width: 60%;
	margin-left: 27%;
	height: 80%
}

.tabshow {
	transition: all .5s ease-in;
	width: 80%;
}

h1 {
 	
	font-family: "Montserrat", sans-serif;
	color: #15bf51;
	font-size: 1.5em;
	margin-bottom: 35px;
}

h2 {
	color: green;
	font-family: "Roboto", "sans-serif";
	text-transform: uppercase;
	font-size: 12px;
	letter-spacing: 1px;
	margin-left: 2px;
	margin-top: 10px;
}

.input, p {
	border: 0;
	border-bottom: 1px solid #15bf51;
	width: 80%;
	font-family: "Montserrat", "sans-serif";
	font-size: .7em;
	padding: 7px 0;
	color: #070707;
	outline: none;
}

.span {
	font-size: .7em;
	color: #15bf51;
}

.btn {
	font-family: "Roboto", "sans-serif";
	text-transform: uppercase;
	font-size: 15px;
	border: 0;
	color: #fff;
	background: #15bf51;
	padding: 7px 15px;
	box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, .2);
	cursor: pointer;
	margin-top: 15px;
}

.tabshow {
	display: none;
	margin-top:20px;
}
</style>




</head>
<body>
	<div class="container">
	
		<div class="leftbox">
			<nav>
				<a onclick="tabs(0)" class=" tab active"><i class="fas fa-user"></i></a>
				<a onclick="tabs(1)" class=" tab "><i class="fas fa-credit-card"></i></a>
				<a onclick="tabs(2)" class=" tab"><i class="fas fa-tasks"></i></a> <a
					onclick="tabs(3)" class=" tab "><i class="fas fa-phone"></i></a> <a
					onclick="tabs(4)" class=" tab"><i class="fas fa-cog"></i></a>
					<a href="index.jsp" class=" tab"><i class="fas fa-home"></i></a>
			</nav>
		</div>
		<div class="rightbox">
			<div class="tabShow">
			<br>
			<h1>PERSONAL INFORMATION</h1>
			<h2>Full Name</h2>
			<input type="text" class="input" value="<%=user.getFirstName()%>">
			<p></p>
			<h2>Email</h2>
			<input type="text" class="input" value="<%=user.getEmail()%>">
			<p></p>
			<h2>Phone number</h2>
			<input type="text" class="input" value="<%=user.getPhoneNumber()%>">
			<p></p>
			<h2>password</h2>
			<input type="text" class="input" value="*******" readonly><br> click update to change password<a
				href="ForgotPassword.jsp">&nbsp;&nbsp;&nbsp;<button class="btn btn-primary">update</button>
			</a>
		
			</div>

			<div class="tabShow">
			<br>
			<h1>My Orders</h1>
			<h2>My silver wallet</h2>
			<input type="text" class="input" value="">
			<p></p>
			<h2>order amount</h2>
			<input type="text" class="input" value="">
			<p></p>
			<h2>order details</h2>
			<input type="text" class="input" value=""> <a
				href="checkout.jsp"><button class="btn btn-primary">check
					order</button></a>
			<p></p>
			<h2>billing address-pincode</h2>
			<input type="text" class="input" value="<%=user.getPincode()%>">
			<p></p></div>

			<div class="tabShow">
			<br>
			<h1>My Silver Card Subscription</h1>
			<p>
				delivery at doorstep!<br> prescription analysis and health risk
				assistance by experts <br>avail special offers on pathlab
				checkup..<br>hassle free book tests at home.<br> <a
					href="Subscribe.jsp" style="color: red">Subscribe?</a>
			</p>
			<h2>subscription amount</h2>
			<input type="text" class="input" value="">
			<p></p>
			<h2 style="color: #15bf51">&#8377;200/year</h2>
			<h2>
				<a href="UploadPrescription.jsp"><button class="btn btn-primary">upload prescription
						</button></a>
			</h2></div>

			<div class="tabShow">
			<br>
			<h1>Privacy Setting</h1>
			<h2>Manage email notification</h2>
			<input type="text" class="input" value="">
			<p></p>
			<h2>manage privacy setting</h2>
			<input type="text" class="input" value="">
			<p></p>
			<h2>view term of use</h2>
			<input type="text" class="input" value="">
			<h2>personalised ad experience upto 3 months after 1st
				subscription.</h2>
			<button type="button" class="btn btn-sm btn-danger"
				data-toggle="popover" title="Popover title"
				data-content="And here's some amazing content. It's very engaging. Right?">protect
				account?</button></div>


			<div class="tabShow">
			<br>
			<h1>Account Setting</h1>
			<h2>Sync orderlist</h2>
			<input type="text" class="input" value="">
			<p></p>
			<h2>cancel subscription</h2>
			<input type="text" class="input" value="">
			<p></p>
			<h2>your silverData</h2>
			<input type="text" class="input" value="">
			<p></p>
			<h2>Refferals</h2>
			<input type="text" class="input" value="">
			<p></p></div>
			
			
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
		integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
		crossorigin="anonymous">
		
	</script>
	<script>
		const tabBtn = document.querySelectorAll(".tab");
		const tab = document.querySelectorAll(".tabShow");
		function tabs(panelIndex) {
			tab.forEach(function(node) {
				node.style.display = "none";
			});
			tab[panelIndex].style.display = "block";
		}
		tabs(0);
	</script>

	<script>
		$(".tab").click(function() {
			$(this).addClass("active").siblings().removeClass("active");
		})
	</script>
</body>
</html>