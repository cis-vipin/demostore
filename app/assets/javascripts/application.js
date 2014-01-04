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
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require rails.validations
//= require_tree .
$( document ).ready(function() {
	$("form#new_user").bind("ajax:success", function(e, data, status, xhr) {
	  if (data.success) {
	    window.location.reload()
	  } else {
	    return alert('Invalid user name or password.');
	  }
	});
});	



// $("form#new_user").bind "ajax:success", (e, data, status, xhr) ->
//     alert("test") 
//     if data.success
//       $('#sign_in').modal('hide')
//       $('#sign_in_button').hide()
//       $('#submit_comment').slideToggle(1000, "easeOutBack" )
//     else
//       alert('failure!')
