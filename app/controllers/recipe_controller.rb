class RecipeController < ApplicationController 
    set :views, "app/views/recipes"

    get '/recipes' do
        @recipe = Recipe.all
        erb :index
    end

    get '/recipes/new' do
        erb :new
    end

    post '/recipes' do
        recipe = Recipe.create(params)
        redirect "/recipes/#{recipe.id}"
    end
    
    get '/recipes/:id' do
        @recipe = Recipe.find(params[:id])
        erb :show
    end

    get '/recipes/:id/edit' do
        @recipe = Recipe.find(params[:id])
        erb :edit
    end

    patch '/recipes/:id' do
        recipe = Recipe.find(params[:id])
        recipe.update(name: params[:name], ingredients: params[:ingredients], rating:params[:rating])
        redirect "/recipes/#{recipe.id}"
    end

    delete '/recipes/:id' do
        recipe = Recipe.find(params[:id])
        recipe.destroy
        redirect '/recipes'
    end
end
