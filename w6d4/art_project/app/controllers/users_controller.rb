class UsersController < ApplicationController
   
    def index 
        render json: User.all
    end

    def create
        n = User.new(user_params)
        if n.save
            render json: n #user.find_by(id) >> Ruby magic
        else
            render json: n.errors.full_messages, status: :unprocessable_entity
        end

    end

    # # def new 
     # # end

    def show 
        n = User.find_by(id: params[:id])
        unless n.nil?
            render json: n
        else 
            render plain: 'That id is not in the database' ###cant show error messages if theres no instance :/
            #render json: n.errors.full_messages, status: :unprocessable_entity  ###when this vs 42
        end
    end

    def update
        n = User.find(params[:id])
        if n.update(user_params)
            redirect_to user_url(n) ###GET users/:id vs n >> thx rails <3
        else
            render json: n.errors.full_messages, status: 422
        end
    end

    def destroy
        n = User.find(params[:id])
        name = n.username
        n.destroy  
        render plain:  name + " deleted."

    end

    private 

    def user_params 
        params
        .require(:user) 
        .permit(:username)

    end 
end


=begin
    
       Prefix Verb   URI Pattern                                              Controller#Action
        users GET    /users(.:format)                                       users#index
              POST   /users(.:format)                                       users#create
    new_user GET    /users/new(.:format)                                    users#new
    edit_user GET    /users/:id/edit(.:format)                              users#edit
         user GET    /users/:id(.:format)                                   users#show
              PATCH  /users/:id(.:format)                                   users#update
              PUT    /users/:id(.:format)                                   users#update
              DELETE /users/:id(.:format)                                   users#destroy
=end

