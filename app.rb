require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    "Hello World"
  end

  get '/bookmark' do
    $steven = Bookmarks.create($new_bookmark)
    $mark = Bookmarks.all
    erb :bookmarks
  end

  get '/new_bookmark' do
    erb :new_bookmark
  end

  post '/add_bookmark' do
    $new_bookmark = params[:bookmark]
    redirect '/bookmark'
  end

  run! if app_file == $0
end
