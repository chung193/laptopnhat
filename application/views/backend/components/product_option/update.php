<?php echo form_open_multipart('admin/product_option/update/'.$row['id']); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/product_option/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
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
											<option value="<?= $value['id']?>"
											<?php 
												if($value['id'] == $row['product_id']){
													echo 'selected';
												}
											?>
											><?= $value['name']?></option>
										<?php } ?>
									</select>
								</div>

								<div class="form-group">
									<label>Label 1</label>
									<input type="text" class="form-control" value="<?= $row['lb1']?>" name="lb1" style="width:100%" placeholder="Label 1">
									<div class="error" id="password_error"><?php echo form_error('lb1')?></div>
								</div>

								<div class="form-group">
									<label>Option 1</label>
									<input type="text" class="form-control" value="<?= $row['op1']?>" name="op1" style="width:100%" placeholder="Option 1">
									<div class="error" id="password_error"><?php echo form_error('op1')?></div>
								</div>

								<div class="form-group">
									<label>Label 2</label>
									<input type="text" class="form-control" value="<?= $row['lb2']?>" name="lb2" style="width:100%" placeholder="Label 2">
									<div class="error" id="password_error"><?php echo form_error('lb2')?></div>
								</div>

								<div class="form-group">
									<label>Option 2</label>
									<input type="text" class="form-control" value="<?= $row['op2']?>" name="op2" style="width:100%" placeholder="Option 2">
									<div class="error" id="password_error"><?php echo form_error('op2')?></div>
								</div>

								<div class="form-group">
									<label>Label 3</label>
									<input type="text" class="form-control" value="<?= $row['lb3']?>" name="lb3" style="width:100%" placeholder="Label 3">
									<div class="error" id="password_error"><?php echo form_error('lb3')?></div>
								</div>

								<div class="form-group">
									<label>Option 3</label>
									<input type="text" class="form-control" value="<?= $row['op3']?>" name="op3" style="width:100%" placeholder="Option 3">
									<div class="error" id="password_error"><?php echo form_error('op3')?></div>
								</div>

								<div class="form-group">
									<label>Label 4</label>
									<input type="text" class="form-control" value="<?= $row['lb4']?>" name="lb4" style="width:100%" placeholder="Label 4">
									<div class="error" id="password_error"><?php echo form_error('lb4')?></div>
								</div>

								<div class="form-group">
									<label>Option 4</label>
									<input type="text" class="form-control" value="<?= $row['op4']?>" name="op4" style="width:100%" placeholder="Option 4">
									<div class="error" id="password_error"><?php echo form_error('op4')?></div>
								</div>

							</div>

							<div class="col-md-6">

								

								<div class="form-group">
									<label>Label 5</label>
									<input type="text" class="form-control" value="<?= $row['lb5']?>" name="lb5" style="width:100%" placeholder="Label 5">
									<div class="error" id="password_error"><?php echo form_error('lb5')?></div>
								</div>

								<div class="form-group">
									<label>Option 5</label>
									<input type="text" class="form-control" value="<?= $row['op5']?>" name="op5" style="width:100%" placeholder="Option 5">
									<div class="error" id="password_error"><?php echo form_error('op5')?></div>
								</div>

								<div class="form-group">
									<label>Label 6</label>
									<input type="text" class="form-control" value="<?= $row['lb6']?>" name="lb6" style="width:100%" placeholder="Label 6">
									<div class="error" id="password_error"><?php echo form_error('lb6')?></div>
								</div>

								<div class="form-group">
									<label>Option 6</label>
									<input type="text" class="form-control" value="<?= $row['op6']?>" name="op6" style="width:100%" placeholder="Option 6">
									<div class="error" id="password_error"><?php echo form_error('op6')?></div>
								</div>


								<div class="form-group">
									<label>Giá gốc</label>
									<input name="price" class="form-control" value="<?= $row['price']?>" type="number" min="0" step="10000" max="1000000000">
								</div>
								<div class="form-group">
									<label>Khuyến mãi (%)</label>
									<input name="sale" class="form-control" value="<?= $row['sale']?>" type="number" >
								</div>
								<div class="form-group">
									<label>Giá bán</label>
									<input name="price_sale" class="form-control" value="<?= $row['price_sale']?>" type="number"  min="0" step="10000" max="1000000000">
									<div class="error" id="password_error"><?php echo form_error('price_buy')?></div>
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