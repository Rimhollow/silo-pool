# -*- mode: ruby; -*-

source "http://rubygems.org"

gem 'mime-types', :require => 'mime/types'
# gem 'data_mapper',          '>= 1.1.0'
# gem 'dm-mysql-adapter',     '>= 1.1.0'
# gem 'dm-postgres-adapter',  '>= 1.1.0'

gem 'data_mapper',          '<= 1.0.2'   # last version I'm aware of that has acceptable performance wrt 1.1.0.  Needs investigation
gem 'dm-mysql-adapter',     '<= 1.0.2'
gem 'dm-postgres-adapter',  '<= 1.0.2'

gem 'nokogiri',             '>= 1.4.1'
gem 'builder',              '>= 2.1.0'
gem 'log4r',                '>= 1.1.5'
gem 'open4',                '>= 1.0.1'
# gem 'sinatra',              '>= 1.2.1'   # currently creates conflict in deployed passenger rack (1.2.1) with required rack (1.2.2)
gem 'sinatra',              '>= 1.0.0', '<= 1.1.0'
gem 'rack',                 '<= 1.2.1'     # rack should not have to be specified here at all, see above for why
gem 'sys-filesystem',       '>= 0.3.2'
# development

gem 'ci_reporter',      '>= 1.6.2'
gem 'cucumber',		'>= 0.8.5'
gem 'rspec',		'>= 1.3.0'

