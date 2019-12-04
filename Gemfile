source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby '2.6.3'
gem 'rails', '~> 5.2.3'
gem 'sqlite3'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'carrierwave'
gem 'rmagick', '~> 4.0'
gem 'faker'
gem 'bootstrap', '~> 4.3.1'
gem 'jquery-rails'
gem 'will_paginate', '~> 3.1.0'
gem 'bootstrap-will_paginate'
gem 'pry-rails'
gem 'bcrypt', '~> 3.1', '>= 3.1.13'
gem 'better_errors', '~> 2.5', '>= 2.5.1'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'capybara', '>= 2.15'
  gem 'rspec-rails', '~> 3.9'
  gem "factory_bot_rails"
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rails-controller-testing'
  gem 'webdrivers', '~> 4.1', '>= 4.1.3'
end

group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner', '~> 1.0.1'
  gem 'launchy', '~> 2.3.0'
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.6'
  
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
