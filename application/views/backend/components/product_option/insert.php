<?php echo form_open_multipart('admin/product_option/insert'); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/product_option/insert.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-cd"></i> Thêm option cho sản phẩm mới</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu[Thêm]
				</button>
				<a class="btn btn-primary btn-sm" href="admin/product_option" role="button">
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

							<div class="col-md-6">
							<?php //echo validation_errors(); ?>

								<div class="form-group">
									<label>Tên sản phẩm</label>
									<select class="js-select-product form-control" name="product_id">
										<?php 
											$product = $this->Mproduct->all();
											foreach($product as $value){
										?>
											<option value="<?= $value['id']?>"><?= $value['name']?></option>
										<?php } ?>
									</select>
								</div>

								<div class="form-group">
									<label>CPU</label>
									<input type="text" class="form-control" name="cpu" style="width:100%" placeholder="CPU">
									<div class="error" id="password_error"><?php echo form_error('cpu')?></div>
								</div>

								<div class="form-group">
									<label>RAM</label>
									<input type="text" class="form-control" name="ram" style="width:100%" placeholder="RAM">
									<div class="error" id="password_error"><?php echo form_error('ram')?></div>
								</div>
								<div class="form-group">
									<label>Ổ cứng</label>
									<input type="text" class="form-control" name="hard_drive" style="width:100%" placeholder="ổ cứng">
									<div class="error" id="password_error"><?php echo form_error('hard_drive')?></div>
								</div>
								<div class="form-group">
									<label>VGA</label>
									<input type="text" class="form-control" name="vga" style="width:100%" placeholder="VGA">
									<div class="error" id="password_error"><?php echo form_error('vga')?></div>
								</div>
								<div class="form-group">
									<label>Màn hình</label>
									<input type="text" class="form-control" name="screen" style="width:100%" placeholder="Màn hình">
									<div class="error" id="password_error"><?php echo form_error('screen')?></div>
								</div>

							</div>

							<div class="col-md-6">

								<div class="form-group">
									<label>Hệ điều hành</label>
									<input type="text" class="form-control" name="hdh" style="width:100%" placeholder="Hệ điều hành">
									<div class="error" id="password_error"><?php echo form_error('hdh')?></div>
								</div>

								<div class="form-group">
									<label>Màu</label>
									<input type="text" class="form-control" name="color" style="width:100%" placeholder="Màu">
									<div class="error" id="password_error"><?php echo form_error('color')?></div>
								</div>

								<div class="form-group">
									<label>Pin</label>
									<input type="text" class="form-control" name="pin" style="width:100%" placeholder="Dung lượng pin">
									<div class="error" id="password_error"><?php echo form_error('pin')?></div>
								</div>

								<div class="form-group">
									<label>Kích thước</label>
									<input type="text" class="form-control" name="kichthuoc" style="width:100%" placeholder="Kích thước">
									<div class="error" id="password_error"><?php echo form_error('kichthuoc')?></div>
								</div>

								<div class="form-group">
									<label>Cân nặng</label>
									<input type="text" class="form-control" name="cannang" style="width:100%" placeholder="Cân nặng">
									<div class="error" id="password_error"><?php echo form_error('cannang')?></div>
								</div>

								<div class="form-group">
									<label>Phụ kiện</label>
									<input type="text" class="form-control" name="phukien" style="width:100%" placeholder="Phụ kiện">
									<div class="error" id="password_error"><?php echo form_error('phukien')?></div>
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