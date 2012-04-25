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

//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require bootstrap
//= require markitup
//= require set
//= require_tree
//= require_self

$(document).ready(function(){
  $('#company_name').autocomplete({
    source: "/autocomplete/companies"
  })

  $('#issue_story, .markItUp').markItUp(mySettings);

  $('.plus').live('click', function() {
    var input = $('#micropost_minutes');
    var current_val = parseInt($(input).val()) || 0;
    $(input).val(current_val + 1);
    return false;
  })

  $('.minus').live('click', function() {
    var input = $('#micropost_minutes');
    var current_val = parseInt($(input).val()) || 1;
    if (current_val == 0) { current_val = 1};
    $(input).val(current_val - 1);
    return false;
  })
})

function numbersonly(myfield, e, dec) {
  var key;
  var keychar;

  if (window.event)
    key = window.event.keyCode;
  else if (e)
    key = e.which;
  else
    return true;
    keychar = String.fromCharCode(key);
    if ((key==null) || (key==0) || (key==8) || (key==9) || (key==13) || (key==27) ) // control keys
      return true;
    else if ((("0123456789").indexOf(keychar) > -1)) // numbers
      return true;
    else if (dec && (keychar == ".")) { // decimal point jump
      myfield.form.elements[dec].focus();
      return false;
    }
    else
      return false;
};
