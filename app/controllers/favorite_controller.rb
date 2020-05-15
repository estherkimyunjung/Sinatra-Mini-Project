class FavoriteController < ApplicationController
    set :views, "app/views/favorites"

    get '/favorites' do
        @favorites = Favorite.all 
        erb :index
    end

    get '/favorites/new' do
        @favorite = current_fav
        erb :new
    end

    get '/favorites/:id' do
        @favorite = current_fav
        erb :show
    end

    def current_fav
        @favorite = Favorite.find(params[:id])
    end

end
