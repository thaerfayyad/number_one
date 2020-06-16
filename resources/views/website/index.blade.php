<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>b1-store</title>
	<!-- Stylesheets -->
	<link href="{{url('web/css/bootstrap.css')}}" rel="stylesheet">
	<link href="{{url('web/css/fontawesome-all.css')}}" rel="stylesheet">
	<link href="{{url('web/css/material-design-iconic-font.css')}}" rel="stylesheet">
	<link href="{{url('web/css/owl.carousel.min.css')}}" rel="stylesheet">
	<link href="{{url('web/css/owl.theme.default.min.css')}}" rel="stylesheet">
	<link href="{{url('web/css/animate.css')}}" rel="stylesheet" type="text/css" />
	<link href="{{url('web/css/style.css')}}" rel="stylesheet">
	
	<!-- Responsive -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<link href="{{url('web/css/responsive.css')}}" rel="stylesheet">
	<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
	
	<script src="{{url('web/js/jquery-1.12.2.min.js')}}"></script>
	
	<link rel="icon" href="{{url('/favicon.png')}}">
</head>
<body>
	<div class="mobile-menu">
	    <div class="menu-mobile">
	        <div class="brand-area">
	            <a href="#">
	            	<img src="{{$setting->logo}}">
	            </a>
	        </div>
	        <div class="mmenu">
		        <ul>
			        <li><a href="#" data-value="home">{{__('website.home')}}</a></li>
					<li><a href="#" data-value="faq">{{__('website.faq')}}</a></li>
					<li><a href="#" data-value="contact">{{__('website.contact')}}</a></li>
					
				</ul>
				<ul class="clearfix">
					<li><a href="index_ar.html">Arabic</a></li>
				</ul>
			</div>
			<ul class="social_links clearfix">
				<li>
					<a href="{{$setting->facebook}}" target="_blank"><i class="fab fa-facebook-f"></i></a>
				</li>
				<li>
					<a href="{{$setting->twitter}}" target="_blank"><i class="fab fa-twitter"></i></a>
				</li>
				<li>
					<a href="{{$setting->instagram}}" target="_blank"><i class="fab fa-instagram"></i></a>
				</li>
			</ul>
		</div>
		<div class="m-overlay"></div>
	</div>
	<!--mobile-menu-->
	<div class="main-wrapper">
		<header id="header">
			<div class="container">
				<div class="logo-site">
            <a >
                <img src="{{$setting->logo}}"
                     style="margin: 3px 10px 0 !important; width: 70px;" alt="logo" class="logo-default"/>
            </a>				</div>
				<ul class="main_menu clearfix">
					<li><a href="#home" rel="m_PageScroll2id">{{__('website.home')}}</a></li>
					<li><a href="#about" rel="m_PageScroll2id">{{__('website.about_menu')}}</a></li>
					<li><a href="#features" rel="m_PageScroll2id">{{__('website.features_menu')}}</a></li>
					<li><a href="#application" rel="m_PageScroll2id">{{__('website.app_screens')}}</a></li>
					<li><a href="#contact" rel="m_PageScroll2id">{{__('website.contact')}}</a></li>
					<li><a href="">AR</a></li>
				</ul>
				<button type="button" class="hamburger is-closed">
			        <span class="hamb-top"></span>
			        <span class="hamb-middle"></span>
			        <span class="hamb-bottom"></span>
			    </button>
			</div>
		</header>
		<!--header-->
		<section class="section_home" id="home">
			<div class="container">
				<div class="row">
					<div class="col-md-5 col-sm-7">
						<div class="home_txt">
							<h2 class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.500s">{{__('website.best_app')}}</h2>
							<p class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.600s">{{__('website.download')}}</p>
							<ul class="buttons_store clearfix wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.700s">
								<li><a href="{{$setting->app_store_url}}" class="apple_store"><img src="{{url('web/images/app-store.svg')}}" /><span><b>Get It From</b><br /> Apple Store</span></a></li>
								<li><a href="{{$setting->play_store_url}}" class="google_store"><img src="{{url('web/images/play-store.svg')}}" /><span><b>Get It From </b><br />  Google play</span></a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-7 col-sm-5">
						<div class="home_thumbs wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.500s">
							<div class="item">
								<img src="{{url('web/images/Mockup1.png')}}" alt="" class="img-responsive">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--section_home-->
		<section class="section_about" id="about">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-6">
						<div class="serv_item wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.800s">
							<div class="serv_icon">
								<h2>{{__('website.about')}} <br />{{__('website.the_app')}}</h2>
							</div>
						</div>
					</div>
					<div class="col-md-offset-1 col-md-8 col-sm-6">
						<div class="serv_item wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.900s">
							<div class="serv_txt">
								<p>looking layout. The point of using Lorem Ipsum is that  opposed to using 'Content here, content here', making it look likpreadable English. Many desktop publishing packages and web many web sites still in their infancy packages and web many web sites still in their infancy packages and web many web sites still in their infancy .packages and web many web sites still in their infancy 
								packages and web many web sites still in their infancy ,
								packages and web many web sites still in their infancy ,
								packages and web many web sites still in their infancy .</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--section_services-->
		<section class="section_features" id="features">
			<div class="sheap">
				<img src="{{url('web/images/sheapFeatures1.svg')}}" />
			</div>
			<div class="serv_icon">
				<img src="{{url('web/images/features1.png')}}" alt="" class="img-responsive">
			</div>
			<div class="container">
				<div class="serv_item wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.900s">
					<div class="serv_txt">
						<h3>{{__('website.features')}}</h3>
						<div class="row features_list">
							<div class="col-md-6 box_features">
								<a>
									<img src="{{url('web/images/layers.svg')}}" class="img-responsive" />
								</a>
								<div class="sec_title">
									<h6>CREATIVE DESIGN</h6>
									<p>Lorem ipsum dolor sit amet, consectet adop adipisicing elit, sed do  is what we stand for.incididunt ugt labore.</p>
								</div>
							</div>
							<div class="col-md-6 box_features">
								<a>
									<img src="{{url('web/images/Ellipse.svg')}}" class="img-responsive" />
								</a>
								<div class="sec_title">
									<h6>UNLIMITED FEATURES</h6>
									<p>Lorem ipsum dolor sit amet, consectet adop adipisicing elit, sed do  is what we stand for.incididunt ugt labore.</p>
								</div>
							</div>
							<div class="col-md-6 box_features">
								<a>
									<img src="{{url('web/images/tap.svg')}}" class="img-responsive" />
								</a>
								<div class="sec_title">
									<h6>USER FRIENDLY</h6>
									<p>Lorem ipsum dolor sit amet, consectet adop adipisicing elit, sed do  is what we stand for.incididunt ugt labore.</p>
								</div>
							</div>
							<div class="col-md-6 box_features">
								<a>
									<img src="{{url('web/images/code.svg')}}" class="img-responsive" />
								</a>
								<div class="sec_title">
									<h6>CLEAN CODES</h6>
									<p>Lorem ipsum dolor sit amet, consectet adop adipisicing elit, sed do  is what we stand for.incididunt ugt labore.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--section_services-->
		<!--section_services-->
		<!--section_customer-->
		<section class="section_application" id="application">
			<div class="container">
				<div class="is-flex">
					<div class="app_item wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.600s">
						<h2>{{__('website.app_screens')}}</h2>
						
					</div>
					<div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.700s">
						<div class="owl-carousel" id="screen_slide">
							<div class="item">
								<img src="{{url('web/images/app1.svg')}}" alt="" class="img-responsive">
							</div>
							<div class="item">
								<img src="{{url('web/images/app2.svg')}}" alt="" class="img-responsive">
							</div>
							<div class="item">
								<img src="{{url('web/images/app3.svg')}}" alt="" class="img-responsive">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--section_application-->
		<section class="section_contact" id="contact">
			<div class="container">
				<div class="sec_head wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.500s">
					<h2>{{__('website.contact')}}</h2>
				</div>
				<div class="contact_left">
					<div class="contact_info_box wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.600s">
						<ul>
							<li class="li_location">
								<i class="zmdi zmdi-pin"></i>
								{{$setting->address}}<br>
							</li>
							<li class="li_phone">
								<i class="zmdi zmdi-phone"></i>
								{{$setting->mobile ." | ". $setting->phone}}
							</li>
							<li class="li_email">
								<i class="zmdi zmdi-email"></i>
								{{$setting->info_email}}
							</li>
						</ul>
					</div>
					<form class="form_contact" action="#">
						<div class="form-group wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.550s">
							<label for="Name">{{__('website.name')}}</label>
							<input type="text" class="form-control" id="Name">
						</div>
						<div class="form-group wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.600s">
							<label for="Email">{{__('website.email')}}</label>
							<input type="email" class="form-control" id="Email">
						</div>
						<div class="form-group wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.650s">
							<label for="Phone">{{__('website.mobile')}}</label>
							<input type="text" class="form-control" id="Phone">
						</div>
						<div class="form-group wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.700s">
							<label for="Message">{{__('website.message')}}</label>
							<textarea class="form-control" id="Message"></textarea>
						</div>
						<button type="submit" class="btn btn_contact wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.750s">{{__('website.send_msg')}}</button>
					</form>
				</div>
			</div>
		</section>
		<!--section_contact-->
		<footer id="footer">
			<div class="container">
				<p class="copyright">©2020  .Powered by  <a target="_blank" href="http://hexacit.com/" class="white">Hexa Cit</a></p>
				<ul>
					<a href="{{$setting->facebook}}" target="_blank"><i class="fab fa-facebook-f"></i></a>

					<li><a href="{{$setting->facebook}}"><i class="zmdi zmdi-facebook"></i></a></li>
					<li><a href="{{$setting->twitter}}"><i class="zmdi zmdi-twitter"></i></a></li>
					<li><a href="{{$setting->instagram}}"><i class="zmdi zmdi-instagram"></i></a></li>
				</ul>
			</div>
		</footer>
		<!--footer-->
	</div>
	<!--main-wrapper--> 
	<script src="{{url('web/js/bootstrap.min.js')}}"></script>
	<script src="{{url('web/js/owl.carousel.min.js')}}" type="text/javascript"></script>
	<script src="{{url('web/js/wow.js')}}"></script>
	<script src="{{url('web/js/script.js')}}"></script>
	<script>
		new WOW().init();
	</script>
	<!-- Page Scroll to id plugin -->
	<script src="{{url('web/js/jquery.malihu.PageScroll2id.min.js')}}"></script>
	<script>
		(function($){
			$(window).on("load",function(){
				
				/* Page Scroll to id fn call */
				$("a[rel='m_PageScroll2id']").mPageScroll2id({
					scrollSpeed: 1200
					,scrollEasing:"easeOutQuint"
					,liveSelector:"a[rel='m_PageScroll2id']"
				});
				
			});
		})(jQuery);
	</script>
</body>
</html>	