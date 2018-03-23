<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

  <div class="row">
    <div class="col-md-4 col-md-offset-4">
      <form class="form-horizontal" role="form" action="/saveproduct" method="post">
        <fieldset>

          <!-- Form Name -->
          <legend>Product Details</legend>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">id</label>
            <div class="col-sm-10">
              <input type="text" placeholder="id" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">code</label>
            <div class="col-sm-10">
              <input type="text" placeholder="code" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">name</label>
            <div class="col-sm-10">
              <input type="text" placeholder="name" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">brand</label>
            <div class="col-sm-4">
              <input type="text" placeholder="brand" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">description</label>
            <div class="col-sm-4">
              <input type="text" placeholder="description" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="unitPrice">unitPrice</label>
            <div class="col-sm-10">
              <input type="text" placeholder="unitPrice" class="form-control">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="quantity">quantity</label>
            <div class="col-sm-10">
              <input type="text" placeholder="quantity" class="form-control">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="active">active</label>
            <div class="col-sm-10">
              <input type="" placeholder="active" class="form-control">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="categoryId">categoryId</label>
            <div class="col-sm-10">
              <input type="number" placeholder="categoryId" class="form-control">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="supplierId">supplierId</label>
            <div class="col-sm-10">
              <input type="number" placeholder="supplierId" class="form-control">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                <button type="submit" class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-primary">Save</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->