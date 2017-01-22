# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.add-to-cart').click ->
    $('.cart-icon').effect('shake', {direction: 'up', distance: 50, times: 4}, 500)
    return
  return
