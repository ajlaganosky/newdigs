# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#event_published_on').datepicker
    dateFormat: 'yy-mm-dd'
  $('#event_expiration_date').datepicker
    dateFormat: 'yy-mm-dd'