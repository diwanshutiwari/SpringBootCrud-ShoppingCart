<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Description</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                	<tr>
                		<td class="col-sm-8 col-md-6">${product.name}</td>
                		<td class="col-sm-8 col-md-6">${product.quantity}</td>
                		<td class="col-sm-8 col-md-6">${product.unitPrice}</td>
                		<td class="col-sm-8 col-md-6">${product.description}</td>
                		<td>
                		
                		
                		<a href="/delete/${product.id}"><button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></a></td>
                
                   
                </tbody>
            </table>
        </div>
        
    </div>
    
    <div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
        
        <a href="/" class="btn btn-primary">Go Back</a>
        
        </div>
    </div>
    </div>
    
    
    
</div>