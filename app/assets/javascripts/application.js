// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jq-modernizer.prod.min.js
//= require jquery.ba-cond.min.js
//= require jquery.slitslider.js
//= require visual-grid.js
//= require jquery.gmap.js
$(document).ready(function() {
    //$('.mobile-nav-bt').click(function(){
    //    $('#mobile-menu').slideToggle();
    //});

    $('.mobile-nav-bt').click(function(){
			//alert($('#menu').length);
			if($('#mobile-menu:hidden').length>0){
				$('#mobile-menu').slideDown({
				complete:function(){
					$('#mobile-menu').removeAttr('style');
					$('#mobile-menu').removeClass('mobile-hide-menu');
					$('#mobile-menu').addClass('mobile-display-menu');
				}
			});
			}
			else{
				$('#mobile-menu').slideUp({
					complete:function(){
						$('#mobile-menu').removeAttr('style');
						$('#mobile-menu').removeClass('mobile-display-menu');
						$('#mobile-menu').addClass('mobile-hide-menu');
					}
				});
				
			}	
		});
});
