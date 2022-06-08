<?php echo form_open_multipart('admin/social/insert'); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/social/insert.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-cd"></i> Thêm social mới</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu[Thêm]
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
							<div class="form-group">
								<label>Tên mạng xã hội <span class = "maudo">(*)</span></label>
								<input type="text" class="form-control" name="name" style="width:50%" placeholder="Tên mạng xã hội">
								<div class="error" id="password_error"><?php echo form_error('name')?></div>
							</div>

							<div class="form-group">
								<label>Link <span class = "maudo">(*)</span></label>
								<input type="text" class="form-control" name="url" style="width:50%" placeholder="Đường dẫn">
								<div class="error" id="password_error"><?php echo form_error('url')?></div>
							</div>

							<div class="form-group">
                                    <label>Hình đại diện</label>
                                    <input type="file"  id="image_list" name="icon"  style="width: 100%">
                            </div>
						</div>
					</div><!-- /.box -->
				</div>
			<!-- /.col -->
		  <!-- /.row -->
		</section>
	</form>
<!-- /.content -->
</div><!-- /.content-wrapper -->