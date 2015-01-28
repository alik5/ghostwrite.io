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
//= require bootstrap-sprockets
//= require jquery.turbolinks
//= require nprogress
//= require nprogress-turbolinks
//= require nprogress-ajax
//= require letters
//= require wow
//= require ckeditor/init
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

 $( "#business" ).hover(function() {
		console.log('bitch, please');
	 $('#business_description').fadeIn( "slow" );
	});

	$( "#personal" ).hover(function() {
		$( "#personal_description" ).fadeIn( "slow" );
	});

	$( "#custom" ).hover(function() {
		$( "#custom_description" ).fadeIn( "slow" );
	});

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

// hint-field.focus this div show


});
























