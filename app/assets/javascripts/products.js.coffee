# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
 $(".add_images").click ->
  obj = $("#blockBrowseImage div:first-child input:first").clone()
  obj.val('')
  obj.addClass("disBlock")
  obj.removeAttr("id")
  $("#blockBrowseImage div:first-child").append obj
 $(".remove_images").click ->
  if $("#blockBrowseImage div").children().length > 1 
    $("#blockBrowseImage input:last-child").remove()  
