source 'https://rubygems.org'
ruby '2.3.1'
gem 'rails', '>= 5.0.0.rc1', '< 5.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'haml-rails'
gem 'ckeditor'
gem "friendly_id"
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'carrierwave'
gem "mini_magick"
gem 'turbolinks', '~> 5.x'
gem 'rails_12factor'
gem 'bcrypt', '~> 3.1.7'
gem 'jquery-ui-rails'
gem 'figaro'
gem 'json', github: 'flori/json', branch: 'v1.8'
gem 'recaptcha'

group :production do
  gem 'rails_12factor'
  gem 'fog'
  gem 'heroku-deflater', :group => :production
end

group :development, :test do

  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
