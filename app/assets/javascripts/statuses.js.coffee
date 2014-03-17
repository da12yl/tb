# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
# coffee script is a language like JavScript, but with a different easier to read syntax
# you don't need to use coffee script in rails and just remove the .coffee extension if wanted 
# but it is a great skill to learn because it organizes your code and makes it easier to read
# provides tools and tips and tricks to make your javascript better
# going to use jQuery to modify the hover class on our items
# jQuery is a JavScript too used for manipulating web pages
# jQuery is included as noted in the application.js file 
# when you use jQuery you need to make sure the page loads before you can modify any of the elements
# can be done using the jQuery method or jQuery can also be shortened to just a dollar sign $ by default
# now it takes a function and in coffee script is donated by an arrow ->
# arguments (args) and anything indented is part of that function
# so calling the jQuery method with a function
# $ (args) -> we not not have any arguments that we want to pass so we can omit that leaving us with just
$ ->
# everything that is indented here will be run as part of the jQuery startup function 
# so now grab all the status objects off the page with the dollar sign and the selector is .status
# and there is a special method called hover which then takes a function and will be called evertime
# a mouse enters or leaves a status item
# we do want to take an argument which is the event
# so we are grabbing the status and calling the hover method and passing it the function which defines of 
# what we want it to do when it is hovered over or a hover leaves and toggle a class
# could use console.log(:Hover triggered") to test if it works and it counts
    $('.status').hover (event) ->
        $(this).toggleClass("hover")
# in order to modify the status that is currently being hovered we have to make a jQuery object out of the
# current status that is being hovered over
# we can do that by wrapping the variable (this) 
# inside of our call back function (this) represents a specific status element but it needs to be wrapped 
# in a jQuery in order to call jQuery methods
# so we can use toggleClass and the class name we want to toggle is hover
# what the toggleClass does is everytime its called if hover exists it removes it otherwise it adds it
# so when we mouse into it we are toggling the class which shows the edit and delete links