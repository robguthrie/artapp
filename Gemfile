source 'http://rubygems.org'

gem 'rails', :git => 'git://github.com/rails/rails.git', :branch => '3-1-stable'

# Asset template engines
gem "sass-rails", :git => "git://github.com/rails/sass-rails.git", :branch => "3-1-stable"
gem 'coffee-script'
gem 'uglifier'
gem 'jquery-rails'

gem "formtastic", :git => 'git://github.com/justinfrench/formtastic.git'
gem "inherited_resources", ">=1.1.2"
gem 'mysql2'
gem 'haml-rails'

gem 'rack-cache', :require => 'rack/cache'
gem 'dragonfly', '~>0.9.4'
gem 'devise'

group :development do
  gem "nifty-generators"
  gem 'sqlite3-ruby', :require => 'sqlite3'
  gem 'capistrano'
  gem 'hpricot' #generating devise views
  gem 'ruby_parser' #generating devise views
end

group :development, :test do
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i  
  gem 'guard-rspec'  


  gem 'turn', :require => false
  gem 'mongrel', '1.2.0.pre2'
  gem "rspec-rails", ">= 2.6.0.rc2"
  gem 'capybara', :git => 'git://github.com/jnicklas/capybara.git'
  gem 'launchy'
  gem 'machinist', '>= 2.0.0.beta2'
  gem "faker"
end

gem "mocha", :group => :test
