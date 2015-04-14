class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to '/home'
        else
            #nothing
        end
    end
    
    def edit
    end
    
    def update
    end
    
    private
    def user_params
       params.require(:user).permit(:username, :email, :password) 
    end
end