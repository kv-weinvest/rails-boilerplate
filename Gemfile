source 'https://rubygems.org'

gem 'rails', '~> 5.0.0'
gem 'mysql2', '~> 0.4.4'
gem 'puma', '~> 3.6.0'

# User authentication
gem 'devise', '~> 4.2.0'
gem 'doorkeeper', '~> 4.2.0'

# gem 'sass-rails', '5.0'
# gem 'uglifier', '1.3.0'
# gem 'coffee-rails', '4.2'
# gem 'jquery-rails'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.5.2'
  gem 'factory_girl_rails', '~> 4.7.0'
end

group :test do
  gem 'faker', '~> 1.6.6'
  gem 'capybara', '~> 2.7.0'
  gem 'database_cleaner', '~> 1.5.3'
  gem 'launchy', '~> 2.4.3'
  gem 'selenium-webdriver', '~> 2.53.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]