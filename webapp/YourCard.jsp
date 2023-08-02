
<%@page import="com.entities.SilverCard"%>
<%@page import="com.servlet.SilverCardServlet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.entities.User"%>

<%

User user = (User)session.getAttribute("current-user");
if(user == null)
{
	   session.setAttribute("message","you are not logged in !!!login first to access checkout page");
	   response.sendRedirect("Login.jsp");
	   return;
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap')
	;

* {
	font-family: 'Poppins', sans-serif;
}

.card-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
	grid-gap: 10px;
	margin: 0 auto;
}

.card {
	width: 400px;
	height: 250px;
	border-radius: 7px;
	position: relative;
	margin: 50px 10px 10px;
	background: linear-gradient(15deg, silver, grey, white);
}

.CardHolder {
	margin-top: 0.5rem;
}

.expirydate {
	margin-top: 0.5rem;
}

span {
	margin-left: 0px;
	margin-top: 80px;
	color: #fff;
	font-size: 15px;
}

.card .back .stripe {
	background: linear-gradient(45deg, silver, grey, white);
	width: 100%;
	margin: 10px 0;
	height: 50px;
}

.SilverToken {
	margin-top: 15px;
	margin-left: 260px;
}

.card .front {
	position: absolute;
	top: 0;
	left: 0;
	height: 50%;
	width: 100%;
	background: linear-gradient(45deg, silver, grey, white);
	border-radius: 7px;
	padding: 20px 0;
	text-align: right;
	box-shadow: 0 15px 25px rgba(0, 0, 0, .2);
}

.card .front .image {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding-top: 10px;
}

.card .front .image img {
	height: 50px;
	margin-right: 20px;
}

.card .front .card-number-box {
	padding: 30px 0;
	font-size: 22px;
	color: #fff;
	margin: 5px 38px;
}

.card  .front .flexbox {
	display: flex;
}

.card .front .flexbox .box {
	font-size: 15px;
	color: #fff;
	margin: 0px 30px;
}

.card .front .flexbox .box:nth-child(1) {
	margin-right: auto;
}

\
.card .back {
	position: absolute;
	top: 0;
	left: 0;
	height: 50%;
	width: 100%;
	background: linear-gradient(45deg, silver, white, grey);
	border-radius: 7px;
	padding: 20px 0;
	text-align: right;
	box-shadow: 0 15px 25px rgba(0, 0, 0, .2);
}

.card .back .box {
	padding: 0 20px;
}

.card .back .box span {
	color: #fff;
	font-size: 15px;
}

.card .back .box .SilverToken-box {
	height: 35px;
	padding: 10px;
	margin-top: 15px;
	margin-left: 0px;
	color: #333;
	background: #fff;
	border-radius: 5px;
	width: 95%;
}

.card .back .box .image-back {
	margin-top: 30px;
	height: 30px;
}

.container .card-message .message {
	backgorund: linear-gradient(30deg, #69c9a6, #fff, #69c9c0);
}

u {
	font-size: 14px;
}
</style>

<body>
	<%@include file="Navbar.jsp"%>
	<div class="card-container">
		<div class="card">
			<div class="front">
				<div class="image">
					<img src="img/chip.png" alt=""> <img src="img/sign-up.png"
						alt="">
				</div>
				<div class="card-number-box" name="silverCardNumber"
					value=""><%=request.getAttribute("silverCardNumber")%></div>
				<div class="flexbox">
					<div class="box">
						<span>card holder</span>
						<div class="card-holder-name" name="cardHolderName"
							value=""><%=request.getAttribute("cardHolderName")%></div>
					</div>
					<div class="box">
						<span>expires</span>
						<div class="expiration">
							<span class="exp-month" name="expiryMonth"
								value=""><%=request.getAttribute("expiryMonth")%>&nbsp;/</span> <span
								class="exp-year" name="expiryYear"
								value=""><%=request.getAttribute("expiryYear")%></span>
						</div>
					</div>
				</div>
			</div>

		</div>


		<div class="card">
			<div class="back">
				<div class="stripe"></div>
				<div class="box">
					<span class="SilverToken">silver token</span>
					<div class="SilverToken-box" name="SilverToken"
						value=""><%=request.getAttribute("SilverToken")%></div>
					<img class="image-back" src="img/healthcare.png" alt="">
				</div>
			</div>
		</div>
<div></div>
	</div>

	<div class="jumbotron">
		<h1 class="display-4">Welcome to Silver Membership</h1>
		<p class="lead">
		<p>this card is essential for all your medicinal needs as well as
			health monitoring</p>
		Book instant appointments , Lab tests , ready to diagonse health risks
		based on proper prescription analysis And much more
		</p>
		<hr class="my-4">
			<p>this silver card preview for subscribed users and members of
			silver card get a 30 day free trial.
			<a href="tel:+918405814536"><img src="img/support.png" style="width:50px;height:50px;margin-left:95%;"></a>
			</p>
		<p class="lead">

		</p>
	</div>

</body>



</html>