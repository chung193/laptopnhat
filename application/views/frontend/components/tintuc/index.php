



<section class="blogpage section">
	<div class="containers" itemscope="" itemtype="https://schema.org/Blog">
		<meta itemprop="name" content="">
		<meta itemprop="description" content="">
		<div class="wrap_background_aside margin-bottom-0">
															<div class="container">
				<div class="row">
					<div class="col-lg-9 col-12 py-3 content-blog">
						<h1 class="title_page mb-3">TIN TỨC</h1>
						<div class="row">
							
																												
    <?php foreach ($list as $item) :?>		
			<div class="col-md-4 col-6">
		<div class="blogwp clearfix">
	<a class="image-blog card-img-top text-center position-relative 
			   d-flex align-items-center justify-content-center
			   aspect-ratio
			   " href="tin-tuc/<?php echo $item['alias']; ?>" title="<?php echo $item['title']; ?>" style=" --width: 400;
			  --height: 270;">
				<img class="img-fluid m-auto mh-100 w-auto" src="public/images/posts/<?php echo $item['img']; ?>" alt="<?php echo $item['title']; ?>">
			</a>
	<div class="content_blog clearfix card-body px-0 py-2">
		<h3>
			<a class="link" href="tin-tuc/<?php echo $item['alias']; ?>" title="<?php echo $item['title']; ?>"><?php echo $item['title']; ?></a>
		</h3>
		<div class="media">
			<div class="media-body">
				
				<div class="text-muted mt-0">
                <?php echo $item['created']; ?>
				</div>  
			</div>
		</div>
		<p class="justify">
			<span class="art-summary">
            <?php echo $item['introtext']; ?>
			</span>
						<a class="button_custome_35 link" href="tin-tuc/<?php echo $item['alias']; ?>" title="Đọc tiếp">Đọc tiếp</a>
					</p>
	</div>
</div>							</div>
<?php endforeach; ?>  


														<div class="text-center pageinate-page-blog col-12">
                                                        <?php echo $strphantrang; ?>
															</div>
													</div>
					</div>

<!-- <div class="col-lg-3 col-12 left-content sidebar">
						
    <div class="blog-aside aside-item blog-aside-article">
        <div class="aside-title">
            <h2 class="title-head"><span><a href="tin-tuc" title="Tin tức nổi bật">Tin tức nổi bật</a></span></h2>
        </div>
        <div class="aside-content-article aside-content margin-top-0">
            <div class="blog-list blog-image-list">
                
                
                <p class="a-center block">Đang cập nhật bài viết</p>
                
            </div>
        </div>
    </div>

</div> -->
									</div>
			</div>
					</div>
	</div>
</section>