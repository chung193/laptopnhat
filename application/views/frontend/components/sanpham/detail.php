
<style>
	.bg-light{
		background-color:#f8f9fa
	}
	.view-product{
		display:none;
	}
	.cursor-pointer{
		cursor:pointer;
	}

	.bordercs{
		color:green;
		font-weight: bold;
		border: 2px solid green;
	}
	.slick-dotted.slick-slider{
		margin-bottom:0
	}
	.slick-arrow.slick-next:before,.slick-arrow.slick-prev:before {
		padding-top: 12px;
	}
	.slick-dots li button:before {
		opacity: 0 !important;
	}
	.slick-dots li button:before:hover {
		opacity: 0 !important;
	}
</style>
<section class="bread-crumb mb-3 mt-3">
	<span class="crumb-border"></span>
	<div class="container">
		<div class="row">
			<div class="col-12 a-left">
				<ul class="breadcrumb m-0 px-0">					
					<li>
						<a href="<?= base_url()?>" target="_self"><span>Trang chủ</span></a>
						<span class="mr_lr">&nbsp;/&nbsp;</span>		
					</li>
					
					<li>
						<a href="<?= base_url()?>san-pham" target="_self">
							<span>Sản phẩm</span>
						</a>
						<span class="mr_lr">&nbsp;/&nbsp;</span>
					</li>
										
					<li class="active">
						<span><?php echo $row['name'] ?>	</span>
					</li>
					
				</ul>
			</div>
		</div>
	</div>
</section>

<section class="section mt-0 mb-lg-4 mb-3 mb-sm-0">
		<div class="container">
			<div class="section wrap-padding-15 wp_product_main m-0">
				<div class="details-product">
					<div class="row m-sm-0">
						<div class="product-detail-left product-images bg-white py-3 col-12 col-lg-6 col-xl-4 col-lg-6">
							<div class="pb-3 pt-0col_large_default large-image">
								<div id="gallery_1">

								<?php 
									$arr = explode("#", $row['img']);
								?>
								<div class="product-slick">
									<?php  foreach($arr as $val){?>
									<div>
										<img src="<?= base_url().'public/images/products/'.$val ?>">
									</div>
									<?php } ?>
								</div>

								</div>
							</div>

							<div class="share-group d-flex justify-content-center align-items-center mt-5">
								<strong class="share-group__heading mr-3">Chia sẻ</strong>
								<div class="share-group__list">
									<a class="share-group__item facebook" target="_blank" href="http://www.facebook.com/sharer.php?u=<?= base_url().$row['alias']?>">
										<i class="fab fa-facebook-f"></i>
									</a>
									<a class="share-group__item messenger d-lg-none" target="_blank" href="fb-messenger://share/?link=<?= base_url().$row['alias']?>">
										<i class="fab fa-facebook-messenger"></i>
									</a>
									<a class="share-group__item pinterest" target="_blank" href="http://pinterest.com/pin/create/button/?url=<?= base_url().$row['alias']?>">
										<i class="fab fa-pinterest-p"></i>
									</a>
									<a class="share-group__item twitter" target="_blank" href="http://twitter.com/share?text=<?= base_url().$row['alias']?>">
										<i class="fab fa-twitter"></i>
									</a>
								</div>
							</div>	

						</div>
			
				
						<div class="col-xs-12 col-lg-6 col-xl-5 details-pro bg-white py-3 mt-3 mt-lg-0 px-3">
							<div class="">
								<div class="">
									<h1 class="title-product"><?php echo $row['name']?></h1>
									<form enctype="multipart/form-data" id="add-to-cart-form" action="/cart/add" method="post" class="form_background  margin-bottom-0">
											<div class="product-rating">
									<div class="starbaprv-widget starbaprv-preview-badge starbaprv-preview-badge--with-link" data-id="1037739907" data-url="oppo-reno6-z-5g">
									
									</div>

									<div class="group-status">
												<span class="first_status mr-2">
											Thương hiệu:
											<span class="status_name">
												<a href="#" target="_blank" class="text-primary" title="Oppo">
													<?php $name=$this->Mcategory->category_name($row['catid']); echo $name; ?>
												</a>
											</span>
									</div>

				<?php 
				$option = $this->Mproduct->get_all_option($row['id']);
				foreach($option as $val){
					if($row['showprice']){
				?>
				<div class="price-box" id="price<?= $val['id']?>">
					<span class="special-price">
						<span class="price product-price">
							<?php 
								echo number_format($val['price']);
							?>₫
						</span> 
					</span> <!-- Giá Khuyến mại -->
								<?php if($val['price_sale']>0&&$val['sale']>0): ?>
									<span class="old-price">
										<del class="price product-price-old sale"><?php echo number_format($val['price_sale']) ?>₫</del> 
									</span>
									<div class="label_product">-<?php echo $val['sale'] ?>%</div>
									<div class="save-price">(Tiết kiệm <span><?php echo number_format($val['price'] - $val['price_sale'])?>₫</span>)</div>
								<?php endif; ?>

					<!-- Giá gốc -->
				</div>

				<?php }else{?>
					<div class="price-box" id="price<?= $val['id']?>">
					<span class="special-price">
						<span class="price product-price">
							Giá liên hệ
						</span> 
					</span> 
				</div>
			<?php 	}
			} ?>


<div class="form-product pt-sm-2">
		<div class="product-promotion rounded-sm" id="ega-salebox">
			<h3 class="product-promotion__heading rounded-sm d-inline-flex align-items-center">
				<img src="//theme.hstatic.net/200000458129/1000869299/14/icon-product-promotion.png?v=53" alt="OPPO Reno6 Z 5G" width="16" height="16" class="mr-2">
				KHUYẾN MÃI - ƯU ĐÃI
			</h3>
		
			<ul class="promotion-box">
				<li>Nhập mã <strong>abc</strong> thêm 5% đơn hàng <span onclick="codeCopy(this)" class="smb-copy smb-cursor-pointer text-danger" data-code="EGANY" data-copied-text="Đã chép">Sao chép</span></li>
				<li>Giảm giá 10% khi mua từ 5 sản phẩm</li>
				<li>Tặng phiếu mua hàng khi mua từ 500k </li>
			</ul>

			
		</div> 


		<div class="mt-2 mb-2">
		<?php 
				$option = $this->Mproduct->get_all_option($row['id']);
				if(count($option)){
					echo '<strong>Cấu hình: </strong>';
					$i = 1;
					foreach($option as $val){
						echo '<span class="p-2 mr-2 rounded border view cursor-pointer" id="'.$val['id'].'">cấu hình '.$i.'</span>';
						$i++;
					}	
				}	


						
			?>
			<!-- <strong>Cấu hình: </strong>
			<span class="p-2 mr-2 rounded border view cursor-pointer" id="1">cấu hình 1</span>
			<?php 
				// if($row['ram1']!= '' && $row['ocung1']!= '' ){
				// 	echo '<span class="p-2 mr-2 rounded border view cursor-pointer" id="2">cấu hình 2</span>';
				// }
				// if($row['ram2']!= '' && $row['ocung2']!= '' ){
				// 	echo '<span class="p-2 mr-2 rounded border view cursor-pointer" id="3">cấu hình 3</span>';
				// }
			?> -->
			
			
	</div>

	<div class="form_button_details w-100">
		<div class="form_product_content type1">
			<div class="soluong soluong_type_1 hidden">
				<label>Số lượng:</label>
				<div class="custom input_number_product custom-btn-number ">									
					<button class="btn btn_num num_1 button button_qty" onclick="var result = document.getElementsByClassName('pd-qtym')[0];var stick_result = document.getElementsByClassName('pd-qtym')[1]; var qtypro = result.value; if(!isNaN( qtypro ) &amp;&amp; qtypro > 1){result.value--;stick_result.value--;}else{return false;}" type="button">
						<svg class="icon">
	<use xlink:href="#icon-minus"></use>
</svg></button>
					<input type="text" id="qtym" name="quantity" value="1" maxlength="3" class="form-control prd_quantity pd-qtym" onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode) )) return false;" onchange="var stick_result = document.getElementsByClassName('pd-qtym')[1];if(this.value == 0){this.value=1;}else{stick_result.value=this.value}">
					<button class="btn btn_num num_2 button button_qty" onclick="var result = document.getElementsByClassName('pd-qtym')[0];var stick_result = document.getElementsByClassName('pd-qtym')[1]; var qtypro = result.value; if( !isNaN( qtypro )) result.value++;stick_result.value++;return false;" type="button">
						<svg class="icon">
	<use xlink:href="#icon-plus"></use>
</svg>					</button>
				</div>
			</div>
						<?php if($row['number'] == 0) {?>
							<div class="button_actions">				
								<button class="btn btn_base btn_dis btn-cart" disabled="disabled">
									<span class="text_1">Hết hàng</span>
								</button>
							</div>
						<?php } ?>

						<div class="form_button_details w-100">
		<div class="form_product_content type1">
			<div class="soluong soluong_type_1 show">
				<label>Số lượng:</label>

				<div class="custom input_number_product custom-btn-number ">									
					<button class="btn btn_num num_1 button button_qty" onclick="var result = document.getElementsByClassName('pd-qtym')[0];var stick_result = document.getElementsByClassName('pd-qtym')[1]; var qtypro = result.value; if(!isNaN( qtypro ) &amp;&amp; qtypro > 1){result.value--;stick_result.value--;}else{return false;}" type="button">
						<svg class="icon">
							<use xlink:href="#icon-minus"></use>
						</svg>
					</button>
					<input type="text" id="qtym" name="quantity" value="1" maxlength="3" class="form-control prd_quantity pd-qtym" onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode) )) return false;" onchange="var stick_result = document.getElementsByClassName('pd-qtym')[1];if(this.value == 0){this.value=1;}else{stick_result.value=this.value}">
					<button class="btn btn_num num_2 button button_qty" onclick="var result = document.getElementsByClassName('pd-qtym')[0];var stick_result = document.getElementsByClassName('pd-qtym')[1]; var qtypro = result.value; if( !isNaN( qtypro )) result.value++;stick_result.value++;return false;" type="button">
						<svg class="icon">
							<use xlink:href="#icon-plus"></use>
						</svg>					
					</button>
					</div>
				</div>

				<?php 
				$temnp = '';
				if(count($option)){
					foreach($option as $val){
						$temp = $val['id'];
						break;
					}
				}else{
					$temp = 0;
				}
				
				?>

				<input type="hidden" id="option" value="<?= $temp ?>">

							<div class="button_actions">				
									<button type="submit" class="btn btn_base buynow" onclick="onAddCart(<?php echo $row['id']  ?>, document.getElementById('qtym').value, document.getElementById('option').value)">MUA NGAY<span>Giao hàng tận nơi hoặc nhận tại cửa hàng</span></button>
									<div style="display: flex; flex-wrap: wrap; width: 100%">
									<button type="submit" class="btn btn_add_cart btn-cart add_to_cart" onclick="onAddCart(<?php echo $row['id']  ?>, document.getElementById('qtym').value, document.getElementById('option').value)">THÊM VÀO GIỎ</button>
								</div>
							</div>

																			
								<?php $config = $this->Mconfig->all();?>
								<p class="product-hotline mb-0 text-center">
									Gọi đặt mua <a href="tel:<?= $config['phone_for_sale']?>"><?= $config['phone_for_sale']?></a> (<?= $config['timework']?>)
								</p>
			</div>
		</div>
									
		</div>
	</div>
</div>									</form>
									</div>
							</div>
						</div>
						</div>
			<div class="col-12 col-xl-3 pl-0 pl-xl-3 product-right pr-0">
				<link rel="preload" as="style" type="text/css" href="//theme.hstatic.net/200000458129/1000869299/14/coupon.css?v=53">
				<link rel="stylesheet" href="//theme.hstatic.net/200000458129/1000869299/14/coupon.css?v=53">
				<div class="section_coupons">
				<div class="card border-0">
					<div class="row scroll">																																									
						
					<div class="col-xl-12 col-lg col-md-5 col-9">
						<h3><strong>Cấu hình chi tiết</strong></h3>
						<div id="full-description-box">
							<?php 
							$option = $this->Mproduct->get_all_option($row['id']);
								
								foreach($option as $val){
							?>
								<table class="table table-striped view-product" id="product<?= $val['id']?>">
									<tbody>
										<tr class="bg-light">
											<td class="p-2" style="min-width: 95px"><?= $val['lb1'] ?></td>
											<td class="p-2"><?= $val['op1'] ?></td>
										</tr>
										<tr class="bg-light">
											<td class="p-2" style="min-width: 95px"><?= $val['lb2'] ?></td>
											<td class="p-2"><?= $val['op2'] ?></td>
										</tr>

										<tr class="bg-light">
											<td class="p-2" style="min-width: 95px"><?= $val['lb3'] ?></td>
											<td class="p-2"><?= $val['op3'] ?></td>
										</tr>

										<tr class="bg-light">
											<td class="p-2" style="min-width: 95px"><?= $val['lb4'] ?></td>
											<td class="p-2"><?= $val['op4'] ?></td>
										</tr>

										<tr class="bg-light">
											<td class="p-2" style="min-width: 95px"><?= $val['lb5'] ?></td>
											<td class="p-2"><?= $val['op5'] ?></td>
										</tr>

										<tr class="bg-light">
											<td class="p-2" style="min-width: 95px"><?= $val['lb6'] ?></td>
											<td class="p-2"><?= $val['op6'] ?></td>
										</tr>
									</tbody>
								</table>
							<?php 
								}	
							
							?>
							
							</div>
					</div>
			</div>			
		</div>


																																																																																																																																	</div>
				
			</div>																																																																																																																												</div>
			</div>
</div>

<div class="product-policises-wrapper">
<!-- 
<ul class="product-policises list-unstyled card border-0 p-3 m-0">

	<li class="media">
		<div class="mr-2">
			<img class="img-fluid " width="24" height="24" src="//theme.hstatic.net/200000458129/1000869299/14/policy_product_image_1.png?v=53" alt="Giao hàng miễn phí trong 24h (chỉ áp dụng khu vực nội thành)">
		</div>
		<div class="media-body"> 
			Giao hàng miễn phí trong 24h (chỉ áp dụng khu vực nội thành)
		</div>
	</li>

	<li class="media">
		<div class="mr-2">
			<img class="img-fluid " width="24" height="24" src="//theme.hstatic.net/200000458129/1000869299/14/policy_product_image_3.png?v=53" alt="Trả góp lãi suất 0% qua thẻ tín dụng Visa, Master, JCB">
		</div>
		<div class="media-body"> 
			Trả góp lãi suất 0% qua thẻ tín dụng Visa, Master, JCB
		</div>
	</li>
</ul> -->

</div>
</div>
						
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="section sec_tab ">
		<div class="container">
			<div class="row mr-sm-0 ml-sm-0">
				<div class="mb-3 mb-sm-0 col-12 col-xl-8 product-content js-content-wrapper card border-0">
					<div class="title_module_main heading-bar d-flex justify-content-between align-items-center">
						<h2 class="heading-bar__title ">
							ĐẶC ĐIỂM NỔI BẬT
						</h2>
					</div>
					<div id="ega-uti-editable-content" data-platform="haravan" data-id="1037739907" class="rte js-product-getcontent product_getcontent pos-relative">
							<div id="content" class="content js-content">
								<p><?php echo $row['detail']?></p>
							</div>
					</div>
					<div class="product-comment product-v-desc">
						<!-- <h3>Bình luận</h3> -->
						<div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
							<!-- <?php if(!$this->session->userdata('sessionMacStore')):?>
								<p>Bạn chưa đăng nhập, nhấn vào <a href="dang-nhap"> đây </a> để đăng nhập !</p>
							<?php  else :?>
								<div class="user-comments">
									<form action="#">
										<input type="text" name="content" placeholder="Nhập bình luận">
									</form>
								</div>
							<?php endif;?> -->
							<div class="fb-comments" data-href="<?php echo base_url() ?><?php echo $row['alias'] ?>" data-numposts="5"></div>
						</div>
					</div>
					
				</div>

				<div class="col-12 col-xl-4 product_sidebar pl-0 pl-sm-3 pr-0">
					<div class="product-specifications card border-0">
						<h2 class="heading-bar__title" >Sản phẩm cùng loại</h2>
						<?php 
						$sm_products = $this->Mproduct->product_similar($row['catid'], $row['id'], 12);?>
						<?php 
						if(count($sm_products)>=6):?>
							<div class="col-sm-12 col-xs-12 col-md-12 col-lg-12 product-similar-wrap">
							<?php foreach ($sm_products as $row) :?>
                                <div class="item col-md-2 col-sm-2 col-xs-6 product-one">
                                    <div class="image-product">
                                        <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>"><img src="public/images/products/<?php echo $row['avatar'] ?>"></a>
                                        <h4>
                                            <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>" class="ws-nw overflow ellipsis"><?php echo $row['name'] ?></a>
                                        </h4>
                                    </div>

									<?php 
										if($row['showprice']){
									?>
                                    <div class="price-product-item">
                                        <?php if($row['sale'] > 0) :?>
                                            <span class=""><?php echo(number_format($row['price_sale'])); ?>₫</span>
                                            <span><?php echo(number_format($row['price'])); ?>₫</span>
                                        <?php else: ?>
                                            <span class=""><?php echo(number_format($row['price'])); ?>₫</span>
                                            <span style="color: #fff"><?php echo(number_format($row['price'])); ?>₫</span>
                                        <?php endif; ?>
                                    </div>
                                    <?php if($row['sale'] > 0) :?>
                                        <div class="sale-flash">
                                            -<?php echo $row['sale'] ?>%
                                        </div>
                                    <?php endif; ?>
									<?php } else {
									?>
									<div class="price-product-item">
										<span class="">Giá liên hệ</span>
									</div>
									<?php } ?>
                                    <div class="btn-action">
                                        <button type="button" class="fa fa-shopping-cart" onclick="onAddCart(<?php echo $row['id']  ?>,1,1)"></button>
                                        <button type="button" class="fa fa-eye""></button>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                            </div>
                        <?php else: ?>
                        	<p>Chưa có sản phẩm cùng loại hoặc nhỏ hơn 6 !</p>
                        <?php endif; ?>
					</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>

	<script>
		$(document).ready(function() {
			$('.view-product:first').show(); 
			$('.price-box').hide();
			$('.price-box:first').show() 
			$(".view").click(function() { 
				$('.view-product').hide();
				$('.price-box').hide();
				$('.view').removeClass('bordercs');
				$(this).addClass('bordercs');
				//console.log('click');
				// $(this).attr('id') is the id of the clicked .view element   
				//$()
				$('#option').val($(this).attr('id'));

				$('[id="product'+$(this).attr('id')+'"]').toggle();
				$('[id="price'+$(this).attr('id')+'"]').toggle();

			});
		});

		function onAddCart(id, qty, option){
			var strurl="<?php echo base_url();?>"+'/sanpham/addcart';
			jQuery.ajax({
				url: strurl,
				type: 'POST',
				dataType: 'json',
				data: {
					id: id,
					qty: qty,
					option: option
				},
				success: function(data) {
					console.log(data);
					document.location.reload(true);
					alert('Thêm sản phẩm vào giỏ hàng thành công !');
				}
			});
		}
	</script>

<script>
$(document).ready(()=>{
		let initCoupon = false
		function initCoupons (){
		if( initCoupon) return
		initCoupon = true
		if(!$('#coupon-modal').length){
		$('body').append($('[data-template="couponPopup"]').html())
		}
		$('.coupon_info_toggle').click(function(e){
				e.preventDefault();
				const code = $(this).data('coupon')
				const info = $(this).next('.coupon_info').html()|| ''
				const title = $(this).parents('.coupon_body').find('.coupon_title').text() || ''
				const couponHtml = `
					<div class="coupon-title">${title}</div>
					<div class="coupon-row">
						<div class="coupon-label">Mã khuyến mãi:</div><span class="code">${code}</span>
	
					</div>
					<div class="coupon-row">
						<div class="coupon-label">Điều kiện:</div><div class="coupon-info">${info}</div>
					</div>
					<div class="coupon-action">
					<button type="button" class="btn btn-main" data-dismiss="modal" data-backdrop="false"
        				aria-label="Close" style="z-index: 9;">Đóng</button>
					<button class="btn btn-main coupon_copy" data-ega-coupon="${code}">
						<span>Sao chép</span></button>
					</div>
					`
				$('.coupon-modal .coupon-content').html(couponHtml)
				$("#coupon-modal").modal();
			})
			$(document).on('click','.coupon_copy', function() {
				
		const copyText = "Sao chép";
		const copiedText = "Đã chép";
		const coupon = $(this).data().egaCoupon;
		const _this = $(this);
		_this.html(`<span>${copiedText}</span>`);
		_this.addClass('disabled');
		setTimeout(function() {
			_this.html(`<span>${copyText}</span>`);
			_this.removeClass('disabled');
		}, 3000)
		navigator.clipboard.writeText(coupon);
	})
		
		}
	$(window).one(' mousemove touchstart scroll', initCoupons)
			
	})
</script>

<script>
	$('.filter-item-toggle').click(function(){
		$(this).toggleClass('show')
		let overflowItem = $(this).parent().find('.overflow-item')
		overflowItem.toggleClass('show')
		let text = !$(this).hasClass('show') ? 'Xem tất cả ưu đãi <i class="fas fa-chevron-down "></i>' : 'Thu gọn <i class="fas fa-chevron-down "></i>'  
		$(this).html(text)
	})


</script>	


