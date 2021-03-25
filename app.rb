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
    Bookmarks.delete(id: params[:id])
    redirect '/bookmark'
  end 

  get '/bookmark/:id/update' do
    @bookmark_id = params[:id]
    erb :update_bookmark
  end 

  put '/bookmark/:id' do
    Bookmarks.update(title: params[:title], url: params[:url], id: @bookmark_id)
    redirect '/bookmark'
  end 


  run! if app_file == $0
end
