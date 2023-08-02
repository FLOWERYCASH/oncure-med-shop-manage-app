function add_to_cart(pid,pname,price)
{
	let cart = localStorage.getItem("cart");
	if(cart == null)
	{
		//no cart yet 
		let products=[];
		let product={productID:pid,productName:pname,productQuantity:1,productPrice:price};
		products.push(product);
		localStorage.setItem("cart",JSON.stringify(products));
		//console.log("Product is added for the first time")
		showToast("Product is added to cart!!")
	}else
	{
		//cart is already present
		let pcart=JSON.parse(cart);
		
		let oldProduct = pcart.find((item)=> item.productID == pid)
		if(oldProduct)
		{
			//we have to increase the quantity only since the product was already present
			oldProduct.productQuantity = oldProduct.productQuantity+1;
			pcart.map((item)=>
			{
				if(item.productID == oldProduct.productID)
				{
					item.productQuantity = oldProduct.productQuantity;
				}
			})
		localStorage.setItem("cart",JSON.stringify(pcart));	
		console.log("Product quantity increased");
		showToast(oldProduct.productName+"Product quantity is increased!!, Quantity"+ oldProduct.productQuantity)
		}
		else{
			//we have to add the product
			let product= {productID:pid,productName:pname,productQuantity:1,productPrice:price};
			pcart.push(product);
			localStorage.setItem("cart",JSON.stringify(pcart));
			console.log("Product is added");
			showToast("Product is added to cart!!")
		}
		
	} 
	updateCart();
}


//update cart

function updateCart(){
	let cartString=localStorage.getItem("cart");
	let cart =JSON.parse(cartString);
	if(cart==null || cart.length==0)
	{
		console.log("cart is empty!!")
		$(".cart-items").html("(0)");
		$(".cart-body").html("<h3>cart doesnot have any items!</h3>");
		$(".checkout-btn").attr('disabled',true);
	}
	else
	{
		console.log(cart)
		$(".cart-items").html(`(${cart.length})`);
		//table of cart modal to display products of cart
		let table =
		`
	<table class='table'>
	<thead class='thead-light'>
	 	<tr>
	     	<th>Item Name</th>
	        <th> Price</th>
	        <th>Quantity </th>
	        <th>Total Price</th>
	        <th>Action</th>
	   </tr>	
	</thead>
		`;
		let totalPrice = 0;
		cart.map((item)=>{
			
			table+=`
				<tr>
					<td>${item.productName}</td>
			        <td>${item.productPrice}</td>  
			        <td>${item.productQuantity}</td>
					<td>${item.productQuantity*item.productPrice}</td>
					<td><button onclick='deleteItemFromCart(${item.productID})' class="btn btn-danger btn-sm">Remove</button></td>
				</tr>
			`
			totalPrice+= item.productPrice*item.productQuantity;
		})
		
		table = table +`
		
		<tr>
		
		<td colspan='5' class='text-right font-weight-bold m-5'>Total Price : ${totalPrice}</td>
		
		</tr>
		</table>`
		
		$(".cart-body").html(table);
		$(".checkout-btn").attr('disabled',false);
	}
	
}

function deleteItemFromCart(pid)
{
	let cart = JSON.parse(localStorage.getItem('cart'));
	let newcart = cart.filter((item) => item.productID !=pid)
	localStorage.setItem('cart',JSON.stringify(newcart))
	updateCart();
	showToast("Product is removed to cart!!")
	}


$ (document).ready(function (){
	updateCart()
})

function showToast(content){
$("#toast").addClass("display");
$("#toast").html(content);
setTimeout(()=>{
	$("#toast").removeClass("display");
},2000);
}
function goToCheckout(){
	window.location="checkout.jsp";
}

