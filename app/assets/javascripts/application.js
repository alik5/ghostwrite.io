// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//


//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootsy/wysihtml5
//= require bootsy/bootstrap-wysihtml5
//= require bootsy/bootsy
//= require bootsy/bootstrap.file-input.js
//= require bootsy/init
//= require bootstrap-sprockets
//= require jquery.turbolinks
//= require nprogress
//= require nprogress-turbolinks
//= require nprogress-ajax
//= require letters
//= require jquery.cookie
//= require wow
//= require greensock/TweenMax.min
//= require jquery.scrollmagic
//= require sweet-alert
//= require_tree .



$(document).ready(function(){

$(".element1").typed({
				strings: ["All applications need a cover letter.", "Are you going back to school?", "Are you looking for a job?"],
				typeSpeed: 100
			});

$(".element2").typed({
				strings: ["Writing to people you know can be hard.", "But not for me.", "Ghosts don't feel social pressure."],
				typeSpeed: 100
			});

 
			console.log('hi');

    
       
  

	$('.questions').find('fieldset').each(function (i) {
		$(this).attr('id', + i);
});

///form///

 $('div.questions fieldset:gt(0)').hide();

var $allSlides = $('div.questions fieldset'), traverseDefault = "last", actionDefault ="prev";
$('span.next, span.prev').click(function(e){


    var traverse = traverseDefault,
        action = actionDefault;
    
    if($(this).is('.next')){
        traverse = "first";
        action = "next";
    }
    
    var $curr = $allSlides.filter(':visible'), 
        $nxtTarget =  $curr[action]("fieldset");
    
    $curr.stop(true, true).fadeIn(1000).hide();
    if (!$nxtTarget.length){
        $nxtTarget = $allSlides[traverse]();
    }
    $nxtTarget.stop(true, true).fadeIn(1000);

    var numberOfFields = $('fieldset').length;
    var thisFieldId = $('fieldset').not(':hidden')[0].id;

    if (parseInt(thisFieldId) < numberOfFields - 1) $('.next').parent().show();
    if (parseInt(thisFieldId) === 0 ) $('.prev').parent().hide();

    if (parseInt(thisFieldId) > 0) $('.prev').parent().show();
    if (parseInt(thisFieldId) === numberOfFields - 1) $('.next').parent().hide();

  });

  if ($.cookie('pop') == null) {
                     $('#dialog').modal('show');
                     $.cookie('pop', '7');
                 }
             });

var controller;
      $(document).ready(function($) {
        // init controller
        controller = new ScrollMagic();
      });

      $(document).ready(function($) {
        // build tween
        var tween = TweenMax.to("#animate1", 0.5, {backgroundColor: "#32b7a4", scale: 2.5});

        // build scene
        var scene = new ScrollScene({triggerElement: "#trigger1"})
                .setTween(tween)
                .addTo(controller);

      
      });

























