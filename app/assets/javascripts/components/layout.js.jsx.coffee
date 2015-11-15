@Status;

@Navbar = React.createClass
  componentDidMount: ->
    $('.button-collapse').sideNav
      menuWidth: 300
      edge: 'right'
    # $('.dropdown-button').dropdown()
    
  render: ->
    console.log(this.props.current_user)
    if this.props.current_user
      Status = `<li><a href='/sign-out' data-method='delete'>Sign out</a></li>`
    else 
      Status = `<li><a href='/sign-in'>Sign In</a></li>`

    	return `<nav className='black' role='navigation'>
                <div className='nav-wrapper container'>
                  <a href='/' className='brand-logo' id='logo-container'>EventNUS</a>
                  <ul className='right hide-on-med-and-down'>
                    <li><a href='/events'>Events</a></li>
                    { Status }
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

