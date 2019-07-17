require 'bundler'

Bundler.require

require_all 'app'
# require 'sinatra/cookies'

ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: 'db/development.sqlite'
})
