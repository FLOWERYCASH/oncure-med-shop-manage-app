<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Diseases and Cures</title>
<%@include file="components/alljs_css.jsp"%>

<%@include file="components/message.jsp"%>
<link rel="stylesheet" type="text/css" href="css/disease.css">
</head>
<body>
	<div>
		<h1>Diseases and Cures</h1>
		<table>
			<thead>
				<tr>
					<th style="font-size: 20px;">Disease</th>
					<th style="font-size: 20px;">Cure</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<%@include file="disease/Acidity.jsp"%>
				</tr>

				<tr>
					<%@include file="disease/Anxiety.jsp"%>
				</tr>

				<tr>
					<%@include file="disease/BackPain.jsp"%>
				</tr>

				<tr>
					<%@include file="disease/Dandruff.jsp"%>
				</tr>

				<tr>
					<%@include file="disease/Dehydration.jsp"%>
				</tr>

				<tr>
					<%@include file="disease/Dental.jsp"%>
				</tr>

				<tr>
					<%@include file="disease/DrySkin.jsp"%>
				</tr>
			</tbody>
		</table>
		<br>
		<p>If you are experiencing any of these symptoms and would like a
			free appointment with a doctor, please click the button below:</p>

		<form action="bookAppointment.jsp">
			<button type="button" class="btn btn-success"
				style="margin-left: 42%;">
				<a href="Home.jsp" style="color: #fff;">GoTo Home</a>
			</button>
			&nbsp;
			<button type="submit" style="margin-bottom: 30px;">Book Free
				Appointment</button>
		</form>
	</div>
</body>
</html>