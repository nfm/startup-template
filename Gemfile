source 'https://rubygems.org'

ruby '2.2.0'

gem 'rails', '4.2.0'

gem 'autoprefixer-rails'
gem 'eventy'
gem 'haml'
gem 'metricular'
gem 'newrelic_rpm'
gem 'pg'
gem 'pry-rails'
gem 'pry-doc'
gem 'puma'
gem 'sidekiq'
gem 'turbolinks'

# Assets
gem 'coffee-rails', '~> 4.1.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

# Sprockets ES6 support
gem 'sprockets', '~> 3.0.0.beta'
gem 'sprockets-es6'

group :development, :test do
  gem 'pry-byebug'
  gem 'spring'
  gem 'web-console', '~> 2.0'
end

group :development do
  gem 'foreman'
  gem 'guard', require: false
  gem 'guard-bower', require: false
  gem 'guard-ctags-bundler', require: false
end

group :staging, :production do
  gem 'rails_12factor'
end
