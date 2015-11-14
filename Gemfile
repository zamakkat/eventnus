source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails', '4.2.5'

# Server and Database
gem 'puma'
gem 'pg', '~> 0.15'

# HTML, CSS and JavaScript Stack
gem 'slim-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'react-rails'
gem 'materialize-sass'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# App specific
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
# gem 'cancancan'
gem 'simple_form'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'factory_girl_rails'
  gem 'did_you_mean'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  gem 'foreman'
  gem 'spring'

  gem 'quiet_assets'
  gem 'better_errors'
  gem 'letter_opener'

  # Guards
  gem 'guard-rspec', require: false
  gem 'guard-livereload'
  gem 'rack-livereload'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
end
