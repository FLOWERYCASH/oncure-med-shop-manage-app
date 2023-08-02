<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="components/alljs_css.jsp"%>
<%@include file="Navbar.jsp"%>
<%@include file="components/message.jsp"%>
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
<title>silver card</title>
<link rel="stylesheet" type="text/css" href="css/subscribe.css">

<style>
* {
	text-transform: none;
}

.subscribe-container {
	margin: 0 auto;
	background: #ebebeb;
	padding: 5px;
}

.card-subscribe {
	margin: 0 auto;
	background: #efefef;
	width: 90%;
}

.subscription {
	text-align: center;
}

p {
	 word-wrap: break-word;
}
.zoom-in-zoom-out{
  margin: 24px;
  width: 50px;
  height: 50px;
  text-align: center;
  animation: zoom-in-zoom-out 1s ease infinite;
}
@keyframes zoom-in-zoom-out {
  0% {
    transform: scale(1, 1);
  }
  50% {
    transform: scale(1.5, 1.5);
  }
  100% {
    transform: scale(1, 1);
  }
}


</style>
</head>
<body>
	<div class="subscribe-container">
		<div class="card-subscribe">
			<div class="subscription">
				<div class="card-body">
					<div class="zoom-in-zoom-out">
						<h3 class="card-title">
							<mark style="margin-left:370px;">BENEFITS</mark>
						</h3>
						<br>
					</div>
					<div style="display: flex; flex-wrap: wrap;">
						<div style="flex-basis: 50%;">
							<h4>Get 5% extra discount</h4>
							<p>
								guaranteed savings over and above promotional offers.<span>extra
									5% discount on all prescription based medicines.</span>
							</p>
						</div>
						<div style="flex-basis: 50%;">
							<h4>Free Lab Test</h4>
							<p>
								Get a free CBC or HbA1C test or upgrade to any one of our premium tests
							</p>

						</div>
						<div style="flex-basis: 50%;">
							<h4>Free E-Consultation</h4>
							<p>
								Get a free E-consultation from experts around 26

different specialities including dieticians and

nutritionist
							</p>

						</div>
						<div style="flex-basis: 50%;">
							<h4>No Shipping Charges</h4>
							<p>
								No shipping charges on orders above Rs.100.

Unlimited Free shipping on orders above Rs.200.

Free shipping on 20 orders 
							</p>

						</div>
						
						<div style="flex-basis: 50%;">
							<h4>Premium Customer Support</h4>
							<p>
								Members would be entitled to our

dedicated customer support experts.

We are committed to providing you with

responsive assistance and resolution.

Your queries are our priority. Fastest

support to our premium members
							</p>

						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="container mt-5">

		<div class="card-container">

			<div class="front">
				<div class="image">
					<img src="img/chip.png" alt=""> <img src="img/sign-up.png"
						alt="">
				</div>
				<div class="card-number-box">################</div>
				<div class="flexbox">
					<div class="box">
						<span>card holder</span>
						<div class="card-holder-name">full name</div>
					</div>
					<div class="box">
						<span>expires</span>
						<div class="expiration">
							<span class="exp-month">mm</span> <span class="exp-year">yy</span>
						</div>
					</div>
				</div>
			</div>

			<div class="back">
				<div class="stripe"></div>
				<div class="box">
					<span>silver token</span>
					<div class="SilverToken-box"></div>
					<img src="img/healthcare.png" alt="">
				</div>
			</div>

		</div>

		<form action="silverCardServlet" method="post">

			<div class="inputBox">
				<span>card holder</span> <input type="text" value=""
					name="cardHolderName" class="card-holder-input">
			</div>

			<div class="inputBox">
				<span>silverCardNumber</span> <input type="text" value=""
					name="silverCardNumber" class="silverCardNumber" readonly>
			</div>
			<div class="flexbox">
				<div class="inputBox">
					<span>expiryMonth</span> <input type="text" value=""
						name="expiryMonth" class="expiryMonth" readonly>
				</div>

				<div class="inputBox">
					<span>expiryYear</span> <input type="text" value=""
						name="expiryYear" class="expiryYear" readonly>
				</div>

				<div class="inputBox">
					<span>SilverToken</span> <input type="text" value=""
						name="SilverToken" class="SilverToken" readonly>
				</div>


				<div class="inputBox">
					<span><img src="img/right-arrow.png" id="back"
						class="SilverToken-input-back"
						style="width: 30px; height: 30px; margin-left: 100px; margin-top: 45px"></span>
				</div>
			</div>
			<a href="YourCard.jsp"> <input type="submit" value="submit"
				class="submit-btn"></a>

		</form>

	</div>

	<script>
document.addEventListener('DOMContentLoaded', () => {
	  const randomsilverCardNumber = generateRandomsilverCardNumber();
	  document.querySelector('.card-number-box').innerText = randomsilverCardNumber;
	  document.querySelector('.silverCardNumber').value = randomsilverCardNumber;
	});

	function generateRandomsilverCardNumber() {
	  let silverCardNumber = '';
	  for (let i = 0; i < 16; i++) {
	    silverCardNumber += Math.floor(Math.random() * 10);
	  }
	  return silverCardNumber;
	}



document.querySelector('.card-holder-input').oninput = () =>{
    document.querySelector('.card-holder-name').innerText = document.querySelector('.card-holder-input').value;
}

document.addEventListener('DOMContentLoaded', () => {
	  const randomexpiryMonth = generateRandomexpiryMonth();
	  const randomexpiryYear = generateRandomexpiryYear();

	  // Update the card
	  document.querySelector('.exp-month').innerText = randomexpiryMonth;
	  document.querySelector('.exp-year').innerText = randomexpiryYear;

	  // Update the input field
	  document.querySelector('.expiryMonth').value = randomexpiryMonth;
	  document.querySelector('.expiryYear').value = randomexpiryYear;
	});

	function generateRandomexpiryMonth() {
	  const months = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'];
	  const randomIndex = Math.floor(Math.random() * months.length);
	  return months[randomIndex];
	}

	function generateRandomexpiryYear() {
	  const currentYear = new Date().getFullYear();
	  const minYear = currentYear + 1;
	  const maxYear = currentYear + 3;
	  const randomexpiryYear = Math.floor(Math.random() * (maxYear - minYear + 1)) + minYear;
	  return randomexpiryYear.toString();
	}



document.querySelector('.SilverToken-input-back').onmouseenter = () =>{
    document.querySelector('.front').style.transform = 'perspective(1000px) rotateY(-180deg)';
    document.querySelector('.back').style.transform = 'perspective(1000px) rotateY(0deg)';
}

document.querySelector('.SilverToken-input-back').onmouseleave = () =>{
    document.querySelector('.front').style.transform = 'perspective(1000px) rotateY(0deg)';
    document.querySelector('.back').style.transform = 'perspective(1000px) rotateY(180deg)';
}

document.addEventListener('DOMContentLoaded', () => {
	  const silverTokenInput = document.querySelector('.SilverToken');
	  const randomSilverToken = generateRandomSilverToken();
	  silverTokenInput.value = randomSilverToken;
	  document.querySelector('.SilverToken-box').innerText = randomSilverToken;
	});

	function generateRandomSilverToken() {
	  const minSilverToken = 100;
	  const maxSilverToken = 999;
	  return Math.floor(Math.random() * (maxSilverToken - minSilverToken + 1)) + minSilverToken;
	}
	
</script>

</body>

</html>