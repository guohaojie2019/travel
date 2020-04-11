(function($) {
	
	"use strict";
	
	
	//Hide Loading Box (Preloader)
	function handlePreloader() {
		if($('.preloader').length){
			$('.preloader').delay(200).fadeOut(500);
		}
	}

    
    
		/* Closes the Responsive Menu on Menu Item Click*/
		$('.navbar-collapse ul li a').on('click', function() {
			$('.navbar-toggle:visible').click();
		});
		/*END MENU JS*/ 
    /* ----------------------------------------------------------- */
	/*  Fixed header
	/* ----------------------------------------------------------- */

	$(window).on('scroll', function(){
		if ( $(window).scrollTop() > 70 ) {
			$('.site-navigation, .header-white, .header').addClass('navbar-fixed');
		} else {
			$('.site-navigation, .header-white, .header').removeClass('navbar-fixed');
		}
	});
    
    
      jQuery(document).on('ready', function(){   
          
          

	/* ----------------------------------------------------------- */
	/*  Mobile Menu
	/* ----------------------------------------------------------- */

	jQuery(".nav.navbar-nav li a").on("click", function() { 
		jQuery(this).parent("li").find(".dropdown-menu").slideToggle();
		jQuery(this).find("i").toggleClass("fa-angle-down fa-angle-up");
	});
	});

		
/* ==========================================================================
   When document is Scrollig, do
   ========================================================================== */
	
	$(window).on('scroll', function() {
		headerStyle();
	});
	
/* ==========================================================================
   When document is loading, do
   ========================================================================== */
	
	$(window).on('load', function() {
		handlePreloader();
	});
    
   $("#slider4").responsiveSlides({
        auto: true,
        pager:true,
        nav:true,
        speed: 500,
        namespace: "callbacks",
        before: function () {
        $('.events').append("<li>before event fired.</li>");
        },
        after: function () {
            $('.events').append("<li>after event fired.</li>");
        }
    });
    
         $( "#datepicker" ).datepicker();

    

    //    Animation
    AOS.init({
        duration: 1500,
    });
   
	

	

		
})(window.jQuery);