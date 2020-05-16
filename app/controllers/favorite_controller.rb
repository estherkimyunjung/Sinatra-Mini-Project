class FavoriteController < ApplicationController
    set :views, "app/views/favorites"

    get '/' do
        erb :home
    end

    get '/favorites' do
        @favorites = Favorite.all 
        erb :index
    end

    get '/favorites/new' do
        @recipes = Recipe.all
        erb :new
    end

    get '/favorites/:id' do
        @favorite = current_fav
        erb :show
    end

    post '/favorites' do
        favorite = Favorite.new(params)
        redirect "/favorite/#{favorite.id}"
    end

    def current_fav
        @favorite = Favorite.find(params[:id])
    end

end
