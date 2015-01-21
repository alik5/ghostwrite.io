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

 // $('#origin').on('keyup', function(){
 // $('#inputDiv').html($('#origin').val()).append( "?" );
  //});

  $('input#origin').on('blur', function(){
  $('#ugh').hide();
  });


  $('input#one_word').on('blur', function(){
    console.log('this works');
  });
 
   


  $('#one_word').on('keyup', function(){
  $('#oneWordDiv').html($('#one_word').val());

  });

  $('#position').on('keyup', function(){
  $('#positionDiv').html($('#position').val());

  });

  $('#last_job').on('keyup', function(){
  $('#lastJobDiv').html($('#last_job').val());

  });

  $('#interest').on('keyup', function(){
  $('#interestDiv').html($('#interest').val());

  });

  $('#skill1').on('keyup', function(){
  $('#skill1Div').html($('#skill1').val());

  });

  $('#skill2').on('keyup', function(){
  $('#skill2Div').html($('#skill2').val());

  });

  $('#company').on('keyup', function(){
  $('#companyDiv').html($('#company').val());
  $('#companyDiv2').html($('#company').val());

  });




});
























