require 'bundler/setup'
Bundler.require

#if development?
#  ActiveRecord::Base.establish_connection("sqlite3:db/development.db")
#end

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL']||"sqlite3:db/development.db")

class Notice < ActiveRecord::Base

end