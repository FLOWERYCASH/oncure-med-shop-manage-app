<!doctype html>
<%@page import="com.helper.Helper"%>
<%@page import="com.entities.Category"%>
<%@page import="com.dao.CategoryDao"%>
<%@page import="com.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.ProductDao"%>
<%@page import="com.helper.FactoryProvider"%>

<html lang="en">
<head>
<!-- Required meta tags -->

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@ include file="Navbar.jsp"%>
<%@include file="components/alljs_css.jsp"%>
<style>

.list-group-item.list-group-item-action.active {
    background-color: green !important;
    color: white !important;
     border: none;
}

#wishbtn {
    color: green;
    font-size: 1.8em;
    transition: all .3s ease-in-out;
}

#wishbtn:hover {
    color: purple;
    cursor: pointer;
    transform: scale(1.2);
}

.product-card .row {
    display: flex;
    flex-wrap: wrap;
}

.custom-card {
    width: 250px;
    border: 1px solid #ddd;
    margin-bottom: 20px;
    display: flex;
    flex-direction: column;
    height: 100%;
    align-items: center;
    transition: transform 0.3s ease-in-out;
}

.card-img {
    display: block;
    margin: 0 auto; /* Center the image horizontally */
    max-width: 100%; /* Ensure the image doesn't exceed the container */
    height: auto; /* Maintain aspect ratio */
}

.custom-card .container {
    display: flex;
    justify-content: flex-end; /* Align image to the right */
    align-items: center; /* Center image vertically */
    height: 200px;
    padding-top: 10px; /* Add top padding */
}

.custom-card .container img {
    max-height: 100%;
    max-width: 100%;
}

.custom-card .card-body {
    flex-grow: 1;
}

.custom-card .card-text {
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 3; /* Show 3 lines of text */
    -webkit-box-orient: vertical;
}

.custom-card:hover {
    border-color: #555;
     transform: scale(1.05);
}

</style>
</head>
<title>OnCure</title>

<body>
<%@include file="Carousel.jsp"%>

	<div class="container-fluid">
		<div class="row mt-3 mx-2">

			<%
			String cat = request.getParameter("category");
			// out.println(cat);

			ProductDao dao = new ProductDao(FactoryProvider.getFactory());
			List<Product> list = dao.getAllProducts();
			if (cat == null || cat.trim().equals("all")) {

				list = dao.getAllProducts();

			} else {
				int cid = Integer.parseInt(cat.trim());
				list = dao.getAllProductsById(cid);
			}
			CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
			List<Category> clist = cdao.getCategory();
			%>

			<!-- Show Categories -->
			<!-- Show Categories -->
<div class="col-md-2">
    <div class="list-group mt-4">
        <a href="index.jsp?category=all" class="list-group-item list-group-item-action <%= (cat == null || cat.trim().equals("all")) ? "active" : "" %>">All Products</a>
        <% for (Category c : clist) { %>
        <a href="index.jsp?category=<%= c.getCategoryID() %>"
            class="list-group-item list-group-item-action <%= (cat != null && cat.trim().equals(String.valueOf(c.getCategoryID()))) ? "active" : "" %>"><%= c.getCategoryTitle() %></a>
        <% } %>
    </div>
</div>


		<!-- Show Products -->
<div class="product-card col-md-10">
    <!-- row -->
    <div class="row mt-4">
        <!-- col:12 -->
        <div class="col-md-10">
            <div class="row">
                <!-- traversing products -->
                <%
                for (int i = 0; i < list.size(); i++) {
                    Product p = list.get(i);
                %>
                <div class="col-md-3 mb-4">
                    <div class="custom-card">
                        <div class="container text-center">
                            <img src="img/products/<%=p.getpPhoto()%>"
                               
                                class="card-img-top my-3" alt="">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"><%=p.getpName()%></h5>
                            <p class="card-text"><%=Helper.get10Words(p.getpDesc())%></p>
                            <span class="text-success" style="font-size: 20px;">
                                &#8377;<%=p.getpPrice()%></span> <span
                                class="text-ignore discount-label"> &#8377;<%=p.getPriceAfterApplyingDiscount()%>/-,
                            </span> <span class="text-danger 4px"><%=p.getpDiscount()%>%
                                off</span>
                        </div>
                        <div class="card-footer text-center">
                            <button class="btn btn-success" id="addcartbtn"
                                onclick="add_to_cart(<%=p.getPid()%>,'<%=p.getpName()%>',<%=p.getPriceAfterApplyingDiscount()%>)">Add
                                to cart</button>
                        </div>
                    </div>
                </div>
                <% if ((i + 1) % 4 == 0) { %>
                    </div>
                    <div class="row">
                <% } %>
                <% } %>
            </div>
        </div>
    </div>
</div>
</div>
</div>
	<%@include file="components/common_modals.jsp"%>
</body>
<footer>
 
  <%@include file="components/Footer.jsp" %>
</footer>
</html>