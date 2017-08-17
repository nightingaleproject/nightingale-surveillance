# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Automatically refresh the surveillance results every second in the background
# TODO: This is more for demo purposes than because it's the right way to do surveillance

updateSurveillanceResults = ->
  $.ajax
    url: "/surveillance_requests",
    cache: false,
    success: (html) -> $("#surveillanceResults").html(html)

setInterval updateSurveillanceResults, 2000
