
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<%@include file="components/alljs_css.jsp"%>
<style type="text/css">
@
keyframes slide-in {from { transform:translateX(-100%);
	
}

to {
	transform: translateX(0%);
}

</style>

</head>

<body>

	<div id="carouselExampleIndicators" class="carousel "
		data-ride="carousel" style="margin-top: 10px; padding: 3px">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block  " src="img/c2.jpg" alt="First slide"
					style="width: 100%; height: 200px">
				<div class="carousel-caption d-none d-md-block">
					<h5>hot deals on medicines</h5>
					<p>BOGO on 100 plus medicines ,free hair gummies for first time
						users</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block  w-100" src="img/c2.jpg" alt="Second slide"
					style="height: 200px">
				<div class="carousel-caption d-none d-md-block">
					<h5>Silver membership for personalised healthcare</h5>
					<p>free health kit for early subscriptions</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block  w-100" src="img/c3.jpg" alt="Third slide"
					style="height: 200px">
				<div class="carousel-caption d-none d-md-block">
					<h5>hospital appointment and booking for silver members</h5>
					<p>weight chart , diet chart and sample report</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block  w-100" src="img/c1.jpg" alt="fourth slide"
					style="height: 200px">
				<div class="carousel-caption d-none d-md-block">
					<h5>hot deals on medicines</h5>
					<p>BOGO on 100 plus medicines ,free hair gummies for first time
						users</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block  w-100" src="img/c2.jpg" alt="fifth slide"
					style="height: 200px">
				<div class="carousel-caption d-none d-md-block">
					<h5>hot deals on medicines</h5>
					<p>BOGO on 100 plus medicines ,free hair gummies for first time
						users</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block  w-100" src="img/c3.jpg" alt="sixth slide"
					style="height: 200px">
				<div class="carousel-caption d-none d-md-block">
					<h5>hot deals on medicines</h5>
					<p>BOGO on 100 plus medicines ,free hair gummies for first time
						users</p>
				</div>
			</div>

		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<br>
	<div class="alert alert-warning" role="alert">
		<marquee> Silver Card for availing endless health benefits!!
			&nbsp; health checkup , lab test and much more! &nbsp; &nbsp;
			prescription based tests and report delivery at home!!! &nbsp;
			&nbsp;check out our latest deals on medicines!!!</marquee>
	</div>
	<!--<div class="card-header my-3 "><a href="Home.jsp" style="margin-left:95%;">View All</a></div> !-->
</html>