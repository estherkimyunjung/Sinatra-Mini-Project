class UserController < ApplicationController
    set :views, "app/views/users"

    get '/users' do
        @users = User.all 
        erb :index
    end

    # get '/users/new' do
    #     @user = current_user
    #     erb :new
    # end

    get '/users/:id' do
        @user = current_user
        erb :show
    end

    # post '/users'
    #     user = User.create(name: params[:name])
    #     redirect "/users/#{user.id}"
    # end

    # patch '/users/:id' do
    #     user = current_user
    #     user.update(name: params[:name])
        
    #     redirect "/users/#{user.id}"
    # end

    def current_user
        @user = User.find(params[:id])
    end



end
