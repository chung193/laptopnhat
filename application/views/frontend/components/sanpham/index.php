


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
					
					<li class="active">
						<span>Tất cả sản phẩm</span>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>

<section class="section wrap_background">
	<div class="container">
		<div class="bg_collection section">
			<div class="row">
				
				<div class="card py-0 py-xl-2 main_container collection col-xl col-md-12 col-sm-12">
					<h1 class="title_page collection-title mb-0">
						Tất cả sản phẩm					
                    </h1>
					<div class="filter-content aside-filter">
						<div class="filter-container">	
							<div class="filter-container__selected-filter" style="display: none;">
								<div class="filter-container__selected-filter-list mb-2 ">
									<ul></ul>
								</div>
							</div>
						</div>
					</div>
					<div class="category-products products">
						
<div class=" d-flex justify-content-between align-items-baseline mb-2">
	<div class="sortPagiBar">
	<div class="sort-cate clearfix">
		<div id="sort-by" class="d-flex align-items-baseline">
			<label class="left">
				<span class="">Sắp xếp: </span></label>
			<!-- <ul class="ul_col ml-2 mb-0">
				<li><span class="d-flex d-lg-none align-items-center justify-content-between">Thứ tự </span>
					<i class="fas fa-chevron-down float-right"></i>
					<ul class="content_ul">                    
						
						<li data-sort="name:asc"><a class="link" href="javascript:;" onclick="sortby('alpha-asc')">Tên A → Z</a></li>
						<li data-sort="name:desc"><a class="link" href="javascript:;" onclick="sortby('alpha-desc')">Tên Z → A</a></li>
						<li data-sort="price_min:asc"><a class="link" href="javascript:;" onclick="sortby('price-asc')">Giá tăng dần</a></li>
						<li data-sort="price_min:desc"><a class="link" href="javascript:;" onclick="sortby('price-desc')">Giá giảm dần</a></li>
						<li data-sort="created_on:desc"><a class="link" href="javascript:;" onclick="sortby('created-desc')">Hàng mới </a></li>
											</ul>
				</li>
			</ul> -->
						<form class="form-inline form-viewpro">
                            <div class="form-group">
                        <?php 
                            $html_list="";
                            $html_list.='<select id ="sortControl" class = "sort-by form-control input-sm" onchange="sortby(this.value)">';
                            if($this->session->userdata('sortby')){
                                $data = $this->session->userdata('sortby');
                                $sort = $data[0].'-'.$data[1];
                                if($sort == 'number_buy-desc'){
                                    $html_list.='<option value="number_buy-desc" selected>Bán chạy nhất</option>';
                                }else{
                                    $html_list.='<option value="number_buy-desc">Bán chạy nhất</option>';
                                }
                                if($sort == 'name-asc'){
                                    $html_list.='<option value="name-asc" selected>A → Z</option>';
                                }else{
                                    $html_list.='<option value="name-asc" >A → Z</option>';
                                }
                                if($sort == 'name-desc'){
                                    $html_list.='<option value="name-desc" selected>Z → A</option>';
                                }else{
                                    $html_list.='<option value="name-desc">Z → A</option>';
                                }
                                if($sort == 'price-asc'){
                                    $html_list.='<option value="price-asc" selected>Giá tăng dần</option>';
                                }else{
                                    $html_list.='<option value="price-asc">Giá tăng dần</option>';
                                }
                                if($sort == 'price-desc'){
                                    $html_list.='<option value="price-desc" selected>Giá giảm dần</option>';
                                }else{
                                    $html_list.='<option value="price-desc">Giá giảm dần</option>';
                                }
                                if($sort == 'created-desc'){
                                    $html_list.='<option value="created-desc" selected>Hàng mới nhất</option>';
                                }else{
                                    $html_list.='<option value="created-desc">Hàng mới nhất</option>';
                                }
                                if($sort == 'created-asc'){
                                    $html_list.='<option value="created-asc" selected>Hàng cũ nhất</option>';
                                }else{
                                    $html_list.='<option value="created-asc">Hàng cũ nhất</option>';
                                }
                            }else{
                                $html_list.='<option value="number_buy-desc">Bán chạy nhất</option>';
                                $html_list.='<option value="name-asc">A → Z</option>';
                                $html_list.='<option value="name-desc">Z → A</option>';
                                $html_list.='<option value="price-asc">Giá tăng dần</option>';
                                $html_list.='<option value="price-desc">Giá giảm dần</option>';
                                $html_list.='<option value="created-desc">Hàng mới nhất</option>';
                                $html_list.='<option value="created-desc">Hàng cũ nhất</option>';
                            }
                            $html_list.='</select>';
                            echo $html_list;
                        ?>
                        </div>
                        </form>
		</div>
	</div>
</div>
	<div id="open-filters" class="btn open-filters d-xl-none d-block p-0">
		<i class="fa fa-filter"></i>
		<span>Lọc</span>
	</div>
</div>
	

<div class="products-view products-view-grid collection_reponsive list_hover_pro" id="list-product">
	<div class="row product-list content-col">

        <!-- product list start -->
		
        <?php 
			if(count($list)==0){
				echo '<p>Không có sản phẩm nào</p>';
			}else{
			foreach ($list as $row){ 
		?>
        <div class="col-6  col-sm-3  col-md-3 col-lg-3  product-col">
			<div class="item_product_main">

<form action="/cart/add" method="post" class="variants product-action" data-id="product-actions-1037739911" enctype="multipart/form-data">
	<div class="product-thumbnail pos-relative">
		<span class="product-promo-tag product-promo-tag--1 product-promo-tag--image" style="--color: #333; --background: #f0f0f0; --border-color: #f0f0f0">
			<img src="<?= base_url() ?>public/images/products/<?= $row['img'] ?>" alt="<?= $row['name'] ?>">
		</span>
		<a class="image_thumb pos-relative embed-responsive embed-responsive-1by1" href="<?= base_url() ?><?= $row['alias'] ?>" title="<?= $row['name'] ?>">
			<img class="product-thumbnail__img product-thumbnail__img--primary" width="480" height="480" style="--image-scale: 1;" 
				src="<?= base_url() ?>public/images/products/<?= $row['avatar'] ?>" alt="<?= $row['name'] ?>">
			<!-- <img class="product-thumbnail__img product-thumbnail__img--secondary" width="480" height="480" style="--image-scale: 1;" 
                src="<?= base_url() ?>public/images/products/<?= $row['img'] ?>" alt="<?= $row['name'] ?>"> -->
		</a>		
		<div class="label_product d-none">
			<div class="label_wrapper">
				-<?php echo $row['sale'] ?>%
			</div> 
		</div>

		<!-- <div class="product-action">
			<div class="group_action" data-url="/products/thong-so-ky-thuat-va-khuyen-mai">
				<a title="Xem nhanh" href="/products/thong-so-ky-thuat-va-khuyen-mai" data-handle="thong-so-ky-thuat-va-khuyen-mai" class="xem_nhanh btn-circle btn-views btn_view btn right-to quick-view">
					<i class="fas fa-search"></i>
				</a>
				<a title="So sánh" data-id="1037739911" class="btn-circle btn-views btn js-compare-product-add">
						<i class="fas fa-random"></i>
				</a>
			</div>
		</div> -->

	</div>
	<div class="product-info">
			<h3 class="product-name">
				<a href="<?= base_url()?><?= $row['alias'] ?>" title="<?= $row['name'] ?>"><?= $row['name'] ?></a>
			</h3>
			<div class="product-rating">
	<div class="starbaprv-widget starbaprv-preview-badge starbaprv-preview-badge--with-link" data-id="1037739911" data-url="thong-so-ky-thuat-va-khuyen-mai">



		<!-- <div class="starbap-prev-badge" data-average-rating="0" data-number-of-reviews="0">
			<a class="starbap-star starbap--off"><i class="fa fa-star fa-fw" style="color:#dfe519!important"></i></a>
			<a class="starbap-star starbap--off"><i class="fa fa-star fa-fw" style="color:#dfe519!important"></i></a>
			<a class="starbap-star starbap--off"><i class="fa fa-star fa-fw" style="color:#dfe519!important"></i></a>
			<a class="starbap-star starbap--off"><i class="fa fa-star fa-fw" style="color:#dfe519!important"></i></a>
			<a class="starbap-star starbap--off"><i class="fa fa-star fa-fw" style="color:#dfe519!important"></i></a>
			<span class="starbap-prev-badgetext">0 đánh giá</span></div></div>
		</div> -->

		<div class="product-item-cta position-relative">
			<div class="price-box">
									<?php if($row['sale'] > 0) :?>
                                            <span class="price"><?php echo(number_format($row['price_sale'])); ?>₫</span>
                                        <?php else: ?>
                                            <span class="price"><?php echo(number_format($row['price'])); ?>₫</span>
                                            <span class="compare-price"><?php echo(number_format($row['price'])); ?>₫</span>
                                        <?php endif; ?>
                                    </div>
                                    <?php if($row['sale'] > 0) :?>
                                        <div class="label_wrapper">
                                            -<?php echo $row['sale'] ?>%
                                        </div>
                                    <?php endif; ?>
					<!-- <span class="price"></span> -->
					<!-- <span class="compare-price">10,590,000₫</span>
					<div class="label_product d-inline-block">
					<div class="label_wrapper">-34% </div> -->
				</div>															
			</div>
			<!-- <input class="hidden" type="hidden" name="id" value="1082488526"> -->
			<button style="z-index:10" class="product-item-btn btn left-to" title="Tùy chọn" type="button" onclick="onAddCart(<?php echo $row['id']  ?>,1,1)">
				<svg class="icon">
					<use xlink:href="#icon-cart"></use>
				</svg>			
			</button>
		</div>
		
				<!-- <span class="product-promo-tag product-promo-tag--3 product-promo-tag--text-2" style="--color: #8f8f8f; --background: transparent; --border-color: #ff1010">
						Tặng gói bảo hành Gold trị giá 300K
				</span> -->
														
				<!-- <div class="product-promotion hidden" id="ega-salebox-1037739911">
					<h3 class="product-promotion__heading rounded-sm d-inline-flex align-items-center">
						<img alt="KHUYẾN MÃI - ƯU ĐÃI" src="//theme.hstatic.net/200000458129/1000869299/14/icon-product-promotion.png?v=53" width="16" height="16" class="mr-2">
						KHUYẾN MÃI - ƯU ĐÃI
					</h3>
					<ul class="promotion-box">
						<li>Nhập mã <strong>EGANY</strong> thêm 5% đơn hàng [coupon="EGANY"]</li>
						<li>Giảm giá 10% khi mua từ 5 sản phẩm</li>
						<li>Tặng phiếu mua hàng khi mua từ 500k </li>
					</ul>
				</div> -->
			</div>
		</form>	
			</div>
		</div>			
		
<?php } ?>
<div class = "text-center pull-right">
    <ul class ="pagination">
        <?php echo $strphantrang; ?>
    </ul>
</div>
<?php } ?>

								
		
	<!-- <div class="section pagenav">
		
		<nav class="clearfix relative nav_pagi w_100">
			<ul class="pagination clearfix float-right">
						
				<li class="page-item disabled"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a></li>
				<li class="active page-item disabled"><a class="page-link" href="javascript:;">1</a></li>		
				<li class="page-item"><a class="page-link" onclick="doSearch(2)" href="?&amp;page=2&amp;view=grid">2</a></li>		
				<li class="page-item"><a class="page-link" onclick="doSearch(3)" href="?&amp;page=3&amp;view=grid">3</a></li>
				<li class="page-item"><a class="page-link" href="javascript:;">…</a></li>			
				<li class="page-item"><a class="page-link" onclick="doSearch(9)" href="?&amp;page=9&amp;view=grid">9</a></li>
				<li class="page-item hidden-xs"><a class="page-link" onclick="doSearch(2)" href="?&amp;page=2&amp;view=grid"><i class="fa fa-angle-right" aria-hidden="true"></i>
				</a></li>
				
			</ul>
		</nav>
	</div> -->

<script>
	
	var cuPage = 1
		
</script>
		
	</div>

</div>																	</div>
				</div>
			</div>
		</div>
	</div>
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

    function sortby(option){
        var strurl="<?php echo base_url();?>"+'/sanpham/index';
        jQuery.ajax({
            url: strurl,
            type: 'POST',
            dataType: 'json',
            data: {'sapxep': option},
            success: function(data) {
				console.log('sort');
                $('#list-product').html(data);
            }
        });
    }
</script> 