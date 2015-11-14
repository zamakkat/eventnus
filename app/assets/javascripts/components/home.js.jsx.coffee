@HomeIndex = React.createClass
  componentDidMount: ->
    $('.parallax').parallax()

  render: ->
    return `<div>
              <div id='index-banner' className='parallax-container'>
                <div className='section no-pad-bot'>
                  <div className='container'>
                    <br /><br />
                    <h1 className='header center light-blue-text text-lighten-2'>NUS Student Events</h1>
                    <div className='row center'>
                      <h5 className='header col s12 light'>See what's happening around school</h5>
                    </div>
                    <div className='row center'>
                      <a href='/events' id='download-button' className='btn-large waves-effect waves-light light-blue lighten-1'>View Events</a>
                    </div>
                    <br /><br />
                  </div>
                </div>
                <div className='parallax'><img src={ this.props.bg1_src } alt='UTown' /></div>
              </div>

              <div className='container'>
                <div className='section'>
                  <div className='row'>
                    <div className='col s12 m4'>
                      <div className='icon-block'>
                        <h2 className='center brown-text'><i className='material-icons'>local_activity</i></h2>
                        <h5 className='center'>All Student Events</h5>

                        <p className='light'>See the latest events around NUS.</p>
                      </div>
                    </div>

                    <div className='col s12 m4'>
                      <div className='icon-block'>
                        <h2 className='center brown-text'><i className='material-icons'>group</i></h2>
                        <h5 className='center'>Social</h5>

                        <p className='light'>Login with Facebook and see which of your friends are joining.</p>
                      </div>
                    </div>

                    <div className='col s12 m4'>
                      <div className='icon-block'>
                        <h2 className='center brown-text'><i className='material-icons'>star</i></h2>
                        <h5 className='center'>Save events</h5>

                        <p className='light'>Save events to your calendar and get notified on changes.</p>
                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>`
