<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en" dir="ltr">
<title>Footer Page</title>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
	text-decoration: none;
}

footer {
	width: 100%;
	position: relative;
	bottom: 0;
	left: 0;
	background: #f5f4f0;
	z-index: 999;
}

footer .content {
	max-width: 1350px;
	margin: auto;
	padding: 20px;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

footer .content p, a {
	color: #111;
}

footer .content .box {
	width: 33%;
	transition: all 0.4s ease;
}

footer .content .topic {
	font-size: 22px;
	font-weight: 600;
	color: #111;
	margin-bottom: 16px;
}

footer .content p {
	text-align: justify;
}

footer .content .lower .topic {
	margin: 24px 0 5px 0;
	margin-top: 5px;
}

footer .content .lower i {
	padding-right: 16px;
}

footer .content .middle {
	padding-left: 80px;
}

footer .content .middle a {
	line-height: 32px;
}

footer .content .right .topic {
	margin-left: 100px;
}

footer .content .right input[type="Join"] {
	height: 42px;
	width: 30%;
	font-size: 18px;
	color: #d9d9d9;
	background: #15bf51;
	text-align: center;
	outline: none;
	border-radius: 5px;
	letter-spacing: 1px;
	cursor: pointer;
	margin-top: 3px;
	margin-left: 100px;
	border: 2px solid #15bf51;
	transition: all 0.3s ease-in-out;
}

.content .right input[type="Join"]:hover {
	background: none;
	color: #111;
}

footer .content .media-icons a {
	 position: relative;
	font-size: 16px;
	height: 45px;
	width: 45px;
	display: inline-block;
	text-align: center;
	line-height: 43px;
	border-radius: 5px;
	border: 2px solid #222222;
	margin: 30px 5px 0 0;
	transition: all 0.3s ease;
}

footer .content .media-icons a i {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.content .media-icons a:hover {
	border-color: #15bf51;
}

footer .bottom {
	width: 100%;
	text-align: right;
	color: #111;
	padding: 0 40px 5px 0;
}

footer .bottom a {
	color: #9c15eb;
}

footer a {
	transition: all 0.3s ease;
}

footer a:hover {
	color: #15bf51;
}

@media ( max-width :1100px) {
	footer .content .middle {
		padding-left: 50px;
	}
}

@media ( max-width :950px) {
	footer .content .box {
		width: 50%;
	}
	.content .right {
		margin-top: 40px;
	}
}

@media ( max-width :560px) {
	footer {
		position: fixed;
	}
	footer .content .box {
		width: 100%;
		margin-top: 30px;
	}
	footer .content .middle {
		padding-left: 0;
	}
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>

<body>
	<footer>
		<div class="content">
			<div class="left box">
				<div class="upper">
					<div class="topic">About us</div>
					<p>"Empowering better health management through</p>
					<p>online medicine procurement and prescription
					<p>analysis."</p>
				</div>

			</div>
			<div class="middle box">
				<div class="lower">
					<div class="topic">Contact us</div>
					<div class="phone">
						<a href="tel:+918405814536"><i class="fas fa-phone-volume"></i>+91 8405814536</a>
					</div>
					<div class="email">
						<a href="https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox"><i class="fas fa-envelope"></i>oncure3@gmail.com</a>
					</div>
				</div>
				<div class="media-icons">
					<a href="https://www.facebook.com/login/"><i class="fab fa-facebook-f"></i></a> <a href="#">
						<i class="fab fa-instagram"></i>
					</a> <a href="https://twitter.com/i/flow/login"> <i class="fab fa-twitter"></i>
					</a> <a href="https://www.youtube.com/"> <i class="fab fa-youtube"></i>
					</a> <a href="https://in.linkedin.com/?src=go-pa&trk=sem-ga_campid.14650114788_asid.150089839322_crid.656569072777_kw.www%20linkedin_d.c_tid.kwd-2246447582_n.g_mt.e_geo.1007748&mcid=6844056167778418689&cid=&gclid=CjwKCAjw9pGjBhB-EiwAa5jl3OfMpfXKj4G0LQQPespo2UQE43kOSgYHAR1pwYLf6fJhqLOf-p_DexoCy6wQAvD_BwE&gclsrc=aw.ds"> <i class="fab fa-linkedin-in"></i>
					</a>
				</div>
			</div>
			<div class="right box">
				<div class="topic">Subscribe us</div>
				<form action="Subscribe.jsp">
				<a href="Subscribe.jsp"><input type="Join" name="" value="Join" readonly></a>
				</form>
			</div>
		</div>
		<div class="bottom">
			<p>
				Copyright &#169; 2023 <a href="#">onCure</a> All rights reserved
			</p>
		</div>
	</footer>

</body>
</html>
