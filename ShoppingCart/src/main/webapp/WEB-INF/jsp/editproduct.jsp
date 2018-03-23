<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

  <div class="row">
    <div class="col-md-4 col-md-offset-4">
      <form class="form-horizontal" role="form" action="/update" method="post" modelAttribute="product">
        <fieldset>

          <!-- Form Name -->
          <legend>Product Update</legend>

           
          <div class="form-group">
            <label class="col-sm-2 control-label" for="id" name="id" id="id">id</label>
            <div class="col-sm-10">
              <input type="text" for="id" name="id" id="id"  value="${product.id}" class="form-control" disabled="disabled">
            </div>
          </div> 
          
          

        
         <!--  <div class="form-group">
            <label class="col-sm-2 control-label" for="code" name="code" id="code">code</label>
            <div class="col-sm-10">
              <input type="text" placeholder="code" class="form-control" disabled>
            </div>
          </div> -->



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="name" name="name" id="name">name</label>
            <div class="col-sm-10">
              <input type="text" placeholder="name" value="${product.name}" class="form-control" name="name" id="name">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="brand" name="brand" id="brand">brand</label>
            <div class="col-sm-4">
              <input type="text" placeholder="brand" value="${product.brand}" class="form-control" name="brand" id="brand">
            </div>

            <label class="col-sm-2 control-label" for="textinput" name="description" id="description">description</label>
            <div class="col-sm-4">
              <input type="text" placeholder="description" value="${product.description}" class="form-control" name="description" id="description">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="unitPrice" name="unitPrice" id="unitPrice">unitPrice</label>
            <div class="col-sm-10">
              <input type="text" placeholder="unitPrice" value="${product.unitPrice}" class="form-control" name="unitPrice" id="unitPrice">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="quantity" name="quantity" id="quantity">quantity</label>
            <div class="col-sm-10">
              <input type="text" placeholder="quantity" value="${product.quantity}" class="form-control" name="quantity" id="quantity">
            </div>
          </div>
      <!--     
          <div class="form-group">
            <label class="col-sm-2 control-label" for="active" name="active" id="active">active</label>
            <div class="col-sm-10">
              <input type="" placeholder="active" class="form-control">
            </div>
          </div>
      -->     
          <div class="form-group">
            <label class="col-sm-2 control-label" for="categoryId" name="categoryId" id="categoryId">categoryId</label>
            <div class="col-sm-10">
              <input type="number" placeholder="categoryId" value="${product.categoryId}" class="form-control" name="categoryId" id="categoryId">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="supplierId" name="supplierId" id="supplierId">supplierId</label>
            <div class="col-sm-10">
              <input type="number" placeholder="supplierId" value="${product.supplierId}" class="form-control" name="supplierId" id="supplierId">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                <a href="/" class="btn btn-primary">Cancel</a>
                <button type="submit" class="btn btn-primary">Save</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->