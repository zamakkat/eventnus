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

@FlashMessages = React.createClass
  componentDidMount: ->
    for f in this.props.flash_messages
      Materialize.toast(f[1], 4000)

  render: ->
    return `<div></div>`
