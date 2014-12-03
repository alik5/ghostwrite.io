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
        strings: ["What's your name?", "Is it Freddy?", "It's it Suzanne?"],
        typeSpeed: 100
      });


  $( "#business" ).hover(function() {
    $( "#business_description" ).fadeIn( "slow" );
    });

  $( "#personal" ).hover(function() {
    $( "#personal_description" ).fadeIn( "slow" );
    });

  $( "#custom" ).hover(function() {
    $( "#custom_description" ).fadeIn( "slow" );
    });


  });
});

$("#letter_properties_position").change(function() {
  console.log('qual');
  $('#letter_properties_position').html($(this).val()); 
});

$( ".span_class" ).append( "#letter_properties_position" );




