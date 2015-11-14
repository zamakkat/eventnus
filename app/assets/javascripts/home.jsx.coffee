# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

R = React.DOM

@Navbar = React.createClass
	render: ->
		(R.nav {className: 'black', role: 'navigation'}, [
			(R.div {className: 'nav-wrapper container'}, [
				(R.a {className: 'brand-logo', id: 'logo-container'}, 'EventNUS'),
				(R.ul {className: 'right hide-on-med-and-down'}, [
					(R.li {}, [
						(R.a {href: '/events'}, 'Events')
					])
				]),
				(R.ul {className: 'side-nav', id: 'nav-mobile'}, [
					(R.li {}, [
						(R.a {href: '/events'}, 'Events')
					])
				]),
				(R.a {className: 'button-collapse', href: '#', dataActivates: 'nav-mobile'}, [
					(R.i {className: 'material-icons'}, 'menu')
				])
			])
		])

@TestReact = React.createClass
	render: ->
		(R.h1 {}, 'Home#index')

@TestReact2 = React.createClass
	render: -> 
		(R.p {}, 'Find me in app/views/home/index.html.slim')
