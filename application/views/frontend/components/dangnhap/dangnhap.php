<?php echo form_open('dang-nhap'); ?>

<style>
.acctitle{
	text-align: center;
}
.require_symbol{
	color: red
}
.nobottommargin{
	margin-top: 20px;
}
.pull-right{
	margin-top: 20px;
	list-style-type: none;
	margin-left: 0;
	padding-left:0;
}
.pull-right a{
	color: blue
}
.pull-right a:hover{
	color: #3498db
}
</style>

<section id="product-detail">
	<div class="container">
		<div class="products-wrap mt-4">
			<div class="container">

			<div class="row">
				<div class="col-md-3 col-sm-3 hidden-xs"></div>

				<div class="col-md-6 col-sm-6 col-xs-12">
					<div id="login">
						<div class="acctitle acctitlec">
							<h2><strong>Đăng nhập</strong></h2>
						</div>
						<div class="acc_content clearfix" style="display: block;">
							<form accept-charset="UTF-8" action="" id="customer_login" method="post">
								
								<input name="FormType" type="hidden" value="customer_login">
								<input name="utf8" type="hidden" value="true">
								<div class="col_full">
									<label for="login-form-username">Email:<span class="require_symbol">* </span></label>
									<input type="email" id="login-form-username" name="email" value="" class="form-control">
									<div class="error" id="password_error"><?php echo form_error('username')?></div>
								</div>
								<div class="col_full">
									<label for="login-form-password">Mật khẩu:<span class="require_symbol">* </span></label>
									<input type="password" id="login-form-password" name="password" value="" class="form-control">
									<div class="error" id="password_error"><?php echo form_error('password')?></div>
								</div>

						        <?php  if(isset($msg)):?>
						            <div class="row">
						                <?php echo $msg; ?>
						            </div>
						        <?php  endif;?>

								<div class="col_full nobottommargin">
									<button class="button button-3d button-black nomargin pull-left" style="color:white;border:none;background-color: #f39c12;padding:5px 8px;width:150px;" id="login-form-submit" name="login-form-submit" type="submit" value="login">
										Đăng nhập
									</button>
									<ul class="pull-right">
										<li><a href="#" class="fright">Quên mật khẩu?</a></li>
										<li><a href="<?php echo base_url() ?>dang-ky" class="fright">Người dùng mới? Đăng ký tài khoản</a></li>
									</ul>
								</div>
							</form>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-3 hidden-xs"></div>

				</div>
			</div>
		</div>
	</div>
</section>