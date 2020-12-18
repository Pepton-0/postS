require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models.rb'

get '/' do
  @notices = ["Shadowverse", "Amusement park", "我々ハ、宇宙人デアル", "生徒募集の一つ"]
  erb :index
end

get '/linktmp' do
  erb :linktmp
end
