# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "bootsnap", require: false
gem "bulma-rails", "~> 0.9.2"
gem "font-awesome-rails"
gem "importmap-rails"
gem "jbuilder"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.1"
gem "redis", "~> 4.0"
gem "sass-rails", ">= 6"
gem "sprockets-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "turbolinks", "~> 5"
gem "turbo-rails"
gem "webpacker", "~> 4.0"

group :development, :test do
  gem "database_cleaner-active_record"
  gem "factory_bot_rails"
  gem "faker", git: "https://github.com/faker-ruby/faker.git", branch: "master"
  gem "pry", "0.13"
  gem "pry-byebug", "3.9.0"
  gem "rspec-rails", "~> 5.0.0"
end

group :development do
  gem "listen", "~> 3.2"
  gem "rubocop", "~> 1.24", require: false
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "shoulda-matchers", "~> 5.0"
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
