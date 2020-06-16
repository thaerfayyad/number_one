$(document).ready(function(){

	var rtl = false;
    if($("html").attr("lang") == 'ar'){
         rtl = true;
    }
    /*header-fixed*/
    $(window).scroll(function(){
            
        if ($(window).scrollTop() >= 100) {
            $('#header').addClass('fixed-header');
        }
        else {
            $('#header').removeClass('fixed-header');
        }
              
    });
    $('.scroll, .mmenu a').on('click', function () {
        
        $('html, body').animate({
           
            scrollTop: $('#' + $(this).data('value')).offset().top
           
        }, 1000);
        
        $("body,html").removeClass('menu-toggle');
        
        $(".hamburger").removeClass('active');
        
    });
    /*open menu*/
    $(".hamburger").click(function(){
        $("body,html").addClass('menu-toggle');
        $(".hamburger").addClass('active');
    });
    $(".m-overlay").click(function(){
        $("body,html").removeClass('menu-toggle');
        $(".hamburger").removeClass('active');
    });
    
	var owl = $('#screen_slide'),
		customer_slider = $('#customer_slider');

        owl.on('initialized.owl.carousel change.owl.carousel',function(elem){
            var current = elem.item.index;
            $(elem.target).find(".owl-item").eq(current).find(".to-animate").removeClass('fadeInUp animated');
        });
       
        owl.on('initialized.owl.carousel changed.owl.carousel',function(elem){
            window.setTimeout(function(){
                var current = elem.item.index;
                $(elem.target).find(".owl-item").eq(current).find(".to-animate").addClass('fadeInUp animated');
            }, 400);
        });
	    owl.owlCarousel({
	            items: 1,
	            loop: true,
	            margin: 0,
	            responsiveClass: true,
	            nav: false,
	            dots: true,
	            rtl:rtl,
	            smartSpeed: 500,
	            autoplay: true,
	            autoplayTimeout: 5000,
	            autoplayHoverPause: true,
	    });
	
		customer_slider.owlCarousel({
	            items: 1,
	            loop: true,
	            margin: 0,
	            responsiveClass: true,
	            nav: false,
	            dots: true,
	            rtl:rtl,
	            smartSpeed: 500,
	            autoplay: true,
	            autoplayTimeout: 5000,
	            autoplayHoverPause: true,
	    });


	/**============FOCUS CONTACT============**/
    $(".form_contact .form-group .form-control").focus(function(){

             $(this).parent().addClass('hasValue');

        });
        $(".form_contact .form-group .form-control").focusout(function(){

            var val = $(this).val();

            if(val === ''){

                 $(this).parent().removeClass('hasValue');

            } else{

                $(this).removeClass('hasError');

            }

    })
})