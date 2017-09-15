source 'https://rubygems.org'
ruby '2.4.2'

gem 'rails', '~> 5.1.3'
gem 'puma', '~> 3.0'
gem 'google-analytics-rails'
gem 'devise'
gem 'devise-i18n'
gem 'webpacker'
gem 'carrierwave'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'license_finder'
  gem 'dotenv-rails'
  gem 'faker'
end

group :production, :development do
  gem 'foreman'
end

group :development do
  gem 'bullet'
  gem 'spring'
  gem 'listen', '~> 3.1.5'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console'
  gem 'pry-rails'
  gem 'pry-doc', require: false
  gem 'pry-coolline'
  gem 'pry-byebug', platforms: :mri
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'awesome_print'
  gem 'annotate'
  gem 'i18n-tasks', require:false
  gem 'guard-livereload', require:false
  gem 'letter_opener'
  gem 'letter_opener_web'
end

group :test do
  gem 'minitest-reporters'
  gem 'minitest-power_assert'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
