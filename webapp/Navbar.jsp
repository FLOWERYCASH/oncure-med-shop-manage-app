<%@page import="com.entities.User"%>
<%
User user1 = (User) session.getAttribute("current-user");
%>
<%@include file="components/alljs_css.jsp"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<a class="navbar-brand" href="index.jsp" style="margin-left: 7px;">OnCure</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">
					<img src="img/home.png" style="width:24px;height:24px;"> <span class="sr-only">(current)</span></a></li>

			<li class="nav-item dropdown active"><a
				class="nav-link dropdown-toggle" href="ProductList.jsp"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> My Store </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="bookAppointment.jsp">Book Appointment</a> <a
						class="dropdown-item" href="disease.jsp">Disease Info.</a> <a
						class="dropdown-item" href="index.jsp">General medicines</a>
				</div>
			</li>

			<form class="form-inline my-2 my-lg-0" style="margin-left: 470px;">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search meds nearby" aria-label="Search">
				<button class="btn btn-white my-2 my-sm-0" type="submit"
					style="color: black">Search now</button>
			</form>

			<li class="nav-item active" style="margin-left: 7px;"><a
				class="nav-link" href="#!" data-toggle="modal" data-target="#cart">
					<img src="img/cart.png" style="width:24px;height:24px;"><span class="ml-0 cart-items">(0)</span></a>
			</li>

			<li class="nav-item dropdown active"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><img src="img/user.png" style="width:20px;height:20px;"></a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="Subscribe.jsp">Silver
						Subscription</a> <a class="dropdown-item" href="ForgotPassword.jsp">Change
						password</a> <a class="dropdown-item" href="Profile.jsp">My
						Profile</a> <a class="dropdown-item" href="LogoutServlet">LogOut</a>
				</div>
			</li>

			<%
			if (user1 == null) {
			%>
			<li class="nav-item active"><a class="nav-link" href="Login.jsp">login</a></li>

			<li class="nav-item active"><a class="nav-link"
				href="Signup.jsp">Register</a></li>
	</div>
	

	<%
	} 
			else {
	%>

	<li class="nav-item active"><a class="nav-link"
		href=" <%=user1.getUsertype().equals("admin") ? "admin.jsp" : "index.jsp"%>">Hi!
			<%=user1.getFirstName()%></a></li>


	<%
	}
	%>
	
</nav>