require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    redirect '/bookmark'
  end

  get '/bookmark' do
    @mark = Bookmarks.all
    erb :bookmarks
  end

  get '/new_bookmark' do
    erb :new_bookmark
  end

  post '/add_bookmark' do
    $steven = Bookmarks.create(title: params[:title], url: params[:url])
    redirect '/bookmark'
  end

  run! if app_file == $0
end
