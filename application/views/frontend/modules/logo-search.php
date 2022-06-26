
<?php $configsite = $this->Mconfiguration->all(); ?>
<header class="header header_menu">
	<div class="mid-header wid_100 d-flex align-items-center">
		<div class="container ">
			<div class="row align-items-center">
				<div class="col-2 col-sm-3 header-right d-lg-none d-block">
					<div class="toggle-nav btn menu-bar mr-4 ml-0 p-0  d-lg-none d-flex text-white">
						<span class="bar"></span>
						<span class="bar"></span>
						<span class="bar"></span>
					</div>
				</div>
				<div class="col-6 col-lg-2 col-xl-3 header-left">
					
					<a href="<?= base_url() ?>" class="logo-wrapper " title="EGA Techstore">
						<img class="img-fluid" src="<?= base_url()?>/public/images/logo/<?php echo $configsite['logo']?>" alt="<?php echo $configsite['title']?>" width="182" height="56">
					</a>
					

				
	<div class="toogle-nav-wrapper w-100 ">
						<div class=" d-flex align-items-center" style="height: 52px; font-size: 1rem; font-weight: 500">
							<div class="icon-bar btn menu-bar mr-3 ml-0 p-0 d-inline-flex">
							<span class="bar"></span>
							<span class="bar"></span>
							<span class="bar"></span>
					</div>
						Danh mục sản phẩm
					</div>

						<div class="navigation-wrapper">

			<nav class="h-100">
			<ul class="navigation list-group list-group-flush scroll">
					
	
	
			<li class="menu-item list-group-item">
			<a href="<?= base_url() ?>" class="menu-item__link" title="Tổng hợp khuyến mãi">
					<img width="24" height="24" src="<?= base_url()?>/public/techstore/EGA Techstore_files/menu_icon_1.png" alt="Tổng hợp khuyến mãi">
					<span>Tổng hợp khuyến mãi</span>
			</a>			
			</li>
	
	
			
			<?php 
			$category=$this->Mcategory->list(100);
			foreach($category as $val){
		?>
			<li class="menu-item list-group-item">
				<a href="<?= $val['link']?>" class="menu-item__link" title="<?= $val['name']?>">
				<img width="24" height="24" src="<?= base_url()?>/public/images/category/<?= $val['img']?>" alt="<?= $val['name']?>">
				<span><?= $val['name']?></span>
				

				<?php 
					$child = $this->Mcategory->category_list($val['id'], 100);
					if(!empty($child)){
				?>
				<i class="float-right" data-toggle-submenu="">
					<svg class="icon">
						<use xlink:href="#icon-arrow"></use>
					</svg>
				</i>
				<?php } ?>

				</a>			
				
			<?php 
				if(!empty($child)){
			?>
			<div class="submenu scroll">
				<div class="toggle-submenu d-lg-none d-xl-none">
					<i class="mr-3">
						

					<svg class="icon" style="transform: rotate(180deg)">
						<use xlink:href="#icon-arrow"></use>
					</svg>
					</i>
					<span><?= $val['name']?> </span>
				</div>

				<ul class="submenu__list">
			
			
			<?php 
				foreach($child as $value){
			?>
				<li class="submenu__col">
					<span class="submenu__item submenu__item--main">
						<a class="link" href="<?= $value['link']?>" title="Điện thoại Apple"><?= $value['name']?></a>
					</span>
					<?php 
						$all = $this->Mcategory->all();
						foreach($all as $x){
							if($x['parentid'] == $value['id']){
					?>
						<span class="submenu__item submenu__item">
							<a class="link" href="<?= $x['link']?>" title="<?= $x['name']?>"><?= $x['name']?></a>
						</span>
					<?php }} ?>	
				</li>
			<?php } ?>
			
				</ul>
			</div>
		</li>

		<?php } ?>
		<?php } ?>
</ul>
</nav>

</div>

	</div>
					<div class="sticky-overlay">

	</div>
</div>
		

	<div class="col-lg-4 col-12 header-center pl-lg-0" id="search-header">
		<form action="<?= base_url() ?>search" method="get" class="input-group search-bar custom-input-group" role="search">

				<input type="text" name="q" value="" autocomplete="off" class="input-group-field auto-search form-control " required="" data-placeholder="Bạn cần tìm gì..;
				Nhập tên sản phẩm.." onkeyup="showResult(this.value)" placeholder="Bạn cần tìm gì">

				<div id="livesearch"></div>

				<!-- <input type="hidden" name="type" value="product">
				<input type="hidden" name="sortby" value="quantity:product=desc">
				<span class="input-group-btn btn-action">
					<button type="submit" aria-label="search" class="btn text-white icon-fallback-text h-100">
						<svg class="icon">
							<use xlink:href="#icon-search"></use>
						</svg>		
					</button>
				</span> -->
		</form>

	<div class="search-overlay"></div>

					
										
					<div class="search-dropdow">
						<ul class="search__list pl-0 d-flex list-unstyled mb-0 flex-wrap">
							<li class="mr-2">
								<a id="filter-search-iphone" href="<?= base_url() ?>search?q=filter=(tag:product=iphone)">iphone</a>
							</li>	
							<li class="mr-2">
								<a id="filter-search-xiaomi" href="<?= base_url() ?>search?q=filter=(tag:product=xiaomi)">xiaomi</a>
							</li>	
						</ul>
					</div>
					</div>
				<div class="col-4 col-sm-3 col-lg-6 col-xl-5 pl-0">
					<ul class="header-right mb-0 list-unstyled d-flex align-items-center">
	<li class="media d-lg-flex d-none hotline">
		<img src="<?= base_url()?>/public/techstore/EGA Techstore_files/phone-icon.png" width="24" height="24" class="mr-3 align-self-center" alt="phone-icon">

		<div class="media-body d-md-flex flex-column d-none ">
			<span>Gọi mua hàng</span>
			<a class="font-weight-bold d-block" href="tel:0999999999" title="0999999999">
				<?php 
				
				echo $configsite['phone_for_sale']
				?>
			</a>
		</div>
	</li>
	<li class="ml-md-3 media d-lg-flex d-none hotline">
		<img src="<?= base_url()?>/public/techstore/EGA Techstore_files/address-icon.png" width="24" height="24" class="mr-3 align-self-center" alt="phone-icon">

		<div class="media-body d-md-flex flex-column d-none ">
			<a href="<?= base_url() ?>pages/he-thong-cua-hang" title="Hệ thống cửa hàng">
				Hệ thống <br> cửa hàng
			</a>
		</div>
	</li>
	<li class="ml-4 mr-4 mr-md-0 ml-md-3 media d-lg-flex d-none">
		<img src="<?= base_url()?>/public/techstore/EGA Techstore_files/account-icon.png" width="24" height="24" alt="account_icon" class="  mr-3 align-self-center">
		<div class="media-body d-md-flex flex-column d-none ">
						<a rel="nofollow" href="<?= base_url() ?>account/login" class="d-block" title="Tài khoản">
				Tài khoản
			</a>
			<small>
						<?php 
							if($this->session->userdata('sessionMacStore')){
								echo "<a  class='font-weight: light' href='dang-xuat'>Thoát</a>";
							}else{
								
								echo "<a  class='font-weight: light' href='dang-nhap'>Đăng nhập</a>";
							}
						?>
				</a>
			</small>
			
		</div>
	</li>
		<li class="d-lg-none">
		<a href="<?= base_url() ?>pages/so-sanh-san-pham" class="position-relative d-block" title="So sánh sản phẩm">
			<img src="<?= base_url()?>/public/techstore/EGA Techstore_files/compare-icon.png" width="24" height="24" class="align-self-center" alt="compare-icon">
			<span class="compare-product__header-count position-absolute d-block">0</span>
		</a>
	</li>
	
	<li class="cartgroup ml-3">
		<div class="mini-cart text-xs-center">
			<a class="img_hover_cart" href="<?= base_url() ?>gio-hang" title="Giỏ hàng">  
				<img src="<?= base_url()?>/public/techstore/EGA Techstore_files/cart-icon.png" width="24" height="24" alt="cart_icon">

				<span class="ml-2 d-xl-block d-none">Giỏ hàng</span>
				<span class="count_item count_item_pr">
				<?php  
					if($this->session->userdata('cart')){
						$val = $this->session->userdata('cart');
						echo count($val);
					}else{
						echo 0;
					}
				?>
				</span>
			</a>
			
					<?php 
					if($this->session->userdata('cart')){
						$val = $this->session->userdata('cart');
					}else{
						echo '<div class="top-cart-content card ">
						<ul id="cart-sidebar" class="mini-products-list count_li list-unstyled"><div class="no-item"><p>Không có sản phẩm nào.</p></div></ul>
						</div>';
					}
					?>
					
				
		</div>
	</li>
</ul>
				</div>
			</div>
		</div>
	</div>

</header>


