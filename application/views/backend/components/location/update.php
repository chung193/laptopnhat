<?php echo form_open_multipart('admin/location/update/'.$row['id']); ?>

<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/location/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-cd"></i> Cập nhật location</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu[Cập nhật]
				</button>
				<a class="btn btn-primary btn-sm" href="admin/location" role="button">
					<span class="glyphicon glyphicon-remove do_nos"></span> Thoát
				</a>
			</div>
		</section>
		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="box" id="view">
						<div class="box-body">
							<div class="col-md-7">
								<?php //echo validation_errors(); ?>
								<div class="form-group">
									<label>Địa chỉ <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="location" style="width:100%" placeholder="Địa chỉ" value="<?php echo $row['location'] ?>">
									<div class="error" id="password_error"><?php echo form_error('location')?></div>
								</div>
								
								<div class="form-group">
									<label>Điện thoại <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="phone" style="width:50%" placeholder="Điện thoại" value="<?php echo $row['phone'] ?>">
									<div class="error" id="password_error"><?php echo form_error('phone')?></div>
								</div>

								<div class="form-group">
									<label>Email <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="phone" style="width:50%" placeholder="email" value="<?php echo $row['email'] ?>">
									<div class="error" id="password_error"><?php echo form_error('email')?></div>
								</div>

							</div>
							
						</div>
					</div><!-- /.box -->
				</div>
			<!-- /.col -->
		  </div>
		  <!-- /.row -->
		</section>
	</form>
<!-- /.content -->
</div><!-- /.content-wrapper -->