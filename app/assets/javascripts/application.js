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
//= require_tree .
$(document).ready(function(){
      $(".element").typed({
        strings: ["Go on then, pick a category.", "It's not hard...", "What are you writing for?"],
        typeSpeed: 100
      });

      console.log('hi');
      
});


$(function(){ $('#contactform').slidinglabels({ 
/* these are all optional */ 
  className : 'form-slider', // the class you're wrapping the label & input with -> default = slider 
  topPosition : '5px', // how far down you want each label to start 
  leftPosition : '5px', // how far left you want each label to start 
  axis : 'x', // can take 'x' or 'y' for slide direction 
  speed : 'fast' // can take 'fast', 'slow', or a numeric value 
  }); 
});

