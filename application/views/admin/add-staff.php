  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Staff Management
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Staff Management</a></li>
        <li class="active">Add Staff</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">

        <?php echo validation_errors('<div class="col-md-12">
            <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                  <h4><i class="icon fa fa-check"></i> Failed!</h4>', '</div>
          </div>'); ?>

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
              <h3 class="box-title">Add Staff</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <?php echo form_open_multipart('Staff/insert');?>
              <div class="box-body">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="txtname" class="form-control" placeholder="Full Name">
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Role</label>
                    <select class="form-control" name="slcRole">
                      <option value="">Select</option>
                      <option value="1">Admin</option>
                      <option value="2">Manager</option>
                      <option value="3">Sales</option>
                      <option value="4">Delivery</option>
                      <?php
//                       if(isset($department))
//                       {
//                         foreach($department as $cnt)
//                         {
//                           print "<option value='".$cnt['id']."'>".$cnt['department_name']."</option>";
//                         }
//                       } 
//                       ?>
                    </select>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Gender</label>
                    <select class="form-control" name="slcgender">
                      <option value="">Select</option>
                      <option value="Male">Male</option>
                      <option value="Female">Female</option>
                      <option value="Others">Others</option>
                    </select>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Email</label>
                    <input type="text" name="txtemail" class="form-control" placeholder="Email">
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Mobile</label>
                    <input type="text" name="txtmobile" class="form-control" placeholder="Mobile">
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Photo</label>
                    <input type="file" name="filephoto" class="form-control">
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Date of Birth</label>
                    <input type="date" name="txtdob" class="form-control" placeholder="DOB">
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Date of Joining</label>
                    <input type="date" name="txtdoj" class="form-control" placeholder="DOJ">
                  </div>
                </div>
                
                <div class="col-md-6">
                  <div class="form-group">
                    <label>UserName</label>
                    <input type="text" name="txtUserName" class="form-control" placeholder="UserName">
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Status</label>
                   <select class="form-control" name="slcStatus">
                      <option value="">Select</option>
                      <option value="0">Active</option>
                      <option value="1">Inactive</option>
                      
                    </select>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Password</label>
                   <input type="Password" name="txtPassword" class="form-control" placeholder="Password">
                      
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Address</label>
                    <textarea class="form-control" name="txtaddress"></textarea>
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