<?php echo form_open_multipart('admin/content/update/'.$row['id']); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/content/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-text-background"></i> Cập nhật bài viết</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu[Cập nhật]
				</button>
				<a class="btn btn-primary btn-sm" href="admin/content" role="button">
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
							<div class="col-md-9">
							<?php echo validation_errors(); ?>
								<div class="form-group">
									<label>Tên bài viết <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="name" style="width:100%" placeholder="Tên sản phẩm" value="<?php echo $row['title'] ?>">
									<div class="error" id="password_error"><?php echo form_error('name')?></div>
								</div>
								<div class="form-group">
									<label>Mô tả ngắn</label>
									<textarea name="introtext" class="form-control" ></textarea>
								</div>
								<div class="form-group">
									<label>Chi tiết bài viết<span class = "maudo">(*)</span></label>
									<textarea name="fulltext" id="fulltext" class="form-control"><?php echo $row['fulltext'] ?></textarea>
      								<script>CKEDITOR.replace('fulltext');</script>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Quyền truy vập</label>
									<select name="access" class="form-control" style="width:235px">
										<option value="1" <?php if($row['access'] == 1) {echo 'selected';}?> >Công khai</option>
										<option value="0" <?php if($row['access'] == 0) {echo 'selected';}?>>Hạn chế</option>
									</select>
								</div>

								<div class="form-group">
                                    <label>Hình đại diện</label>
                                    <input type="file"  id="image_list" name="img" required style="width: 100%">
                                </div>

								<div class="form-group">
									<label>Danh mục</label>
									<select name="id_type" class="form-control" style="width:235px">
									<?php 
										$type = $this->Mcontenttype->contenttype_list(); 
										foreach($type as $val){
									?>
										<option value="<?= $val['id'] ?>"
										<?php
										if($val['id'] == $row['id_type']) {echo 'selected';}?>
										><?= $val['name'] ?></option>
									<?php } ?>
									</select>
								</div>

								<div class="form-group">
									<label>Trạng thái</label>
									<select name="status" class="form-control" style="width:235px">
										<option value="1" <?php if($row['status'] == 1) {echo 'selected';}?> >Xuất bản</option>
										<option value="0" <?php if($row['status'] == 0) {echo 'selected';}?>>Chưa xuất bản</option>
									</select>
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