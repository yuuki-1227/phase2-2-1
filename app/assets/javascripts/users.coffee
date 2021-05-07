# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#user_postal_code").jpostal({
    postal_code : ["#user_postal_code"],
    address : {
                "#user_prefecture_code" : "%3",
                "#user_city" : "%4",
                "#user_street" : "%5%6%7"
    }
  })