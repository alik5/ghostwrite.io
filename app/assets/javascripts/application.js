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
//= require_tree .



$(document).ready(function(){


$(".element").typed({
        strings: ["Go on then, pick a category.", "It's not hard...", "What are you writing for?"],
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

 $("div.questions fieldset").hide()
 $(".green input").hide(); 
 $("div.questions fieldset").first().show().append("<a class='fake' href='#'>Next</span>");


 $("a.fake").click(function() {
   $("div.questions fieldset").first().hide();
   $("div.questions fieldset").first().next().fadeIn("slow").append("<a class='fake2' href='#'>Next</span>");


 $("a.fake2").click(function() {
  console.log("nope");
   $("div.questions fieldset").first().next().hide();
   $("div.questions fieldset").first().next().next().fadeIn("slow");
   $("a.fake2").hide();
   $(".green input").show();

  });
});


});
























