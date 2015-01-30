    //grab element by id 
    // show/hide div according to element name



  //cover letter//
$(document).ready(function() {

 

$(".controls textarea").on('focus', function() {
  $(".hint").show(); 
}); 

$(".controls textarea").on('blur', function() {
  $(".hint").hide(); 
}); 

console.log('imeanit');




  other = function(e, action) {
    var string = 'last_job';
    var array = string.split('_');
    var newString = '';

    for (var i = 0; i < array.length; i++) {
    newString += array[i].substr(0, 1).toUpperCase() + array[i].substr(1);
    }

    var final = newString.substr(0, 1).toLowerCase() + newString.substr(1);
    console.log(final)
      
    camelCaseIt = $(e.currentTarget).text().replace('_', '')
    newElement = camelCaseIt + 'Hint';

    //switch action
    //  when 'show' return $('#' + newElement).show();
    //  when 'hide' return $('#' + newElement).hide();
  };

  
  

 });

