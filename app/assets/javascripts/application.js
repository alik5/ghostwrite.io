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

//= require jquery.scrollmagic
//= require greensock/TweenMax.min
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require_tree .
//= require turbolinks





$(document).ready(function(){
      $(".element").typed({
        strings: ["Go on then, pick a category.", "It's not hard...", "What are you writing for?"],
        typeSpeed: 100
      });

      console.log('hi');

 $(document).ready(function(){
      $(".element_name").typed({
        strings: ["What's your name?", "Is it Freddy?", "Is it Suzanne?"],
        typeSpeed: 100
       });
     


  $( "#business" ).hover(function() {
    console.log('bitch, please');
    $( "#business_description" ).fadeIn( "slow" );
    });

  $( "#personal" ).hover(function() {
    $( "#personal_description" ).fadeIn( "slow" );
    });

  $( "#custom" ).hover(function() {
    $( "#custom_description" ).fadeIn( "slow" );
    });

   });
  



 $( "button" ).hover(
  function() {
     $( ".lock ").toggle();
  }
);

  });

var controller = new ScrollMagic();
var scene = new ScrollScene();

var scene = new ScrollScene({
  triggerElement: '#pinned-trigger1', // starting point of the scene
  duration: 400 // pin the element for 400px of scrolling
})

var scene = new ScrollScene({
  triggerElement: '#trigger1'
})
.addTo(controller); // Add Scene to ScrollMagic Controller

var scene2 = new ScrollScene({
  triggerElement: '#trigger2'
})
.addTo(controller); // Add Scene to ScrollMagic Controller














