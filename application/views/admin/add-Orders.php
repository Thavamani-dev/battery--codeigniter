  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Orders
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
        <li><a href="#">Orders</a></li>
        <li class="active">Add Order</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">

        <?php if($this->session->flashdata('success')): ?>
          <div class="col-md-12">
            <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                  <h4><i class="icon fa fa-check"></i> Success!</h4>
                  <?php echo $this->session->flashdata('success'); ?>
            </div>
          </div>
        <?php elseif($this->session->flashdata('error')):?>
        <div class="col-md-12">
            <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                  <h4><i class="icon fa fa-check"></i> Failed!</h4>
                  <?php echo $this->session->flashdata('error'); ?>
            </div>
          </div>
        <?php endif;?>

        <!-- column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Add Orders</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <?php echo form_open_multipart('orders/insert');?>
              <div class="box-body">
               
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Sales Person</label>
                   <select class="form-control" name="slcperson" >
                      <option value="">Select</option>
                       <option value="1">Tamil</option>
                      <option value="2">vignesh</option>
                    </select>
                  </div>
                </div>
                
                 <div class="col-md-6">
                  <div class="form-group">
                    <label>Area</label>
                   <select class="form-control" name="slcarea">
                      <option value="">Select</option>
                      <option value="1">Tambaram</option>
                      <option value="2">madambakkam</option>
                      
                    </select>
                  </div>
                </div>
                
                  <div class="col-md-6">
                  <div class="form-group">
                    <label>Dealer</label>
                   <select class="form-control" name="slcdealer">
                      <option value="">Select</option>
                      <option value="1">battery shop</option>
                      <option value="2">rv 	battery shop</option>
                      
                    </select>
                  </div>
                </div>
                  
                  <div class="col-md-6">
                  <div class="form-group">
                    <label>Order Date</label>
                    <input class="form-control" type="date" name="txtodate" class="form-control" placeholder="DOB">
                  </div>
                </div>
                  
                  <div class="col-md-6">
                  <div class="form-group">
                    <label>Urgent Delivery</label><br>
                   <input  type="radio"  name="urgent" value="y">
  					<label  >Yes</label> 
 					<input type="radio"  name="urgent" value="n" checked>
  					<label >No</label> 
                  </div>
                </div>
                
                  <div class="col-md-6">
                  <div class="form-group">
                    <label>Comments</label>
                  <textarea class="form-control" name="txtcomment"></textarea>
                  </div>
                </div>
                
                <div class="col-md-5">
                  <div class="form-group">
                    <label for=""> Battery</label>
                                           <select name="battery" id="show" >
                                            <option value="" >-Select Battery-</option>
                                            <option value="Z5L">z5l</option>
                                             </select>
                                              
                                            <label for="">QTY</label>
                                            <input type="number" name="qty" placeholder="Enter qty">
                 </div>
                </div>
               
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-success pull-right">Submit</button>
              </div>
            </form>
          </div>
          <!-- /.box -->
        </div>
        <!--/.col (left) -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  