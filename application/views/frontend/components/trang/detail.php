<!-- <section id="content">
	<div class="row wraper">
		<div class="container">
			<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 list-menu pull-left">
                    <?php $this->load->view('frontend/modules/category'); ?>
                </div>
                <?php $this->load->view('frontend/modules/news'); ?> 
            </div>
			<div class = "col-xs-12 col-sm-12 col-md-9 col-lg-9 product-content" id="list-content">
				<div class="product-wrap" id="info-content">
					<div class="content-ct">
						<div class="entry-title">
							<h3><?php echo $row['title']; ?></h3>
						</div>
						<ul class="entry-meta clearfix">
							<li><i class="fa fa-calendar" style="margin-right: 5px"></i><?php echo $row['created']; ?></li>
						</ul>
						<div class="entry-content">
							<p><?php echo $row['fulltext']; ?></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section> -->
<div class="container">
<div class="wrap_background_aside padding-top-0 margin-bottom-40 ">
			<div class="row">		
																	
				<section class="right-content col-lg-9 col-md-12 col-sm-12 col-xs-12 py-3 mx-auto">
					<article class="article-main">
						<div class="article-details">

							<h1 class="article-title title_page"><?php echo $row['title']; ?></h1>
							<!--  -->
							<div class="media ">
								<div class="media-body ">
									<!-- <div class="mt-0">Support EGANY</div> -->
									<small class="text-muted font-weight-light">
									<?php echo $row['created']; ?>
									</small>  
								</div>
							</div>
							<div class="article-content">
								<div class="rte" id="ega-uti-editable-content" data-platform="haravan" data-id="1001591563" data-blog-id="1000690189">
									<p><?php echo $row['fulltext']; ?></p>
								</div>	
							</div>
						</div>
						<div class="tag-share">
							<div class="row">
								
								
							</div>
						</div>
						<div class="section clearfix mt-3">
							
							<div class="w-100 clearfix mb-4">
								<!-- <form accept-charset="UTF-8" action="/blogs/tin-tuc-1/mua-dien-thoai-cu-can-chu-y-nhung-gi-de-khong-phai-om-han/comments" class="comment-form" id="article--comment-form" method="post">
								<input name="form_type" type="hidden" value="new_comment">
								<input name="utf8" type="hidden" value="✓">
 
																
								
								<div class="form-coment clear-fix">
									<div class="margin-top-0 margin-bottom-30 w-100">
										<h5 class="title-form-coment">Viết bình luận của bạn</h5>
									</div>
									<div class="row">
										<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
											<fieldset class="form-group padding-0">
												<input placeholder="Họ tên" type="text" class="form-control " value="" id="full-name" name="comment[author]" required="">
											</fieldset>
										</div>
										<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
											<fieldset class="form-group padding-0">	
												<input placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" type="email" class="form-control " value="" name="comment[email]" required="">
											</fieldset>
										</div>
										<fieldset class="form-group padding-right-15 padding-left-15 col-lg-12 col-md-12 col-sm-12 col-xs-12">	
											<textarea placeholder="Nội dung" class="form-control " id="comment" name="comment[body]" rows="6" required=""></textarea>
										</fieldset>
										<div class="col-12 text-center margin-bottom-fix margin-bottom-50-article clearfix padding-right-15 padding-left-15">
											<button type="submit" class="btn btn-action button_45 m-auto">Gửi bình luận</button>
										</div>
									</div>
								</div> 
								
								
								<input id="1cd7036f57ac44ef99586f40cf3ca5c3" name="g-recaptcha-response" type="hidden" value="03AGdBq24lcbajzpEUCRaM6h4CH7U3NyRcBaGrCvNSIysETTvBRybvsbV3vCvRaEtk6KiMkNGeUu5zY1Ip7gsoAx-_hmJWR875dS7k8o59OCKGEEd-DHmPoZeU0pyl1n0la5-X7TaQ8tYel5XxSKQEigSILptzgmYVYeIxYaImdSxcyYAc3124ZqRyO3al8KSikXdSIaz0j9o92uE4drnN2TdOtANJN-dpeqN5bTRzcfm97dgKWd1J-dhFC15Zt-wJLI4NJeaP3KGiMr3wvBFb_6Ec2iNGY032NNDbs6M-V-g7wcgARD4Cm9fAipYhn57jCY-7QKCVOlnIPUPSS8nheI53FcZtlG6IqRQQNLAU5H9R8a_7DEmu3v9IKN7F6wJj6RlESSW37HFwtO9uyXKjVlVtm83O8SEZWtW0a8EWQeggc2emlLVURtcKkiQOS-ScwhCljJGAkjMLQxUfc2OHv41yL-1vzpb-_g"><script src="https://www.google.com/recaptcha/api.js?render=6LdD18MUAAAAAHqKl3Avv8W-tREL6LangePxQLM-"></script><script>grecaptcha.ready(function() {grecaptcha.execute('6LdD18MUAAAAAHqKl3Avv8W-tREL6LangePxQLM-', {action: 'submit'}).then(function(token) {document.getElementById('1cd7036f57ac44ef99586f40cf3ca5c3').value = token;});});</script>
								</form> -->
								
								
							</div>
							
						</div>
							<section class="section mt-3" id="section-comments">
	<div class="container">
		<div class="card">
			<div class="title_module mb-3 heading-bar d-flex justify-content-between align-items-center p-0">
				<h2 class="bf_flower heading-bar__title">
					Hỏi đáp - Bình luận
				</h2>
			</div>
			<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div><div class=" fb_iframe_widget fb_invisible_flow" fb-iframe-plugin-query="app_id=&amp;attribution=biz_inbox&amp;container_width=821&amp;current_url=https%3A%2F%2Fega-techstore.myharavan.com%2Fblogs%2Ftin-tuc-1%2Fmua-dien-thoai-cu-can-chu-y-nhung-gi-de-khong-phai-om-han&amp;is_loaded_by_facade=true&amp;local_state=%7B%22v%22%3A1%2C%22path%22%3A2%2C%22chatState%22%3A1%2C%22visibility%22%3A%22hidden%22%2C%22showUpgradePrompt%22%3A%22not_shown%22%2C%22shouldShowLoginPage%22%3Afalse%7D&amp;locale=vi_VN&amp;log_id=ebcc87e4-6df7-4595-8c98-bd474950cd4b&amp;page_id=168389884826236&amp;request_time=1654471201762&amp;sdk=joey"><span style="vertical-align: bottom; width: 0px; height: 0px;"><iframe name="f2f29b644922e54" width="1000px" height="1000px" data-testid="dialog_iframe" title="" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v12.0/plugins/customerchat.php?app_id=&amp;attribution=biz_inbox&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df3042a20a6919a8%26domain%3Dega-techstore.myharavan.com%26is_canvas%3Dfalse%26origin%3Dhttps%253A%252F%252Fega-techstore.myharavan.com%252Ff2676bdedb051c%26relation%3Dparent.parent&amp;container_width=821&amp;current_url=<?= base_url()?>tin-tuc/<?= $row['slug']?>&amp;is_loaded_by_facade=true&amp;local_state=%7B%22v%22%3A1%2C%22path%22%3A2%2C%22chatState%22%3A1%2C%22visibility%22%3A%22hidden%22%2C%22showUpgradePrompt%22%3A%22not_shown%22%2C%22shouldShowLoginPage%22%3Afalse%7D&amp;locale=vi_VN&amp;log_id=ebcc87e4-6df7-4595-8c98-bd474950cd4b&amp;page_id=168389884826236&amp;request_time=1654471201762&amp;sdk=joey" style="padding: 0px; position: fixed; z-index: 2147483646; border-radius: 16px; top: auto; background: none; width: 399px; bottom: 84px; max-height: 0px; right: 16px; visibility: visible;" class=""></iframe></span></div><div class=" fb_iframe_widget fb_invisible_flow" fb-iframe-plugin-query="app_id=&amp;attribution=biz_inbox&amp;container_width=821&amp;current_url=https%3A%2F%2Fega-techstore.myharavan.com%2Fblogs%2Ftin-tuc-1%2Fmua-dien-thoai-cu-can-chu-y-nhung-gi-de-khong-phai-om-han&amp;is_loaded_by_facade=true&amp;local_state=%7B%22v%22%3A1%2C%22path%22%3A2%2C%22chatState%22%3A1%2C%22visibility%22%3A%22hidden%22%2C%22showUpgradePrompt%22%3A%22not_shown%22%2C%22shouldShowLoginPage%22%3Afalse%7D&amp;locale=vi_VN&amp;log_id=b133e187-2af4-48c4-85d0-afa41b6a0323&amp;page_id=168389884826236&amp;request_time=1654471201824&amp;sdk=joey"><span style="vertical-align: bottom; width: 0px; height: 0px;"><iframe name="f318d21d3a5533" width="1000px" height="1000px" data-testid="dialog_iframe" title="" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v12.0/plugins/customerchat.php?app_id=&amp;attribution=biz_inbox&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df32a2f88b3d4fe8%26domain%3Dega-techstore.myharavan.com%26is_canvas%3Dfalse%26origin%3Dhttps%253A%252F%252Fega-techstore.myharavan.com%252Ff2676bdedb051c%26relation%3Dparent.parent&amp;container_width=821&amp;current_url=https%3A%2F%2Fega-techstore.myharavan.com%2Fblogs%2Ftin-tuc-1%2Fmua-dien-thoai-cu-can-chu-y-nhung-gi-de-khong-phai-om-han&amp;is_loaded_by_facade=true&amp;local_state=%7B%22v%22%3A1%2C%22path%22%3A2%2C%22chatState%22%3A1%2C%22visibility%22%3A%22hidden%22%2C%22showUpgradePrompt%22%3A%22not_shown%22%2C%22shouldShowLoginPage%22%3Afalse%7D&amp;locale=vi_VN&amp;log_id=b133e187-2af4-48c4-85d0-afa41b6a0323&amp;page_id=168389884826236&amp;request_time=1654471201824&amp;sdk=joey" style="padding: 0px; position: fixed; z-index: 2147483646; border-radius: 16px; top: auto; background: none; width: 399px; bottom: 84px; max-height: 0px; right: 16px; visibility: visible;" class=""></iframe></span></div><div class="fb_dialog  fb_dialog_advanced" alignment="right" desktop_bottom_spacing="24"><div class="fb_dialog_content"><iframe name="blank_f2f29b644922e54" width="60px" tabindex="-1" data-testid="bubble_iframe" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v12.0/plugins/customer_chat/bubble" style="background: none; border-radius: 60px; bottom: 24px; box-shadow: rgba(0, 0, 0, 0.15) 0px 4px 12px 0px; display: block; height: 60px; margin: 0px 12px; overflow: visible; padding: 0px; position: fixed; right: 12px; top: auto; width: 60px; z-index: 2147483644;"></iframe><iframe name="availabilityStatus_f2f29b644922e54" tabindex="-1" data-testid="availabilityStatus_iframe" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v12.0/plugins/customer_chat/bubble" style="border-radius: 50%; bottom: 21.5px; height: 15px; position: fixed; right: 24px; width: 15px; z-index: 2147483646;"></iframe><iframe name="unread_f2f29b644922e54" tabindex="-1" data-testid="unread_iframe" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v12.0/plugins/customer_chat/bubble" style="background: none; border-radius: 4pt; bottom: 68px; height: 24px; position: fixed; right: 22px; width: 20px; z-index: 2147483645;"></iframe><iframe name="greeting_f2f29b644922e54" tabindex="-1" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v12.0/plugins/customer_chat/bubble" style="border: none;"></iframe></div></div><div class="fb_dialog  fb_dialog_advanced" alignment="right" desktop_bottom_spacing="24"><div class="fb_dialog_content"><iframe name="blank_f318d21d3a5533" width="60px" tabindex="-1" data-testid="bubble_iframe" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v12.0/plugins/customer_chat/bubble" style="background: none; border-radius: 60px; bottom: 24px; box-shadow: rgba(0, 0, 0, 0.15) 0px 4px 12px 0px; display: block; height: 60px; margin: 0px 12px; overflow: visible; padding: 0px; position: fixed; right: 12px; top: auto; width: 60px; z-index: 2147483644;"></iframe><iframe name="availabilityStatus_f318d21d3a5533" tabindex="-1" data-testid="availabilityStatus_iframe" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v12.0/plugins/customer_chat/bubble" style="border-radius: 50%; bottom: 21.5px; height: 15px; position: fixed; right: 24px; width: 15px; z-index: 2147483646;"></iframe><iframe name="unread_f318d21d3a5533" tabindex="-1" data-testid="unread_iframe" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v12.0/plugins/customer_chat/bubble" style="background: none; border-radius: 4pt; bottom: 68px; height: 24px; position: fixed; right: 22px; width: 20px; z-index: 2147483645;"></iframe><iframe name="greeting_f318d21d3a5533" tabindex="-1" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v12.0/plugins/customer_chat/bubble" style="border: none;"></iframe></div></div></div>					
			<div class="fb-comments fb_iframe_widget fb_iframe_widget_fluid_desktop" data-href="<?= base_url()?>tin-tuc/<?= $row['slug']?>" data-numposts="5" width="100%" data-colorscheme="light" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=&amp;color_scheme=light&amp;container_width=821&amp;height=100&amp;href=https%3A%2F%2Fega-techstore.myharavan.com%2Fblogs%2Ftin-tuc-1%2Fmua-dien-thoai-cu-can-chu-y-nhung-gi-de-khong-phai-om-han&amp;locale=vi_VN&amp;numposts=5&amp;sdk=joey&amp;version=v12.0&amp;width=" style="width: 100%;"><span style="vertical-align: bottom; width: 100%; height: 204px;"><iframe name="f3288a7429d8ec4" width="1000px" height="100px" data-testid="fb:comments Facebook Social Plugin" title="fb:comments Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v12.0/plugins/comments.php?app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df21d2d5bc66e1e8%26domain%3Dega-techstore.myharavan.com%26is_canvas%3Dfalse%26origin%3Dhttps%253A%252F%252Fega-techstore.myharavan.com%252Ff2676bdedb051c%26relation%3Dparent.parent&amp;color_scheme=light&amp;container_width=821&amp;height=100&amp;href=https%3A%2F%2Fega-techstore.myharavan.com%2Fblogs%2Ftin-tuc-1%2Fmua-dien-thoai-cu-can-chu-y-nhung-gi-de-khong-phai-om-han&amp;locale=vi_VN&amp;numposts=5&amp;sdk=joey&amp;version=v12.0&amp;width=" style="border: none; visibility: visible; width: 100%; height: 204px;" class=""></iframe></span></div>
		</div>
	</div>
</section>

<script type="text/javascript">
	$(document).ready(function ($) {
		$(window).one(' mousemove touchstart scroll', function() {
			(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) return;
		js = d.createElement(s); js.id = id;
		js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.0";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'))();
		})
	})
</script>


						
					</article>
				</section>
				
								<div class="sidebar left-content col-lg-3 col-12">
					
				
				<div class="blog-aside aside-item blog-aside-article">
					<div class="aside-title">
						<h2 class="title-head"><span><a href="/blogs/tin-tuc-1" title="Bài viết liên quan">Bài viết liên quan</a></span></h2>
					</div>
					<div class="aside-content-article aside-content margin-top-0">

						<div class="blog-list blog-image-list">
									
						<?php 
							$cat = $this->Mcontent->content_chude(5,0);
							foreach($cat as $val) {
						?>
						<div class="blogwp clearfix media">
								<a class="image-blog  text-center mr-3" href="<?= base_url()?>tin-tuc/<?= $val['alias']?>" title="<?= $val['title']?>">
									<img class="img-fluid" src="<?= base_url()?>images/posts/<?= $val['img']?>" alt="<?= $val['title']?>">
								</a>
								<div class="content_blog clearfix media-body ">
								<h3 class="mt-0">
									<a class="link" href="<?= base_url()?>tin-tuc/<?= $val['alias']?>" title="<?= $val['title']?>"><?= $val['title']?></a>
								</h3>
								
							</div>
						</div>
						<?php } ?>
																																																							</div>
					</div>
				</div>

								

				</div>
				
			</div>
		</div>
		</div>