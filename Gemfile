source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1', '>= 5.1.4'

# Use sqlserver as the database for Active Record
gem 'ruby-odbc', '~> 0.99998'
gem 'tiny_tds', '~> 2.1'
gem 'activerecord-sqlserver-adapter', '~> 5.1', '>= 5.1.6'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby


# Gema para la paginación
gem 'kaminari'
# gem 'kaminari-bootstrap'
gem 'ransack', '~> 1.8', '>= 1.8.2'
gem 'foundation-rails', '~> 6.2', '>= 6.2.3.0'
gem 'foundation-icons-sass-rails'
gem 'cancancan', '~> 2.0'

# Test tools
gem 'rspec', '~> 3.5'
gem 'capybara', '~> 2.10', '>= 2.10.1'
gem 'factory_girl_rails', '~> 4.9'
gem 'i18n-tasks', '~> 0.9.5'

gem 'ancestry'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1', '>= 3.1.11'

# Use Unicorn as the app server
# gem 'unicorn'
gem 'puma', '~> 3.10'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'composite_primary_keys', '~> 10.0', '>= 10.0.2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Better Errors replaces the standard Rails error page with a much better and more useful error page # lvd001
  gem 'better_errors'
  gem 'binding_of_caller'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Use Capistrano for deployment
  gem 'capistrano', '~> 3.10', '>= 3.10.1', require: false
  gem 'capistrano-bundler', '~> 1.3', require: false
  gem 'capistrano-rails', '~> 1.3', '>= 1.3.1', require: false
end

