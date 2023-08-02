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
<%@include file="components/message.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.card-container {
	background: #ebebeb;
	color: black;
	width: 80%;
	height: 80%;
    text-align:center;
	margin: 30px auto;
	border-radius: 0.8rem;
	padding-top: 50px;
}

.card {
	background: #ceebe9;
	width: 90%;
	height: 90%;
	border-radius: 0.5rem;
	margin: auto;
	padding: 7px;
}
</style>

</head>
<body onload="displayDateTime()">
	<div class="card-container">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Your Appointment Slip</h5>
				<h6 class="card-subtitle mb-2" id="datetime" style="color: #grey;">Current
					Date and Time:</h6>
				<div class="card-text">
				<br>
				
					<div style="display: flex; flex-wrap: wrap;">
						<div style="flex-basis: 100%;">
							<label for="name">Name:</label> 
							<input type="text" id="name" name="name" value="<%= user.getFirstName()+" "+ user.getLastName() %>" readonly>
						</div>
						<div style="flex-basis: 50%;">
							<label for="email">Email:</label>
							 <input type="text" id="email"
								name="email" value="<%= user.getEmail()%>"  readonly>
						</div>
						<div style="flex-basis: 50%;">
							<label for="mobile">Mob No:</label> <input type="text"
								id="mobile" name="mobile" value="<%= user.getPhoneNumber()%>" readonly>
						</div>
						
					</div>

				</form>
   </div>
   
     <ul style="list-style:none;">
     <!--  <li>Seen by:-<span id="doctorName">&nbsp;&nbsp;&nbsp;</span></li>
      <li>Concern:-<span id="specialisation">&nbsp;&nbsp;&nbsp;</span></li> -->
      <li><a href="https://meet.google.com/khj-jnze-ipd">click to join free e-consultation</a></li>
     </ul>

			

				<button type="button" class="btn btn-danger"
					onclick="downloadPage()" id="">download</button>
			</div>
		</div>
	</div>
	<script>
		function displayDateTime() {
			var now = new Date();
			var dateTime = now.toLocaleString();
			document.getElementById("datetime").innerHTML = dateTime;
		}
		setInterval(displayDateTime, 1000); // Update every second

		function downloadPage() {

			window.print();
		}
		// Retrieve and display doctor details
		var doctorName = "<%= request.getParameter("doctorName") %>";
		var specialization = "<%= request.getParameter("specialization") %>";
		document.getElementById("doctorName").innerText = doctorName;
		document.getElementById("specialisation").innerText = specialization;
		 
	</script>
</body>
</html>