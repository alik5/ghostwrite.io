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
//= require wow
//= require bootstrap-wysihtml5
//= require bootstrap-wysihtml5/locales
//= require sweet-alert
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


  $('#some-textarea').wysihtml5();

  //cover letter//


  $('.next').on('click', function(){
  $('#originHint').hide();
  });


  $('input#one_word').on('focus', function(){
  $("#oneWordHint").show();
  });

  $('input#one_word').on('blur', function(){
  $("#oneWordHint").hide();
  });

  $('input#last_job').on('focus', function(){
  $("#lastJobHint").show();
  });

  $('input#last_job').on('blur', function(){
  $("#lastJobHint").hide();
  });

  $('input#position').on('focus', function(){
  $("#positionHint").show();
  });

  $('input#position').on('blur', function(){
  $("#positionHint").hide();
  });

  $('input#interest').on('focus', function(){
  $("#interestHint").show();
  });
  
  $('input#interest').on('blur', function(){
  $("#interestHint").hide();
  });

  $('input#skill1').on('focus', function(){
  $("#skillHint").show();
  });

  $('input#skill2').on('blur', function(){
  $("#skillHint").hide();
  });

  $('#company').on('keyup', function(){
  $('#inputDiv').html($('#company').val()).append(" would be lucky to have you!");
  });
   





});
























