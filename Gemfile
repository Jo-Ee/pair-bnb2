source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use postgres as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# To enable all platform features in heroku - https://devcenter.heroku.com/articles/rails-integration-gems for more information.
gem 'rails_12factor'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'aws-sdk', '~> 2'
# To allow aws to serve assets
# gem "asset_sync"
# gem "fog", "~>1.20", require: "fog/aws/storage"

#bootstrap:
gem 'bootstrap-sass', '~> 3.3.5'
# gem 'sass-rails', '>= 3.2'
gem 'autoprefixer-rails'

#date-picker
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.37'

#reservation date overlap
gem 'validates_overlap'

#for picture upload
gem 'carrierwave'
gem 'rmagick'

#payment braintree/sandbox
gem 'braintree'
gem 'gon', '~> 5.1.2'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

#https://www.digitalocean.com/community/tutorials/how-to-configure-devise-and-omniauth-for-your-rails-application
gem 'therubyracer'
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'

#send email
gem 'sidekiq'
gem 'figaro'

gem 'spring'
# Use Unicorn as the app server
gem 'unicorn'

group :development do
    gem 'capistrano', '~> 3.4.0'
    gem 'capistrano-bundler', '~> 1.1.2'
    gem 'capistrano-rails', '~> 1.1.5'
    gem 'capistrano-rbenv', '~> 2.0.3'
    gem 'capistrano-faster-assets', '~> 1.0'
    gem 'capistrano-rails-db'
    gem 'capistrano-sidekiq', '0.5.3'
    gem 'elbas'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
end
