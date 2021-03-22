require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base 
  enable :sessions

  get '/' do
    "Hello World"
  end 

  get '/bookmark' do
    $bookmark = Bookmarks.all
    erb :bookmarks
  end

  run! if app_file == $0
end 
