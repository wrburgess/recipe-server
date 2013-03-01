source 'http://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.2.12'

gem 'haml-rails', '0.4.0' # installs haml templates
gem 'json', '1.7.7' # allows for JSON processing
gem 'pg', '0.14.1' # installs PostgreSQL
gem 'sass-rails', '3.2.6' # installs SCSS templates
gem 'settingslogic', '2.0.9' # site-wide app variables
gem 'unicorn', '4.6.2' # multi-worker server

group :assets do
  gem 'uglifier', '1.3.0' # minifies js
end

group :test, :development do
  gem 'debugger', '1.3.3' # allows for breakpoints
  gem 'factory_girl_rails', '4.2.1' # provides factories for specs
  gem 'rspec-rails', '2.13.0' # installs rspec for testing
  gem 'shoulda', '3.3.2' # extends matchers for rspec
end

group :development do
  gem 'better_errors', '0.7.0' # improves error pages
  gem 'binding_of_caller', '0.7.1' # supports better_errors
end