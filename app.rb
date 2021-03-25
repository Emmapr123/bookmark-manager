require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  enable :sessions, :method_overwrite

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

  delete '/bookmark/:id' do 
    p params[:id]
    Bookmarks.delete(id: params[:id])
    redirect '/bookmark'
  end 


  run! if app_file == $0
end
