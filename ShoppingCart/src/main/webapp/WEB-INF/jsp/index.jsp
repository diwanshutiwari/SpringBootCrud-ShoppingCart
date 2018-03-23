<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
   <div class="table-responsive">          
		  <table class="table">
			    <thead>
			      <tr>
			        <th>id</th>
			        <th>code</th>
			        <th>name</th>
			        <th>brand</th>
			        <th>description</th>
			        <th>unitPrice</th>
			        <th>quantity</th>
			        <th>active</th>
			        <th>categoryId</th>
			        <th>supplierId</th>
			        <th>Action</th>
			      </tr>
			    </thead>
			    <tbody>
			    <c:forEach items="${products}" var="product">
			      <tr>
			        <td>${product.id}</td>
			        <td>${product.code}</td>
			        <td>${product.name}</td>
			        <td>${product.brand}</td>
			        <td>${product.description}</td>
			        <td>${product.unitPrice}</td>
			        <td>${product.quantity}</td>
			        <td>${product.active}</td>
			        <td>${product.categoryId}</td>
			        <td>${product.supplierId}</td>
			        <td>
			        	<a href="/view/${product.id}" class="btn btn-info" role="button">View</a>
			        	<a href="/delete/${product.id}" class="btn btn-info" role="button">Delete</a>
			        	<a href="/update/${product.id}" class="btn btn-info" role="button">Update</a>
			        </td>
			      </tr>
			    </c:forEach>
			    </tbody>
  			</table>
  		</div>
  		
  		<a href="/addproduct" class="btn btn-primary">Add Product</a>
  		
  		<!--    Product Add below Link -->
  		
  		
  		
  		
	</div>
</body>
</html>
