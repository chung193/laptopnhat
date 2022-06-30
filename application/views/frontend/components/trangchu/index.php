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
</script></section>
<section class="section awe-section-4">	
	<link rel="stylesheet" href="<?= base_url()?>/public/techstore/EGA Techstore_files/flashsale.css" media="all" onload="this.media=&#39;all&#39;">

<noscript><link href='//theme.hstatic.net/200000458129/1000825962/14/flashsale.css?v=196' rel='stylesheet' type='text/css'  media='all'  /></noscript>	

<section class="section_flashsale flashsale" style="--background-color: #fed100;
--countdown-background: #000000;
--countdown-color: #ffffff;
--process-background: #ffaaaf;
--process-color1: #ff424e;
--process-color2: #ff424e;
--stock-color: #ffffff;
--heading-color: #333333;
">
	<div class="container">

		

<script>
	window.flashSale = {
		flashSaleColl: "khuyen-mai",
		type:"hours",
		dateStart: "30/11/2021",
		dateFinish: "1",
		hourStart: "00:00",
		hourFinish:  "24",
		activeDay: "7",
		finishAction: "show",
		finishLabel :"Chương trình đã kết thúc",
		percentMin: "30",
		percentMax: "100",
		maxInStock: "300",
		useSoldQuantity: false,
		useTags:  false,
		timestamp: new Date().getTime(),
		openingText: "Vừa mở bán",
		soldText: "Đã bán [soluong] sản phẩm",
		outOfStockSoonText: "<img src='//theme.hstatic.net/200000458129/1000825962/14/fire-icon.svg?v=196' /> Sắp cháy hàng"
	}
</script>

<script src="<?= base_url()?>/public/techstore/EGA Techstore_files/flashsale.js.download" defer=""></script></section>


<section class="section awe-section-6">	
	
</section> 


<?php 
	$cat = $this->Mcategory->all();
	$product = $this->Mproduct->product_home(100);
	foreach($cat as $val){
		if($val['parentid'] != 0){
?>
<section class="section awe-section-7">	
	
<section class="section_product_tag section">
	<div class="container">
		<div class="title_module_main heading-bar e-tabs not-dqtab d-flex justify-content-between align-items-center flex-wrap">
			<h2 class="heading-bar__title">
				<a class="link" href="<?= base_url().'san-pham/'.$val['name'] ?>" title="<?= $val['name'] ?>">
					<?= $val['name'] ?>
				</a>
			</h2>
			<ul class="mt-2 mt-sm-0 tabs tabs-title list-unstyled mb-0 tabs-group d-flex align-items-center">
				<!-- <li class="ega-small tab-link px-3 py-2 link mr-2">
					<a href="#" title="Sản phẩm khuyến mãi">Sản phẩm khuyến mãi</a>	
				</li> -->
				<!-- <li class="ega-small tab-link px-3 py-2 link mr-2">
					<a href="san-pham/<?= $val['link'] ?>" title="Tất cả sản phẩm">Tất cả sản phẩm</a>	
				</li> -->
				<li class="ega-small tab-link px-3 py-2 link d-none d-sm-block">
					<a href="san-pham/<?= $val['link'] ?>" title="Xem tất cả" class="text-primary">
						Xem tất cả 

						<svg class="icon">
							<use xlink:href="#icon-arrow"></use>
						</svg>					
					</a>
				</li>
			</ul>
		</div>
		
		<div class="row mx-sm-0">
			<div class="d-lg-block d-none col-lg-3 col-12 pl-0">
				<div class="pb-3">
					<a class="banner" href="<?= $val['link'] ?>" title="<?= $val['name'] ?>">
						<img class="img-fluid" src="<?= base_url()?>/public/images/category/<?= $val['banner'] ?>" width="285" height="371" alt="<?= $val['name'] ?>">
					</a>
				</div>
				
			</div>
			
			<div class="col-lg-9 col-12">
				<div class="row product-list" data-section="product-tag-section">


				<!-- sản phẩm -->

				<?php 
				foreach($product as $value){
					if($value['catid'] == $val['id']) {
				?>
					<div class="product-col col-6 col-md-3">
						<div class="item_product_main">
							
						<form action="<?= base_url() ?>cart/add" method="post" class="variants product-action" 
							data-id="product-actions-1037739896" enctype="multipart/form-data">
							<div class="product-thumbnail pos-relative">
								<a class="image_thumb pos-relative embed-responsive embed-responsive-1by1" 
								href="<?= $value['alias']?>" title="<?= $value['name']?>">
									<img class="product-thumbnail__img product-thumbnail__img--primary" width="480" height="480" style="--image-scale: 1;" src="<?= base_url() ?>/public/images/products/<?= $value['img']?>" alt="<?= $value['name']?>">
									<img class="product-thumbnail__img product-thumbnail__img--secondary" width="480" height="480" style="--image-scale: 1;" src="<?= base_url() ?>/public/images/products/<?= $value['img']?>" alt="<?= $value['name']?>">
								</a>
						</div>

							<div class="product-info">
								<h3 class="product-name"><a href="<?= $value['alias']?>" title="<?= $value['name']?>"><?= $value['name']?></a></h3>
								<div class="product-item-cta position-relative">
									<div class="price-box">
										<span class="price"><?= $this->format->money($value['price'])?></span>			
									</div>
									<input class="hidden" type="hidden" name="id" value="1082488448">
									<button data-href="<?= $value['alias']?>" class="product-item-btn btn left-to" title="Tùy chọn" type="button" onclick="onAddCart(<?php echo $value['id']  ?>,1,1)">
									<svg class="icon">
										<use xlink:href="#icon-cart"></use>
									</svg>			
								</button>
							</div>
									
								<div class="product-promotion hidden" id="ega-salebox-1037739896">
									<h3 class="product-promotion__heading rounded-sm d-inline-flex align-items-center">
										<img alt="KHUYẾN MÃI - ƯU ĐÃI" src="<?= base_url()?>/public/techstore/EGA Techstore_files/icon-product-promotion.png" width="16" height="16" class="mr-2">
										KHUYẾN MÃI - ƯU ĐÃI
									</h3>
									
									<ul class="promotion-box">
										<li>Nhập mã <strong>EGANY</strong> thêm 5% đơn hàng [coupon="EGANY"]</li>
										<li>Giảm giá 10% khi mua từ 5 sản phẩm</li>
										<li>Tặng phiếu mua hàng khi mua từ 500k </li>
									</ul>
								</div>
							</div>
						</form>						
				</div>
			</div>
			<!-- hết 1 sản phẩm -->
		<?php }} ?>

	
</section>


<?php }} ?>

</section>


<section class="section awe-section-11">	
	<div class="section_brand" style="--item-display: 7">
	<div class="container card border-0">
		<div class="title_module_main heading-bar ">
			<h2 class="heading-bar__title ">
				<a class="link" href="#" title="THƯƠNG HIỆU SẢN PHẨM">THƯƠNG HIỆU SẢN PHẨM</a>
			</h2>
		</div>
		<div class="row mx-0 hrz-scroll text-center flex-nowrap js-slider justify-content-around ">
					
		<?php 
			$producer = $this->Mproducer->producer_all(100,0);
			foreach($producer as $val){
		?>
			<div class="item ">
				<a href="#" class="brand-item pos-relative d-flex align-items-center aspect-ratio " title="<?= $val['name'] ?>" style="--width:157; --height:67"> 					
					<img class="img-fluid m-auto object-contain mh-100 w-auto" src="<?= base_url()?>/public/images/producer/<?= $val['img'] ?>" alt="<?= $val['name'] ?>" width="157" height="67">
				</a>
			</div>
		<?php } ?>														
				
								</div>
	</div>
</div></section>
<section class="section awe-section-12">	
	<section class="section_blog section">
	<div class="container">
		
		<div class="row">

			<?php 
				$contenttype = $this->Mcontenttype->all(4,0);
				$content = $this->Mcontent->content_news(4);
				foreach($contenttype as $val){
			?>
			<div class="col-12 col-lg-6">
				<div class="rounded pt-3" style="background-color: var(--body-background); padding: 20px">
					<div class="title_module_main heading-bar d-flex justify-content-between align-items-center">
						<h2 class="heading-bar__title ">
							<a class="link" href="<?= $val['slug']?>" title="<?= $val['name']?>"><?= $val['name']?></a>
						</h2>
					</div>
					
					<div class="blog-list">
																	
					<?php foreach($content as $value){
						if($value['id_type'] == $val['id']){
					?>
					<div class="blogwp clearfix media">
							<a class="image-blog  text-center mr-3" href="<?= $value['alias']?>" title="<?= $value['title']?>">
							<img class="img-fluid" src="<?= base_url() ?>/public/images/posts/<?= $value['img']?>" alt="<?= $value['title']?>">
						</a>
							<div class="content_blog clearfix media-body ">
							<h3 class="mt-0">
								<a class="link" href="<?= base_url()?>tin-tuc/<?= $value['alias']?>" title="<?= $value['title']?>"><?= $value['title']?></a>
							</h3>
										<div class="media">
								<div class="media-body d-flex flex--wrap align-items-center">
									
									<div class="text-muted mt-0">
										<?php echo $this->date->format($value['created'])?>
									</div>
								</div>
							</div>
							<p class="justify lead d-none d-md-block ">
								<?= $value['introtext']?>
								<a class="button_custome_35 link" href="<?= base_url()?>tin-tuc/<?= $value['alias']?>" title="Đọc tiếp">Đọc tiếp</a>
							</p>
							
						</div>
					</div>	
					<?php }} ?>
					</div>
					<div class="text-center mt-4">
						<a href="<?= base_url() ?>tin-tuc" title="Xem tất cả" class="btn btn-icon w-100 justify-content-center btn-secondary">
							Xem tất cả 

							<svg class="icon">
								<use xlink:href="#icon-arrow"></use>
							</svg>
						</a>
					</div>

				</div>
			</div>

					<?php } ?>
					
			
		</div>
			</div>
</section>
</section>


		

<script>
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
</body></html>