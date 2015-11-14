# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

R = React.DOM

@TestReact = React.createClass
	render: ->
		(R.h1 {}, 'Home#index')

@TestReact2 = React.createClass
	render: -> 
		(R.p {}, 'Find me in app/views/home/index.html.slim')

