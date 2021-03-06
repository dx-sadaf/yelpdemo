# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery(document).ready( ->

  jQuery('.star-rating').raty({
    readOnly: true,
    path:'/assets/images/',
    score: ->
      jQuery(this).attr('data-score')
  })

  jQuery('#star-rating').raty({
    path:'/assets/images/',
    scoreName:'review[rating]'
  })

)