
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


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="components/alljs_css.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bookAppointment.css">
</head>
<body>
	<h1>Book Appointment</h1>
	<div class="container">
	<div class="back-btn"><a href="index.jsp"><img src="img/left-arrow.png" style="width:30px;height:30px;padding:2px"></a></div>
		<form action="AppointmentSlip.jsp" method="get">
			<div style="display: flex; flex-wrap: wrap;">
				<div style="flex-basis: 50%;">
				<br>
					<label for="name">Name:</label> <input type="text" id="name"
						name="name" value="<%= user.getFirstName()+" "+" "+ user.getLastName() %>"readonly>
				</div>
				<div style="flex-basis: 50%;">
				<br>
					<label for="email">Email:</label> <input type="text" id="email"
						name="email" value="<%= user.getEmail()%>" readonly>
				</div>
				
				<div style="flex-basis: 50%;">
					<label for="mobile">Mob No:</label> <input type="text" id="mobile"
						name="mobile" value="<%= user.getPhoneNumber()%>" readonly>
				</div>
				
			</div>

		</form>
		<br> <label for="doctor"
			style="text-align: center; color: red; font-size: 30px;"><mark>
				<b>Book By Concern</b>
			</mark></label>
		<div class="doctors">
			<ul>
				<li>
					<div class="card">
						<img src="img/emmu.png" class="card-img-top" alt="Doctor 1">
						<div class="card-body">
						<input type="hidden" name="doctorName" id="doctorNameInput" value="">
               <input type="hidden" name="specialization" id="specializationInput" value="">
						
							<h5 class="card-title" id="doctorTitle">Dr. Sikha Rawat</h5>
							<p class="card-text" id="specializationText" >Allergists/Immunologists</p>
							<p class="card-text">immune system disorders such as asthma, eczema, food allergies, insect sting allergies</p>
							<p class="card-text"id="experience">Experience:10yrs</p>
						</div>
						<div class="card-footer">
						
							<button type="submit" id="book-appointment-btn" data-toggle="modal" data-target="#book-now-modal" 
							 onclick="openPopup(); setDoctorDetails('Dr. Sikha Rawat', 'Allergists/Immunologists');" class="btn">book
								now</button>
						</div>
					</div>
				</li>


				<li><div class="card">
						<img src="img/derma.png"
							class="card-img-top" alt="Doctor 1">
						<div class="card-body">
							<h5 class="card-title">Dr. Shyam Pal</h5>
							<p class="card-text" id="specialisation" >Dermatologists</p>
							<p class="card-text">problems with your skin, hair, nails? Do you have moles, scars, acne, or skin allergies?</p>
							<p class="card-text"id="experience">Experience:12yrs</p>
						</div>
						<div class="card-footer">
							<button type="submit" id="book-appointment-btn" data-toggle="modal" data-target="#book-now-modal"  onclick="openPopup()" class="btn">book
								now</button>
						</div>
					</div></li>



				<li>
					<div class="card">
						<img src="img/Endo.png"
							class="card-img-top" alt="Doctor 1" style="height:160px;">
						<div class="card-body">
							<h5 class="card-title">Dr. Moumita mitra</h5>
							<p class="card-text" id="specialisation" >Endocrinologists</p>
							<p class="card-text">conditions like diabetes, thyroid problems, infertility, and calcium and bone disorders.</p>
							<p class="card-text"id="experience">Experience:4yrs</p>
						</div>
						<div class="card-footer">
							<button type="submit" id="book-appointment-btn" data-toggle="modal" data-target="#book-now-modal"  onclick="openPopup()"  class="btn ">book
								now</button>
						</div>
					</div>
				</li>


				<li>
					<div class="card">
						<img src="img/gastro.png"
							class="card-img-top" alt="Doctor 1" style="height:207px;">
						<div class="card-body">
							<h5 class="card-title">Dr. Ravi Shankar das</h5>
							<p class="card-text" id="specialisation" >Gastroenterologists</p>
							<p class="card-text"> stomach, bowels, pancreas, liver, and gallbladder</p>
							<p class="card-text"id="experience">Experience:9yrs</p>
						</div>
						<div class="card-footer">
							<button type="submit" id="book-appointment-btn" data-toggle="modal" data-target="#book-now-modal"  onclick="openPopup()" class="btn">book
								now</button>
						</div>
					</div>
				</li>


				<li>
					<div class="card">
						<img src="img/nephro.png"
							class="card-img-top" alt="Doctor 1">
						<div class="card-body">                 
							<h5 class="card-title">Dr. Hemalini Patra</h5>
							<p class="card-text" id="specialisation" >Nephrologists</p>
							<p class="card-text"> kidney diseases as well as high blood pressure and fluid and mineral imbalances linked to kidney disease.</p>
							<p class="card-text"id="experience">Experience:8yrs</p>
						</div>
						<div class="card-footer">
							<button type="submit" id="book-appointment-btn" data-toggle="modal" data-target="#book-now-modal"  onclick="openPopup()"  class="btn ">book
								now</button>
						</div>
					</div>
				</li>

				<li>
					<div class="card">
						<img src="img/dentist.png"
							class="card-img-top" alt="Doctor 1" style="height:210px;">
						<div class="card-body">
							<h5 class="card-title">Dr Subhashree Maity</h5>
							<p class="card-text" id="specialisation" >Dentist</p>
							<p class="card-text"> teeth , gums , gingivitis , periodontitis,poor gum health, poor teeth hygiene. </p>
							<p class="card-text"id="experience">Experience:12yrs</p>
						</div>
						<div class="card-footer">
							<button type="submit" id="book-appointment-btn" data-toggle="modal" data-target="#book-now-modal"  onclick="openPopup()" class="btn">book
								now</button>
						</div>
					</div>
				</li>

				<li>
					<div class="card">
						<img src="img/phy.png"
							class="card-img-top" alt="Doctor 1" style="height:188px;">
						<div class="card-body">
							<h5 class="card-title">Dr. Kuldeep Singh</h5>
							<p class="card-text" id="specialisation" >Physiatrists</p>
							<p class="card-text">specialists in physical medicine and rehabilitation treat neck or back pain and sports or spinal cord injuries </p>
							<p class="card-text" id="experience">Experience:9yrs</p>
						</div>
						<div class="card-footer">
							<button type="submit" id="book-appointment-btn" data-toggle="modal" data-target="#book-now-modal"  onclick="openPopup()" class="btn">book
								now</button>
						</div>
					</div>
				</li>


			</ul>
		</div>

	</div>
	<!-- modal -->
	<!-- Modal -->
<div class="modal fade" id="book-now-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
	 	<p>Your Appointment has been successfully booked. Thanks!</p>
	 	<a href="AppointmentSlip.jsp"><button type="button">OK</button></a>
	</div>
</div>
      </div>
      
      <div class="modal-footer"></div>
   </div>
  </div>
</div>
	<!-- end modal -->
	 <script>
let popup = document.getElementById("popup");
function openPopup()
{
	popup.classList.add("open-popup");
	
}
</script>



 
</body>
</html>