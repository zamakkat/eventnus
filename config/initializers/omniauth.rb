if defined? OmniAuth
  OmniAuth.config.on_failure = ApplicationController.action(:oauth_failure)

  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV['FACEBOOK_APP_ID'],  ENV['FACEBOOK_APP_SECRET'], scope: 'email', secure_image_url: true if ENV['FACEBOOK_APP_ID']
  end
end
