# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@Navbar = React.createClass
  componentDidMount: ->
    $('.button-collapse').sideNav
      menuWidth: 300
      edge: 'right'
    # $('.dropdown-button').dropdown()

  render: ->
  	return `<nav className='black' role='navigation'>
              <div className='nav-wrapper container'>
                <a href='/' className='brand-logo' id='logo-container'>EventNUS</a>
                <ul className='right hide-on-med-and-down'>
                  <li><a href='/events'>Events</a></li>
                  <li><a href='/sign-in'>Sign In</a></li>
                </ul>
                <ul className='side-nav' id='nav-mobile'>
                  <li><a href='/events'>Events</a></li>
                  <li><a href='/sign-in'>Sign In</a></li>
                </ul>
                <a href='#' className='right button-collapse' data-activates='nav-mobile'>
                  <i className='material-icons'>menu</i>
                </a>
              </div>
            </nav>`

@TestReact = React.createClass
	render: ->
		(R.h1 {}, 'Home#index')

@TestReact2 = React.createClass
	render: ->
		(R.p {}, 'Find me in app/views/home/index.html.slim')
