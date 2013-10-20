source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'rest-client'
gem 'json'
gem 'execjs'
gem 'therubyracer'
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'

group :production do
  gem 'unicorn'
  gem 'pg'
end

group :development, :test do
  #gem 'sqlite3'
  gem 'mysql2'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end