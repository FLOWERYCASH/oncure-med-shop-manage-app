<%@page import="com.entities.Prescription"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>prescription upload</title>
<%@include file="components/alljs_css.jsp"%>
<style>
.card-container {
	width: 40%;
	height: 100vh;
	margin: 0 auto;
}

h5 {
	text-align: center;
}
</style>
</head>
<body>
	<div class="alert alert-warning" role="alert">
		<marquee>
			<h5>upload your subscription here to avail health monitoring
				benefits!</h5>
		</marquee>
	</div>
	<br>
	<div class="card-container">
		<div class="back-btn">
			<a href="index.jsp"><img src="img/left-arrow.png"
				style="width: 30px; height: 30px; margin-left: 5px; margin-top: 3px;"></a>
		</div>
		<div class="card" data-toggle="modal"
			data-target="#add-prescription-modal">
			<div class="card-body text-center">
				<div class="container">
					<img style="max-width: 150px" class="img-fluid"
						src="img/prescription.png" alt="user_icon">
				</div>
				<a href="#">click here to add Prescription</a>
				<h5>add Prescription</h5>
			</div>
		</div>
		
		<!-- view -->
	
		<div class="card" data-toggle="modal"
			data-target="#view-prescription-modal">
			<div class="card-body text-center">
				<div class="container">
					<img style="max-width: 150px" class="img-fluid"
						src="img/prescription.png" alt="user_icon">
				</div>
				<a href="#">click here to view Prescription</a>
				<h5>view Prescription</h5>
			</div>
		</div>
	</div>
	
	



	
	<!-- add prescription modal -->


	<!-- Modal -->
	<div class="modal fade" id="add-prescription-modal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">

				<div class="modal-header text-white">
					<h5 class="modal-title" id="exampleModalLabel">Fill
						Prescription</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<div class="modal-body">
					<form action="UploadPrescriptionServlet" method="post"
						enctype="multipart/form-data">
						<input type="hidden" value="addprescription" />

						<div class="form-group">

							<!-- prescription name -->
							<input type="text" class="form-control" name="presName"
								placeholder="enter Prescription here" required />
						</div>


						<!-- prescription photo -->
						<div class="form-group">
							<label id="presPic">select picture of product</label><br> <input
								type="file" class="form-control" id="presPic" name="presPic"
								placeholder="upload image of prescription" required />
						</div>

						<button class="btn btn-outline-success">Submit</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">close
						</button>


					</form>
				</div>

				<div class="modal-footer"></div>
			</div>
		</div>

	</div>
	<!-- end product modal -->


	<!--view- Modal -->
	<div class="modal fade" id="view-prescription-modal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">

				<div class="modal-header text-white">
					<h5 class="modal-title" id="exampleModalLabel">my Prescription</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<div class="modal-body">
					<%
					 Prescription p=new Prescription();
				
					%>
					<img src="img/prescription/<%=p.getPresPhoto()%>"
						class="card-img-top my-3" alt="">
				</div>


				<div class="modal-footer"></div>
			</div>
		</div>

	</div>
	<!-- end view modal -->
</body>
</html>