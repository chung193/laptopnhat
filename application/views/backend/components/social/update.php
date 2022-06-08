<?php echo form_open_multipart('admin/social/update/'.$row['id']); ?>

<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/social/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-cd"></i> Cập nhật social</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu[Cập nhật]
				</button>
				<a class="btn btn-primary btn-sm" href="admin/social" role="button">
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
									<label>Tên loại trang <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="name" style="width:100%" placeholder="Tên loại sản phẩm" value="<?php echo $row['name'] ?>">
									<div class="error" id="password_error"><?php echo form_error('name')?></div>
								</div>
								
								<div class="form-group">
									<label>Link <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="url" style="width:50%" placeholder="Đường dẫn" value="<?php echo $row['url'] ?>">
									<div class="error" id="password_error"><?php echo form_error('url')?></div>
								</div>

								<div class="form-group">
										<label>Hình đại diện</label>
										<input type="file"  id="image_list" name="icon" style="width: 100%">
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