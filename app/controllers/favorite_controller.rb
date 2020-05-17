class FavoriteController < ApplicationController
    set :views, "app/views/favorites"

    get '/' do
        erb :home
    end

    get '/favorites' do
        @recipes = Recipe.all
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

    get '/favorites/:id/edit' do
        @favorite = current_fav
        erb :edit
    end

    post '/favorites' do
        # binding.pry
        favorite = Favorite.create(params)
        redirect "/favorite/#{favorite.id}"
    end

    patch '/favorites' do
        favorite = current_fav
        favorite.update(name: params[:name])
        redirect "/favorite/#{favorite.id}"
    end

    def current_fav
        @favorite = Favorite.find(params[:id])
    end

end
