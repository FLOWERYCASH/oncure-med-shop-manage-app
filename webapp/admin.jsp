<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="com.entities.Category"%>
<%@page import = "com.entities.User" %>
<%@page import="com.dao.CategoryDao" %>
<%@page import="com.helper.FactoryProvider" %>
<%@page import="com.helper.Helper" %>

<%
   User user = (User)session.getAttribute("current-user");
   if(user == null)
   {
	   session.setAttribute("message","you are not logged in !!!login first");
	   response.sendRedirect("Login.jsp");
	   return;
   }else{
	   if(user.getUsertype().equals("normal"))
	   {
		  session.setAttribute("message","you are not admin! do not access");
		  response.sendRedirect("Login.jsp");
		   return; 
	   }
   }
 %>
 
   <%
         CategoryDao cdao=new CategoryDao(FactoryProvider.getFactory());
         List<Category> list = cdao.getCategory();
         
         
         //getting count
         
         Map<String,Long> m =Helper.getCounts(FactoryProvider.getFactory());
         %>
         

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin panel</title>
<%@include file="components/alljs_css.jsp" %>
<%@include file="Navbar.jsp" %>
 <%@include file="components/message.jsp"  %>
</head>

<body>

<div class="container admin">
 <div class="row mt-3">
 
 <!-- for users count -->
  <div class="col-md-4">
     <div class="card">
       <div class="card-body text-center">
         <div class="container"><img  style="max-width:150px" class="img-fluid " src="img/customer.png" alt="user_icon"></div>
         <h5>Users</h5>
         <h6><%=m.get("productCount") %></h6>
       </div>
     </div>
  </div>
  
  <!-- for category count -->
   <div class="col-md-4">
     <div class="card">
       <div class="card-body text-center">
       <div class="container"><img  style="max-width:150px" class="img-fluid " src="img/category.png" alt="user_icon"></div>
         <h5>Category</h5>
         <h6><%=list.size() %></h6>
       </div>
     </div> 
  </div>
  
  <!-- for product count -->
   <div class="col-md-4">
      <div class="card">
       <div class="card-body text-center">
       <div class="container"><img  style="max-width:150px" class="img-fluid" src="img/product.png" alt="user_icon"></div>
         <h5>Products</h5>
          <h6><%=m.get("productCount") %></h6>
       </div>
     </div>
  </div>
 </div>
 
 <!-- 2nd row -->
 <div class="row mt-3">
 <!-- add category -->
  <div class="col-md-6">
  <div class="card" data-toggle="modal" data-target="#add-category-modal">
       <div class="card-body text-center">
       <div class="container"><img  style="max-width:150px" class="img-fluid" src="img/addCategory.png" alt="user_icon"></div>
         <a href=""#>click here to add category</a>
         <h5>add category</h5>
          
       </div>
     </div>
  </div>
  
  <!-- add product -->
  <div class="col-md-6">
  <div class="card" data-toggle="modal" data-target="#add-product-modal">
       <div class="card-body text-center">
       <div class="container"><img  style="max-width:150px" class="img-fluid" src="img/addProduct.png" alt="user_icon"></div>
          <a href="#">click here to add Product</a>
         <h5> add Products</h5>
         
       </div>
     </div>
  </div>
 </div>
</div> 

<!-- add category modal -->


<!-- Modal -->
<div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
    
      <div class="modal-header text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill category details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
        <form action="AddCategoryServlet" method="post">
         <input type="hidden" value="addcategory"/>
         <div class="form-group">
         <input type="text" class="form-control" name="catTitle" placeholder="enter category title" required/>
         </div>
         <div class="form-group">
         <textarea  style="height:350px" class="form-control" placeholder="Enter category description" name="catDescription" required></textarea>
         </div>
         <div class="container text-center">
         <button class="btn btn-outline-success">Add Category</button>
         <button type="button" class="btn btn-danger" data-dismiss="modal"> Close </button>
         </div>
        </form>
      </div>
      
      <div class="modal-footer"></div>
   </div>
  </div>
</div>



<!-- end category modal -->

<!-- add product modal -->


<!-- Modal -->
<div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
    
      <div class="modal-header text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill Product details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
        <form action="AddProductServlet" method="post" enctype="multipart/form-data">
         <input type="hidden" value="addproduct"/>
        
        <div class="form-group">
         
         <!-- product name -->
         <input type="text" class="form-control" name="pName" placeholder="enter Product name" required/>
         </div>
         
         <!-- product description -->
         <div class="form-group">
         <textarea  style="height:350px" class="form-control" placeholder="Enter category description" name="pDesc" required></textarea>
         </div>
         <!-- photo -->
          <div class="form-group">
          <label id="pPic">select picture of product</label><br>
         <input type="file" class="form-control" id="pPic" name="pPic" placeholder="upload image of product" required/>
         </div>
         <!-- product price -->
          <div class="form-group">
         <input type="number" class="form-control" name="pPrice" placeholder="enter Product price &#8377; " required/>
         </div>
         <!-- product discount -->
          <div class="form-group">
         <input type="number" class="form-control" name="pDiscount" placeholder="enter Product discount %" required/>
         </div>
         <!-- product quantity -->
          <div class="form-group">
         <input type="number" class="form-control" name="pQuantity" placeholder="enter Product quantity" required/>
         </div>
         <!-- product category -->
       
       
         <div class="form-group">  
         <select name="catId" class="form-control" id=" ">
         <%  for(Category c : list) { %>
         
         <option value="<%= c.getCategoryID() %>"><%= c.getCategoryTitle() %></option>
        
         <% } %>
         </select>
         </div>
         
         
         
         <div class="container text-center">
         <button class="btn btn-outline-success">Submit</button>
         <button type="button" class="btn btn-danger" data-dismiss="modal"> Close </button>
         </div>
         
        </form>
      </div>
      
      <div class="modal-footer"></div>
   </div>
  </div>
  
</div>
<!-- end product modal -->

</body>
</html>